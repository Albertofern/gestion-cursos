<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
		
	<main class="center">
		<div class="container">
			<header>
				<h2 class="col-lg-offset-6 text-capitalize">
					<spring:message code="cursos.titulo"/>
				</h2>
			</header>
		</div>
		<div class="container-fluid">
		<div id="nuevo" class ="row col-lg-offset-4 text-capitalize">
			<a class="btn btn-primary" href="<c:url value="/cursos/addCurso"/>">
				<spring:message code="cursos.nuevo"/>
			</a>
		</div>
		<div id="cabecera" class="row col-lg-offset-4">
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
					<c:when test="${not empty listadocursos}">
						<c:forEach var="curso" items="${listadocursos}">
						<div class="row col-lg-offset-4">
							<div class="col-xs-2">${curso.codcurso}</div>
							<div class="col-xs-4">${curso.nomcurso}</div>
							<div class="btn-group col-xs-2">
							<a class="btn btn-warning text-capitalize" href="<c:url value='/cursos/${curso.codigo}'/>">
								<spring:message code="const.editar"/>
							</a>
							<a class="btn btn-danger text-capitalize" href="<c:url value='/cursos/deleteCurso/${curso.codigo}'/>">
								<spring:message code="const.borrar"/>
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