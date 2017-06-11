/**
 * 
 */
package com.ipartek.formacion.dbms.dao.interfaces;

import java.util.List;

import com.ipartek.formacion.dbms.persistence.Curso;


/**
 * @author Alberto
 *
 */
public interface CursoDAO extends DAOSetter {
	
	public Curso create(Curso curso);

	public List<Curso> getAll();

	public Curso getById(int codigo);

	public Curso update(Curso curso);

	public void delete(int codigo);
	
	public Curso getByNombre(String nomcurso);
	

}
