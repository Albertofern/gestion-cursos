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

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ipartek.formacion.dbms.persistence.Curso;
import com.ipartek.formacion.service.interfaces.CursoService;

@Controller
@RequestMapping(value="/cursos")
public class CursoController {
	
	private static final Logger logger = LoggerFactory.getLogger(CursoController.class);
	ModelAndView mav = null;
	
	@Autowired
	private CursoService cS;
	
	
	@InitBinder
	public void initBinder(WebDataBinder binder, Locale locale) {
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
	
	@RequestMapping(value="/deleteCurso/{codigo}" , method = RequestMethod.GET)
	public ModelAndView  delete(@PathVariable("codigo")int codigo, RedirectAttributes redirectMap){
		logger.info("METHOD CONTROLLER: deleteBarrio()");
		
		String destino = "";
		String txt="";
		Integer.toString(codigo);
		destino = "redirect:/cursos";
		mav= new ModelAndView(destino);
		
		try { 
			cS.delete(codigo);
			txt = "El curso se ha borrado correctamente.";
		} catch (Exception e) {
			txt = "Ha habido problemas al borrar el curso.";
		}
		return mav;
	}
	
	@RequestMapping(value="/addCurso", method = RequestMethod.GET)
	public ModelAndView  addCurso(Model model){
		logger.info("METHOD CONTROLLER: addCurso() -- PARAM:  new");
		model.addAttribute("curso", new Curso());
		mav= new ModelAndView("curso");
		return mav;
	}
	
	@RequestMapping(value="/save", method = RequestMethod.POST)
	public String saveCurso(@ModelAttribute("curso")@Valid Curso curso,BindingResult bindingResult,
			 ModelMap model ,RedirectAttributes redirectMap) throws IOException {
		
		logger.info("METHOD CONTROLLER: saveCurso() -- PARAMS:  " + curso.toString());
		String destino = "";
		String txt="";
		if (bindingResult.hasErrors()) {
			logger.info("METHOD CONTROLLER: saveCurso() -- ERRORS: " + bindingResult.hasErrors());
			destino = "cursos";
			txt = "Los datos de formulario contienen errores";
		}else{
			destino = "redirect:/cursos";
			if(curso.getCodigo() > curso.CODIGO_NULO ){
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
