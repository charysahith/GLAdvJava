<%@ page language="java" contentType="text/html; charset=windows-1256"
	pageEncoding="windows-1256"%>
<%@page import="com.lict.dao.UserDao,com.lict.bean.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Edit-User</title>
<style type="text/css">
body {
	background-color: lightblue;
}

h1 {
	text-align: center;
	color: green;
}
</style>
</head>
<body>
	<%
		String id = request.getParameter("id");
		User u = UserDao.getRecordById(Integer.parseInt(id));
	%>

	<h1>Edit Form</h1>
	<form action="edituser.jsp" method="post">
		<input type="hidden" name="id" value="<%=u.getId()%>" />
		<div class="container">
			<table class="table">

				<tr class="success">
					<td><div class="form-group">
							<label for="usr">Name</label>
						</div></td>
					<td><div class="form-group">
							<input type="text" class="form-control" name="name"
								value="<%=u.getName()%>" id="usr" />
						</div></td>
				</tr>
				<tr class="active">
					<td><div class="form-group">
							<label for="pwd">Password</label>
						</div></td>
					<td><div class="form-group">
							<input type="password" id="pwd" name="password"
								class="form-control" value="<%=u.getPassword()%>" />
						</div></td>
				</tr>
				<tr class="success">
					<td><div class="form-group">
							<label for="email">Email</label>
						</div></td>
					<td><div class="form-group">
							<input type="email" id="email" class="form-control" name="email"
								value="<%=u.getEmail()%>" />
						</div></td>
				</tr>
				<tr class="active">
					<td><div class="form-group">
							<label for="sex">Sex</label>
						</div></td>
					<td><div class="form-group">
							<input type="radio" name="sex" value="male" />Male <input
								type="radio" name="sex" value="female" />Female
						</div></td>
				</tr>
				<tr class="success">
					<td><div class="form-group">
							<label for="country">Country:</label>
						</div></td>
					<td><div class="form-group">
							<select name="country" class="form-control">
								<option>India</option>
								<option>Bangladesh</option>
								<option>Nepal</option>
								<option>Bhutan</option>
								<option>Srilanka</option>
								<option>Other</option>
							</select>
						</div></td>
				</tr>
				<tr class="active">
					<td colspan="2"><button type="submit" class="btn btn-default">Update
							User</button></td>
				</tr>
			</table>
		</div>
	</form>

</body>
</html>