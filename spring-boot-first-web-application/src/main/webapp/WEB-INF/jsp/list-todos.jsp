<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>

<div class="container">

<h1>Your Todo's</h1>
	<table class="table">
	<caption>Your todo's are.</caption>
	
		<thead>
			<tr>
				<th>Description</th>
				<th>Target Date</th>
				<th>Is it Done?</th>
				<th></th>
				<th></th>
			</tr>
		</thead>
		
		<tbody>
		<c:forEach items="${todos}" var="todo">
			<tr>
				<td>${todo.desc}</td>
				<td><fmt:formatDate value="${todo.targetDate}" pattern="dd/MM/yyyy"/></td>
				<td>${todo.done}</td>
				<td><a type="button" class="btn btn-success btn-md" href="/update-todo?id=${todo.id}">Update</a></td>
				<td><a type="button" class="btn btn-warning btn-md" href="/delete-todo?id=${todo.id}">Delete</a></td>
			</tr>
		</c:forEach>
		
		</tbody>
	
	</table>
	
	<div>
		<a class="btn btn-success btn-md" href="/add-todo">Add a ToDo</a>
	</div>
	
</div>

	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	
	<%@ include file="common/footer.jspf"%>
