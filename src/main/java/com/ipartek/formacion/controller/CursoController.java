/**
 * 
 */
package com.ipartek.formacion.controller;

/**
 * @author Alberto Fernandez
 *
 */

import java.io.IOException;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.validation.Valid;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import com.ipartek.formacion.controller.validator.CursoValidator;
import com.ipartek.formacion.dbms.persistence.Curso;
import com.ipartek.formacion.service.interfaces.CursoService;

@Controller
@RequestMapping(value="/cursos")
public class CursoController {
	
	private static final Logger logger = LoggerFactory.getLogger(CursoController.class);
	ModelAndView mav = null;
	
	@Autowired
	private ServletContext servletContext;
	
	@Autowired
	private CursoService cS;
	
	@Resource(name = "cursoValidator") // == @Autowired@Qualifier("cursoValidator")
	CursoValidator validator = null;
	
	@InitBinder("curso")
	public void initBinder(WebDataBinder binder, Locale locale) {
		binder.setValidator(validator);
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		sdf.setLenient(true);
		binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf, true));
	}
	
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView getAll(){
		logger.info("METHOD CONTROLLER: getAll()");
		mav = new ModelAndView("cursos");
		List<Curso> cursos = cS.getAll();
		mav.addObject("listadocursos", cursos);
		return mav;
	}
	
	@RequestMapping(value="/{codigo}")
	public ModelAndView getById(@PathVariable("codigo") int codigo){
		logger.info("METHOD CONTROLLER: getById() -- PARAMS:  " + String.valueOf(codigo));
		mav= new ModelAndView("curso");
		mav.addObject("curso",cS.getById(codigo));
		return mav;
	}
	
	@RequestMapping(value="/deleteCurso/{codigo}")
	public String delete(@PathVariable("codigo") int codigo, Model model){
		logger.info("METHOD CONTROLLER: deleteBarrio()");
		cS.delete(codigo);
		return "redirect:/cursos";
	}
	
	@RequestMapping(value="/addCurso")
	public String addCurso(Model model){
		logger.info("METHOD CONTROLLER: addCurso() -- PARAM:  new");
		model.addAttribute("curso", new Curso());
		return "curso";
	}
	
	@RequestMapping(value="/save", method = RequestMethod.POST)
	public String saveCurso(@ModelAttribute("curso")@Valid Curso curso,BindingResult bindingResult, Model model,
			RedirectAttributes redirectMap) throws IOException {
		
		logger.info("METHOD CONTROLLER: saveCurso() -- PARAMS:  " + curso.toString());
		String destino = "";
		String txt="";
		if (bindingResult.hasErrors()) {
			logger.info("METHOD CONTROLLER: saveCurso() -- ERRORS: " + bindingResult.hasErrors());
			destino = "curso";
			txt = "Los datos de formulario contienen errores";
		}else{
			destino = "redirect:/cursos";
			if(cS.getById(curso.getCodigo()) != null){
				try {
					logger.info(curso.toString());
					cS.update(curso);
					txt = "El curso se ha actualizado correctamente.";
				} catch (Exception e) {
					logger.info("Se ha lanzadado una excepcion update. " + e.toString());
					txt = "Ha habido problemas en la actualización.";
				}
			}else{
				try {
					logger.info("CREATE PARAMS:  " + curso.toString());
					cS.create(curso);
					txt = "El curso se ha creado correctamente.";
				} catch (Exception e) {
					logger.info("Se ha lanzadado una excepcion create. " + e.toString());
					txt = "Ha habido problemas al crear.";
				}
			}
		}
		return destino;	
	}	
}
