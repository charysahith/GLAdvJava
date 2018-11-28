<%@ page language="java" import="com.lict.dao.UserDao"
	contentType="text/html; charset=windows-1256"
	pageEncoding="windows-1256"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>Update-User</title>
</head>
<body>
	<jsp:useBean id="u" class="com.lict.bean.User"></jsp:useBean>
	<jsp:setProperty property="*" name="u" />
	<%
		int i = UserDao.update(u);
		response.sendRedirect("viewusers.jsp");
	%>
</body>
</html>