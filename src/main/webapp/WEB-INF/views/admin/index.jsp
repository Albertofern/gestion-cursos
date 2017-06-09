<%@ include file="../includes/header.jsp"%>
<h1>Listado Cursos</h1>

<a href="curso/edit">Crear Nuevo</a>


<table class="tablePlugin" cellspacing="0" width="100%">
	<thead>
		<tr>
			<th>Curso</th>
			<th>Codigo</th>

		</tr>
	</thead>
	<tbody>
		<c:forEach items="${cursos}" var="c">
			<tr>
				<td><a href="curso/edit/${curso.codigo}"> ${curso.nomcurso} </a></td>
				<td><a href="curso/edit/${curso.codigo}">${curso.codcurso}</a></td>
			</tr>
		</c:forEach>


	</tbody>
</table>
<%@ include file="../includes/footer.jsp"%>
