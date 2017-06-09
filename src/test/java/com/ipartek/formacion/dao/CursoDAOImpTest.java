/**
 * 
 */
package com.ipartek.formacion.dao;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ipartek.formacion.dbms.dao.interfaces.CursoDAO;
import com.ipartek.formacion.dbms.persistence.Curso;




@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:application-context-test.xml")
public class CursoDAOImpTest {

	//private Logger logger = LoggerFactory.getLogger(CursoDAOImpTest.class);
	
	@Autowired
	CursoDAO cS;
	
	int[] codigos;
	
	Curso curso;
	List<Curso> cursos;
	
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
	}

	@Before
	public void setUp() throws Exception {
		curso = new Curso();
		curso.setNomcurso("HTML5");
		curso.setCodigo(800);
		
		codigos= new int[4];
		codigos[0]= 0;
		codigos[1]= 1;
		codigos[2]= 2;
		codigos[3]= 3;
	}

	@After
	public void tearDown() throws Exception {
		curso= null;
	}

	@Test //test unitario 
	public void testclase(){	
		assertEquals("class com.ipartek.formacion.dbms.dao.CursoDAOImp", this.cS.getClass().toString());
	}
	
	@Test
	public void testCreate() {
		Curso curs = cS.create(curso);

		assertNotNull("El curso es nulo", curs); // Cuando "curs" sea NULO //Espero que NO sea NULO
		//todos los atributos
		assertTrue("El codigo debe ser mayor que 0", curs.getCodigo()>0); // cuando esto "curs.getCodigo()>0" sea FALSO 
		assertFalse("El codigo debe se menor que 0", curs.getCodigo()<0);
		assertEquals("El nombre no es identico", curs.getNomcurso(), curso.getNomcurso());
		// ....
		
		assertEquals("Los datos no son identicos", curs,cS.getById(curs.getCodigo()));
		
		//curr= bS.create(curso);
		cS.delete(curs.getCodigo());
		
		//fail("no implementado");
	}
	
	@Test(timeout = 600)
	public void testGetAll() {
		List<Curso> cursos = cS.getAll();
		int size = 7;
		assertEquals("numero de cursos incorrecto",size , cursos.size());		
	}

	@Test
	public void testGetById() {
		for(int i=0; i<codigos.length; i++){
			Curso curs = cS.getById(codigos[i]);
			assertNotNull("El curso tiene que existir. El curso con codigo " 
						+ codigos[i] + " esta en BBDDs", curs);
			assertEquals("El codigo del curso no coincide. El codigo enviado es:" + codigos[i] 
						+ " y el recibido es:" + curs.getCodigo(),
						codigos[i], curs.getCodigo());
		}
	}

	@Test
	@Ignore
	public void testGetByNombre() {
		fail("Not yet implemented");
	}

	@Test
	@Ignore
	public void testUpdate() {
		fail("Not yet implemented");
	}

	@Test
	@Ignore
	public void testDelete() {
		fail("Not yet implemented");
	}

	@Test
	@Ignore
	public void testGetInforme() {
		fail("Not yet implemented");
	}

}