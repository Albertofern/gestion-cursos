/**
 * 
 */
package com.ipartek.formacion.controller.validator;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.ipartek.formacion.dbms.persistence.Curso;
import com.ipartek.formacion.service.interfaces.CursoService;


/**
 * @author Alberto Fernandez
 *
 */
public class CursoValidator implements Validator{

	
	@Value("${curso.nombre.size.min}")
 	private int nombreTamMin;
	@Value("${curso.nombre.size.max}")
 	private int nombreTamMax;
	
	
	@Value("${curso.codigo.size.min}")
 	private int codigoTamMin;
	@Value("${curso.codigo.size.max}")
 	private int codigoTamMax;
	
	
	@Inject
	CursoService cS;
	
	
	@Override
	public boolean supports(Class<?> paramClass) {
		return Curso.class.equals(paramClass);
	}

	@Override
	public void validate(Object obj, Errors errors) {
		Curso curs = (Curso) obj;
		if (curs.getCodigo()< Curso.CODIGO_NULO){
			errors.rejectValue("codigo", "valorNegativo", new Object[]{ "'codigo'" },"no puede ser menor que " + Curso.CODIGO_NULO);
		}
		
		if (curs.getNomcurso().length() < nombreTamMin || curs.getNomcurso().length() > nombreTamMax) {
			errors.rejectValue("nombre", "form.longitudNombreIncorrecta", new Object[] { nombreTamMin,nombreTamMax },
						"El nombre tiene que ocupar entre 3 y 100 caracteres.");
		}
		
		if (curs.getCodcurso().length() < codigoTamMin || curs.getCodcurso().length() > codigoTamMax) {
			errors.rejectValue("codigo", "form.longitudNombreIncorrecta", new Object[] { codigoTamMin,codigoTamMax },
						"El codigo tiene que ocupar entre 3 y 50 caracteres.");
		}
		

		if (curs.getCodigo() == Curso.CODIGO_NULO && cS.getByNombre(curs.getNomcurso()) != null) {
			errors.rejectValue("nombre", "form.barrio.nombreExiste", new Object[] { curs.getNomcurso() },
					"el barrio ya existe en la base de datos");

		}
		
		
	
	}
}
