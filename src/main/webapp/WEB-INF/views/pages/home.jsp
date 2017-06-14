<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
			
	
	<main class="center jumbotron">
		<div class="container">
			<header>
				<h2 class="col-lg-offset-2 text-capitalize">
					<spring:message code="cursos.titulo"/>
				</h2>
			</header>
		</div>	

    	<section>
	 	<form name="myForm" action="#" onsubmit="buscar();" >
		 	<input type="text" name="buscar" id="buscar">
			<input type="button" value="BUSCAR"  id="boton">
		</form> 
		<div id="ocultar">
    	</div>			
		</section>
    	
    	
    	
		<div class="container-fluid">
		<div id="nuevo" class ="text-capitalize">
			<a class="btn btn-primary" href="<c:url value="/cursos/addCurso"/>">
				<spring:message code="cursos.nuevo"/>
			</a>
		</div>
		<div id="cabecera" class="row ">
				<div class="col-xs-2 text-capitalize">
					<h4>
						<strong><spring:message code="cursos.codigo"/></strong>
					</h4>
				</div>
				<div class="col-xs-4 text-capitalize">
					<h4>
						<strong><spring:message code="cursos.nombre"/></strong>
					</h4>
				</div>
				<div class="col-xs-2"></div>
			</div>
			
				<c:choose>
					<c:when test="${not empty listadocursoslimit}">
						<c:forEach var="curso" items="${listadocursoslimit}">
						<div class="row">
							<div class="col-xs-2">${curso.codcurso}</div>
							<div class="col-xs-4">${curso.nomcurso}</div>
							<div class="btn-group col-xs-2">
							<a class="btn btn-warning text-capitalize" href="<c:url value='/cursos/${curso.codigo}'/>">
								<spring:message code="const.editar"/>
							</a>
							</div>
						</div>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<div class="row">
							<p class="col-xs-12 text-capitalize">
								<spring:message code="cursos.nobbdd" />
							</p>
						</div>
					</c:otherwise>
				</c:choose>
		</div>
	</main>
