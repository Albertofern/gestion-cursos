/**
 * 
 */
package com.ipartek.formacion.dbms.dao;

import java.util.List;

import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.ipartek.formacion.dbms.dao.interfaces.CursoDAO;
import com.ipartek.formacion.dbms.persistence.Curso;

/**
 * @author Alberto
 *
 */
@Repository("restauranteDaoImp")
public class CursoDAOImp implements CursoDAO {

	
	//private Logger logger = LoggerFactory.getLogger(CursoDAOImp.class);
	private Logger logger = LoggerFactory.getLogger(CursoDAOImp.class);
	
	@Autowired
	@Qualifier("mysqlDataSource")
	private DataSource dataSource;
	
	@Autowired
	@Qualifier("mysqlDataSource")
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	@Override
	public Curso create(Curso curso) {
		logger.info("METHOD DAO: getAll() -- PARAMS: " + curso.toString());
		return null;
	}

	@Override
	public List<Curso> getAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Curso getById(int codigo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Curso update(Curso curso) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void delete(int codigo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Curso getByNombre(String nombre) {
		// TODO Auto-generated method stub
		return null;
	}

}
