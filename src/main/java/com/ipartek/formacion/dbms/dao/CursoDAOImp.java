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
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.core.simple.SimpleJdbcCall;
import org.springframework.stereotype.Repository;

import com.ipartek.formacion.dbms.dao.interfaces.CursoDAO;
import com.ipartek.formacion.dbms.mappers.CursoMapper;
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
	@Override
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
		this.jdbctemplate = new JdbcTemplate(dataSource);
	}
	
	@Override
	public Curso create(Curso curso) {
		final String SQL = "cursoCreate";
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
		final String SQL = "CALL cursogetAll";
		List<Curso> cursos = null;
		try {
			cursos = jdbctemplate.query(SQL, new CursoMapper());
			logger.info("METHOD DAO: getAll() -- LIST SIZE: " + String.valueOf(cursos.size()));
		} catch (EmptyResultDataAccessException e) {
			logger.trace("NO DATA:  " + e.getMessage() + " " + SQL);
		}
		return cursos;
	}

	@Override
	public Curso getById(int codigo) {
		Curso curso = null;
		final String SQL = "CALL cursogetById(?)";
		try {
			curso = jdbctemplate.queryForObject(SQL, new CursoMapper(), new Object[] { codigo });
			logger.info("METHOD DAO: getById() -- PARAMS:  " + curso.toString());
		} catch (EmptyResultDataAccessException e) {
			curso = null;
			logger.info("NO DATA:  " + codigo + " " + e.getMessage());
		}
		return curso;
	}

	@Override
	public Curso update(Curso curso) {
		final String SQL = "cursoUpdate";

		this.jdbcCall = new SimpleJdbcCall(dataSource);
		jdbcCall.withProcedureName(SQL);
		SqlParameterSource in = new MapSqlParameterSource()
				.addValue("pcodigo", curso.getCodigo())
				.addValue("pnomcurso", curso.getNomcurso())
				.addValue("pcodcurso", curso.getCodcurso());

		logger.info("METHOD DAO: update() -- PARAMS:  " + curso.toString());
		jdbcCall.execute(in);

		return curso;
	}

	@Override
	public void delete(int codigo) {
		String SQL = "cursoDelete";
		this.jdbcCall = new SimpleJdbcCall(dataSource);
		jdbcCall.withProcedureName(SQL);
		SqlParameterSource in = new MapSqlParameterSource().addValue("pcodigo", codigo);
		logger.info("METHOD DAO: delete()");
		jdbcCall.execute(in);
		
	}

	@Override
	public Curso getByNombre(String nomcurso) {
		Curso curso = null;
		final String SQL = "CALL cursogetByNombre(?)";
		try {
			curso = jdbctemplate.queryForObject(SQL, new CursoMapper(), new Object[] { nomcurso });
			logger.info("METHOD DAO: getByNombre() -- PARAMS:  " + curso.toString());
		} catch (EmptyResultDataAccessException e) {
			curso = null;
			logger.info("NO DATA:  " + nomcurso + " " + e.getMessage());
		}
		return curso;
	}

}
