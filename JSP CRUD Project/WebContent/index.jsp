<%@ page language="java" contentType="text/html; charset=windows-1256"
	pageEncoding="windows-1256"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>JSP CRUD</title>
<style type="text/css">
body {
	background-color: lightblue;
}

.header {
	background-color: #f1f1f1;
	padding: 20px;
	text-align: center;
}

h1 {
	text-align: center;
}

a:link, a:visited {
	background-color: white;
	color: black;
	border: 2px solid green;
	padding: 10px 20px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
}

a:hover, a:active {
	background-color: green;
	color: white;
}

.topnav {
	overflow: hidden;
	background-color: #333;
}

.tooltip {
	position: relative;
	display: inline-block;
	border-bottom: 1px dotted black;
}

.tooltip .tooltiptext {
	visibility: hidden;
	width: 120px;
	background-color: black;
	color: #fff;
	text-align: center;
	border-radius: 6px;
	padding: 5px 0;
	/* Position the tooltip */
	position: absolute;
	z-index: 1;
}

.tooltip:hover .tooltiptext {
	visibility: visible;
}

.topnav a {
	float: left;
	display: block;
	color: #f2f2f2;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

/* Change color on hover */
.topnav a:hover {
	background-color: #ddd;
	color: black;
}
</style>
</head>
<body>
	<div class="header">
		<h1>User Management System</h1>
	</div>
	<div class="topnav"></div>
	<a href="adduserform.jsp"><span style="text: align: center">Add
			User</span></a>
	<a href="viewusers.jsp"><span style="text: align: center">View
			Users</span></a>
</body>
</html>