<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

	<section class="row">
	
		<!--  <header class="col-xs-12"><h2 class="text-center text-capitalize"><spring:message code="cursos.titulo"/></h2></header> -->
		<div class="container">	
			<div class="col-xs-1 col-md-2 text-capitalize">
				<a class="btn btn-info text-center text-capitalize" 
					href="<c:url value="/cursos/addCurso"/>">
					<spring:message code="cursos.nuevo"/>
				</a>
			</div>
		</div>
		<div class="container">
			<div class="col-xs-1 col-md-2 text-capitalize">
				<h4>
					<strong><spring:message code="cursos.codigo"/></strong>
				</h4>
			</div>
			<div class="col-xs-4 col-md-5 text-capitalize">	
				<h4>
					<strong><spring:message code="cursos.nombre"/></strong>
				</h4>			
			</div>
			<div class="col-xs-7 col-md-5"></div>
		</div>	
		<div class="container">	
			<c:choose>
				<c:when test="${not empty listadocursos}"><!-- Cuando la lista tiene datos  -->
					<c:forEach var="curso" items="${listadocursos}">
						<div class="form-group">
							<div class="col-xs-1 col-md-2 text-capitalize">
								${curso.codcurso}
							</div>
							<div class="xs-4 col-md-5 text-capitalize">
								${curso.nomcurso}
							</div>
																				
							<div class="col-xs-7 col-md-5 text-capitalize">
								<a class="btn btn-warning" 
									href="<c:url value='/cursos/${curso.codigo}'/>">
										<spring:message code="const.editar"/></a>
								<a class="btn btn-danger" 
									href="<c:url value='/cursos/deleteCurso/${curso.codigo}'/>">
										<spring:message code="const.borrar"/></a>
							</div>
						</div>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<!-- Cuando la lista NO tiene datos -->
				<div class="container">
					<div class="col-xs-2 col-md-2 text-capitalize">
					<span class="text-danger text-center"><spring:message
							code="cursos.nobbdd" /></span>
					</div>
				</div>
				</c:otherwise>
			</c:choose>		
		</div>	
	</section>