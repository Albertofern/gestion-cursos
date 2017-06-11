<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

	<section class="row">
		<!--  <header class="col-xs-12"><h2 class="text-center text-capitalize"><spring:message code="cursos.titulo"/></h2></header> -->
		<a class="btn btn-info" href="<c:url value="/cursos/addCurso"/>"><spring:message code="cursos.nuevo"/></a>
		<div class="col-xs-12 col-md-12">
			<!-- si se anidan las columnas tiene que haber un row -->
			<div class="row">
				<div class="col-xs-3"><spring:message code="cursos.codigo"/></div>
				<div class="col-xs-5"><spring:message code="cursos.nombre"/></div>
				<div class="col-xs-4"></div>
			</div>
			<c:choose>
				<c:when test="${not empty listadocursos}"><!-- Cuando la lista tiene datos  -->
					<c:forEach var="curso" items="${listadocursos}">
						<div class="row">
							<div class="col-xs-3">
								${curso.codcurso}
							</div>
							<div class="col-xs-5">
								${curso.nomcurso}
							</div>
																				
							<div class="col-xs-4">
								<a class="btn btn-warning" href="<c:url value='/cursos/${curso.codigo}'/>"><spring:message code="const.editar"/></a>
								<a class="btn btn-danger" href="<c:url value='/cursos/deleteCurso/${curso.codigo}'/>"><spring:message code="const.borrar"/></a>
							</div>
						</div>
					</c:forEach>
				</c:when>
				<c:otherwise><!-- Cuando la lista NO tiene datos -->
					<div class="row"><span class="text-danger text-center"><spring:message code="cursos.nobbdd"/>/span></div>
				</c:otherwise>
			</c:choose>		
		</div>	
	</section>