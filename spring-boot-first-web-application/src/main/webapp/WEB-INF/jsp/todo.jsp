<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>

<div class="container">
	<form:form method="post" modelAttribute="todo">
		<form:hidden path="id" />
		<form:hidden path="user"/>
			
			<h3><b>${name}</b></h3>
				<fieldset class="form-group">
				 
					 <form:label path="desc">Description</form:label>
					 <form:input path="desc" type="text" 
					     class="form-control" required="required" placeHolder="enter description..."/>
					 <form:errors path="desc" cssClass="text-danger"/>
				</fieldset>
			
				<fieldset class="form-group">
					 <form:label path="targetDate">Target Date</form:label>
					 <form:input path="targetDate" type="text" 
					     class="form-control" required="required"/>
					 <form:errors path="targetDate" cssClass="text-danger"/>
				</fieldset>
			
		    	<button type="submit" class="btn btn-success btn-md">Add</button>
	</form:form>
</div>
<%@ include file="common/footer.jspf"%>
