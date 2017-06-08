/**
 * 
 */
package com.ipartek.formacion.dbms.dao;

import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.core.simple.SimpleJdbcCall;
import org.springframework.stereotype.Repository;

import com.ipartek.formacion.dbms.dao.interfaces.CursoDAO;
import com.ipartek.formacion.dbms.persistence.Curso;

/**
 * @author Alberto
 *
 */
@Repository("cursoDaoImp")
public class CursoDAOImp implements CursoDAO {

	
	//private Logger logger = LoggerFactory.getLogger(CursoDAOImp.class);
	private Logger logger = LoggerFactory.getLogger(CursoDAOImp.class);
	
	@Autowired
	@Qualifier("mysqlDataSource")
	private DataSource dataSource;
	private JdbcTemplate jdbctemplate;
	private SimpleJdbcCall jdbcCall;
	
	@Autowired
	@Qualifier("mysqlDataSource")
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
		this.jdbctemplate = new JdbcTemplate(dataSource);
	}
	
	@Override
	public Curso create(Curso curso) {
		final String SQL = "barrioCreate";
		this.jdbcCall = new SimpleJdbcCall(dataSource);
		jdbcCall.withProcedureName(SQL);
		SqlParameterSource in = new MapSqlParameterSource()
				.addValue("pnomcurso", curso.getNomcurso())
				.addValue("pcodcurso", curso.getCodcurso());

		logger.info("METHOD DAO: getAll() -- PARAMS: " + curso.toString());
		Map<String, Object> out = jdbcCall.execute(in);
		curso.setCodigo((Integer) out.get("pcodigo"));
		return curso;
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
