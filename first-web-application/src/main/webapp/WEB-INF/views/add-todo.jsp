<%@ include file="../common/header.jspf"%>

<%@ include file="../common/navigation.jspf"%>


	<div class="container">
		Your new action item :
		<form method="POST" action="/add-todo.do">
			<fieldset class="form-group">
				<label>Description</label> <input name="todo" type="text" class="form-control" /> <br>
			</fieldset>

			<fieldset class="form-group">
				<label>Category</label> <input name="category" type="text" class="form-control"/> <br>
			</fieldset>
			<input name="add" type="submit" class="btn btn-success"/>
		</form>
	</div>


	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>

</html>

<%@ include file="../common/footer.jspf"%> 