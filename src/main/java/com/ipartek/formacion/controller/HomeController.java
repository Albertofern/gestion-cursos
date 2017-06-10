/**
 * 
 */
package com.ipartek.formacion.controller;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ipartek.formacion.dbms.persistence.Curso;
import com.ipartek.formacion.service.interfaces.CursoService;

/**
 * @author Alberto
 *
 */

@Controller
@RequestMapping(value = "/")
public class HomeController {

	@Autowired
	private CursoService cS;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate );
		 
		ArrayList<Curso> cursos = (ArrayList<Curso>) cS.getAll();
		model.addAttribute("cursos", cursos);
		
		return "home";
	}	
	
	@RequestMapping(value= "login.html")
		public String loginPage(){
			return "login";
	}
	
	@RequestMapping(value= "/Access_Denied")
		public String accesoDenegado(ModelMap model){
			model.addAttribute("model", getPrincipal());
			return "login";
		}

	private Object getPrincipal() {
		String username = null;
			Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
			
			if (principal instanceof UserDetails){
				username = ((UserDetails) principal).getUsername();
			}else{
				username = principal.toString();
			}
			
			return username;
	}
	
	@RequestMapping(value="logout")
		public String logout(HttpServletRequest request, HttpServletResponse response){
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			
			if(auth != null){
				new SecurityContextLogoutHandler().logout(request, response, auth);
			}
			
			return "redirect:/login.html?logout";//se recomienda que la web logout sea la de login
			
		}
	
	
	
}
