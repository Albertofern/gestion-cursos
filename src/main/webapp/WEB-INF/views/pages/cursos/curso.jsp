<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%><!--  -->
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%><!--  -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 

			<section class="row">
				<div class="col-xs-12  col-md-10 col-md-offset-1 col-lg-6 col-lg-offset-3 jumbotron">
					<div class="row">
						<header class="col-xs-12  col-md-10 col-md-offset-1  col-lg-6 col-lg-offset-3 text-center page-header text-capitalize">
							<h3>
								<spring:message code="curso.form"/>
							</h3>
						</header>
					</div>
					<form:form action="save" nethod="post" commandName="curso" cssClass="form-horizontal">
						<c:if test="${not empty curso}">
							<form:hidden path="codigo"/>
						</c:if>		
					
						<div class="form-group row">
							<div class="col-xs-3">	
								<form:label path="codcurso" cssClass="control-label text-capitalize">
									<spring:message code="curso.codigo"/>:
								</form:label>
							</div>	
							<div class=" col-xs-4">
								<form:input placeholder="Introduzca el codigo" path="codcurso" 
									cssErrorClass="text-danger" cssClass="form-control" required="required"/>
							</div>
							<div class="col-xs-5">
								<form:errors path="codcurso" cssClass="text-danger" />
							</div>
						</div>
					
						<div class="form-group row">
							<div class="col-xs-3 ">
								<form:label  path="nomcurso" cssClass="control-label text-capitalize">
									<spring:message code="curso.nombre"/>:
								</form:label>
							</div>
							<div class=" col-xs-5">
								<form:input placeholder="Introduzca el nombre" path="nomcurso" 
									cssErrorClass="text-danger" cssClass="form-control" required="required"/>
							</div>
							<div class="col-xs-4">
								<form:errors path="nomcurso" cssClass="text-danger" />
							</div>
						</div>
						
						<!-- BOTON Crear//Editar formulario -->
						<c:set var="men" />
							<spring:message var="men" code="const.crear" />
						<c:if test="${curso.codigo > 0}">
							<spring:message var="men" code="const.editar" />
						</c:if>
						<button type="submit"  class="btn btn-success" ><span class="glyphicon glyphicon-ok"></span> ${men}</button>
					</form:form>
				</div>
			</section>



