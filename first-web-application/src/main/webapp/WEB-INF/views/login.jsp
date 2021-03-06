<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
<title>Login Page</title>
<!-- Bootstrap core CSS -->
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">

<style>
.footer {
	position: absolute;
	bottom: 0;
	width: 100%;
	height: 60px;
	background-color: #f5f5f5;
}

.footer .container {
	width: auto;
	max-width: 680px;
	padding: 0 15px;
}
</style>
</head>

<body>

	<nav role="navigation" class="navbar navbar-default">

		<div class="">
			<a href="/" class="navbar-brand">Brand</a>
		</div>

		<div class="navbar-collapse">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Home</a></li>
				<li><a href="/list-todos.do">Todos</a></li>
				<li><a href="http://www.youtube.com">YouTube</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="/login.do">Login</a></li>
			</ul>
		</div>

	</nav>

	<div class="container">
		<form action="/login.do" method="POST">
			<p>
				<font color="red">${errorMessage}</font>
			</p>
			Name : <input name="name" type="text" /> Password : <input
				name="password" type="password" /> <input type="submit"
				value="Login" />
		</form>

	</div>

	<footer class="footer">
		<div class="container">
			<p>footer content</p>
		</div>
	</footer>

	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>

</html>

