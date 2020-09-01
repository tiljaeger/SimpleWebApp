<!-- use header.jspf (f=fragment) for header information-->
<%@ include file="../common/header.jspf"%>
<body>

<!-- use navigation.jspf (f=fragment) for header information-->
<%@ include file="../common/navigation.jspf"%>
	
	<div class="container">
		Your New Action Item:
		<form method="POST" action="/add-todo.do">
			<!-- combine html form fieldset with css bootstrap class-->
			<fieldset class="form-group">
				<label>Description</l<be> 
				<input name="todo" type="text" class="form-control"/> </BR>
			</fieldset>
			<fieldset class="form-group">
				<label>Category</l<bel> 
				<input name="category" type="text" class="form-control"/> </BR> 
			</fieldset>
			<input name="add" type="submit" class="btn-success" value="Submit"/>
		</form>
	</div>

<!-- use footer.jspf (f=fragment) for header information-->
<%@ include file="../common/footer.jspf"%>

</body>

</html>