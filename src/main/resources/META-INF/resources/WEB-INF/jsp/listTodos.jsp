<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<link href="webjars/bootstrap/5.3.1/css/bootstrap.min.css"
	rel="stylesheet">
<script src="webjars/bootstrap/5.3.1/js/bootstrap.bundle.min.js"></script>
<script src="webjars/jquery/3.7.0/jquery.min.js"></script>
<title>Todos</title>
</head>
<body>
	<div class="container">
		<div>Your Todos List are :</div>
		<table class="table">
			<thead>
				<tr>
					
					<th>Description</th>
					<th>Target Date</th>
					<th>Is Done?</th>
					<th></th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${todos}" var="todos">
					<tr>
						
						<td>${todos.description}</td>
						<td>${todos.targetDate}</td>
						<td>${todos.done}</td>
						<td><a href="delete-todo?id=${todos.id}" class="btn btn-danger">Delete</a></td>
						<td><a href="update-todo?id=${todos.id}" class="btn btn-primary">Update</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<a href="add-todo" class="btn btn-success">Add Todo</a>
	</div>
</body>

</html>