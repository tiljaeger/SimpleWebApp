<!-- use header.jspf (f=fragment) for header information-->
<%@ include file="../common/header.jspf"%>
<body>

<!-- use navigation.jspf (f=fragment) for header information-->
<%@ include file="../common/navigation.jspf"%>

	<div class="container">
		<form action="/login.do" method="post">
			<p>
				<font color="red">${errorMessage}</font>
			</p>
			Name: <input type="text" name="name" /> Password:<input
				type="password" name="password" /> <input type="submit"
				value="Login" />
		</form>

	</div>


<!-- use footer.jspf (f=fragment) for header information-->
<%@ include file="../common/footer.jspf"%>


</body>

</html>