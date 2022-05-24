<%@ page import="ua.foxminded.dynamicweb.DatabaseFacade"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete book</title>
</head>
<body>
	<h2>List of books before delete</h2>
	<%
		for(String name: DatabaseFacade.getBooks()){
			out.print(name + "<br/>");
		}
	%>
	<form action="confirmdelete.jsp" method="get">
		<label for="name">Name:</label><br>
		<input type="text" id="name" name="name"><br><br>
		<input type="submit" value="Delete">
	</form>
</body>
</html>