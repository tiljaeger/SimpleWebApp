<!-- use header.jspf (f=fragment) for header information-->
<%@ include file="../common/header.jspf"%>
<body>

<!-- use navigation.jspf (f=fragment) for header information-->
<%@ include file="../common/navigation.jspf"%>
	

	<div class="container">
		<H1>Welcome ${name}</H1>

		Your Todos are
		<!-- combine html table with css bootstrap class table -->
		<table class="table table-striped">
			<caption></caption>
			<thead>
				<th>Description</th>
				<th>Category</th>
				<th>Actions</th>
			</thead>
			<tbody>
			<c:forEach items="${todos}" var="todo">
				<tr>
					<td>${todo.name}</td>
					<td>${todo.category}</td>
					<!-- a href link combined with css bootstrap classes -->
					<td><a class="btn btn-danger" href="/delete-todo.do?todo=${todo.name}&category=${todo.category}">Delete</a></td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
		
		<p>
			<font color="red">${errorMessage}</font>
		</p>
		<!-- a href link combined with css bootstrap classes -->
		<a class="btn btn-success" href="/add-todo.do">Add New Todo</a>
	</div>

</body>

<!-- use footer.jspf (f=fragment) for header information-->
<%@ include file="../common/footer.jspf"%>


</html>