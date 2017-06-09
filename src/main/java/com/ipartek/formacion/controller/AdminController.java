/**
 * 
 */
package com.ipartek.formacion.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ipartek.formacion.service.interfaces.CursoService;

/**
 * @author Alberto
 *
 */

@Controller
public class AdminController {

	private static final Logger LOG = LoggerFactory.getLogger(AdminController.class);

	@Autowired()
	private CursoService cS;

	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String getAll(Model model) {
		LOG.info("getAll");

		model.addAttribute("cursos", this.cS.getAll());

		return "curso/index";
	}

}
