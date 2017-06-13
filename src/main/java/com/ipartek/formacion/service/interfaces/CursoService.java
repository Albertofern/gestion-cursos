/**
 * 
 */
package com.ipartek.formacion.service.interfaces;

import java.util.List;

import com.ipartek.formacion.dbms.persistence.Curso;

/**
 * @author Alberto
 *
 */
public interface CursoService {
	
	public Curso create(Curso curso);

	public List<Curso> getAll();

	public Curso getById(int codigo);

	public Curso update(Curso curso);

	public void delete(int codigo);
	
	public  List<Curso> getAllLimit();
	
	public Curso getByCodigo(String codcurso);
	
	public List<Curso> getByNombre(String nomcurso);
}
