<!-- use header.jspf (f=fragment) for header information-->
<%@ include file="../common/header.jspf"%>
<body>

<!-- use navigation.jspf (f=fragment) for header information-->
<%@ include file="../common/navigation.jspf"%>

<body>

	<nav class="navbar navbar-default">

		<a href="/" class="navbar-brand">Brand</a>

		<ul class="nav navbar-nav">
			<li class="active"><a href="#">Home</a></li>
			<li><a href="/list-todos.do">Todos</a></li>
		</ul>

		<ul class="nav navbar-nav navbar-right">
			<li><a href="/login.do">Login</a></li>
		</ul>

	</nav>

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