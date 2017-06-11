<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%><!--  -->
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%><!--  -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 

	<section class="row">
				<div class="col-xs-12  col-md-10 col-md-offset-1 col-lg-6 col-lg-offset-3 jumbotron">
					<div class="row">
						<header class="col-xs-12  col-md-10 col-md-offset-1  col-lg-6 col-lg-offset-3 text-center page-header"><h3><spring:message code="curso.form"/></h3></header>
					</div>
					<form:form action="save" nethod="post" commandName="curso" cssClass="form-horizontal">
						<c:if test="${not empty curso}">
							<form:hidden path="codigo"/>
						</c:if>
					
						<div class="form-group">
							<form:label path="codcurso" for="codcurso" cssClass="col-xs-2 form-label"><spring:message code="curso.codigo"/>:</form:label>
							<div class=" col-xs-8">
								<form:input path="codcurso" cssErrorClass="form-control" cssClass="form-control"  required="required"/>
							</div>
						</div>
					
						<div class="form-group">
							<form:label path="nomcurso" for="nomcurso" cssClass="col-xs-2 form-label"><spring:message code="curso.nombre"/>:</form:label>
							<div class=" col-xs-8">
								<form:input path="nomcurso" cssErrorClass="form-control" cssClass="form-control"  required="required"/>
							</div>
						</div>
						
						<!-- BOTON Crear//Editar formulario -->
						<c:set var="men" />
						<spring:message var="men" code="const.crear" />
						<c:if test="${curso.codigo > 0}">
						<spring:message var="men" code="const.editar" />
						</c:if>
						<a href="<c:url value='${men}'/>" class="btn btn-danger" ><span class="glyphicon glyphicon-arrow-left"> </span><spring:message code="const.volver"/></a>
						<button type="submit"  class="btn btn-success" ><span class="glyphicon glyphicon-ok"></span> ${men}</button>
					</form:form>
				</div>
</section>


