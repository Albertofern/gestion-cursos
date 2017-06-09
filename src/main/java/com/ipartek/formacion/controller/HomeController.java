/**
 * 
 */
package com.ipartek.formacion.controller;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ipartek.formacion.dbms.persistence.Curso;
import com.ipartek.formacion.service.interfaces.CursoService;

/**
 * @author Alberto
 *
 */

@Controller
public class HomeController {

	@Autowired
	private CursoService cS;
	
	private static final Logger LOG = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home( Model model) {
		LOG.info("Listando cursos");
		ArrayList<Curso> cursos = (ArrayList<Curso>) cS.getAll();
		model.addAttribute("cursos", cursos);
		
		return "home";
}
	
	
}
