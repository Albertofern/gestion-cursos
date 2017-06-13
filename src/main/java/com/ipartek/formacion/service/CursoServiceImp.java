/**
 * 
 */
package com.ipartek.formacion.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ipartek.formacion.dbms.dao.interfaces.CursoDAO;
import com.ipartek.formacion.dbms.persistence.Curso;
import com.ipartek.formacion.service.interfaces.CursoService;

/**
 * @author Alberto
 *
 */
@Service
public class CursoServiceImp implements CursoService{

	
	@Autowired
	private CursoDAO cursoDao;
	
	
	
	
	@Override
	public Curso create(Curso curso) {
		return cursoDao.create(curso);
	}

	@Override
	public List<Curso> getAll() {
		return cursoDao.getAll();
	}

	@Override
	public Curso getById(int codigo) {
		return cursoDao.getById(codigo);
	}

	@Override
	public Curso update(Curso curso) {
		return cursoDao.update(curso);
	}

	@Override
	public void delete(int codigo) {
		cursoDao.delete(codigo);
	}

	@Override
	public List<Curso> getAllLimit() {
		
		return cursoDao.getAllLimit();
	}

	@Override
	public Curso getByCodigo(String codcurso) {
		return cursoDao.getByCodigo(codcurso);
	}

	@Override
	public List<Curso> getByNombre(String nomcurso) {
		return cursoDao.getByNombre(nomcurso);
	}

}
