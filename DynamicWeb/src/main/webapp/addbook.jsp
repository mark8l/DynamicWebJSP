<%@ page import="ua.foxminded.dynamicweb.DatabaseFacade"  %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add book</title>
</head>
<body>
	<h2>List of books before add</h2>
	<%
		for(String name: DatabaseFacade.getBooks()){
			out.print(name + "<br/>");
		}
	%>
	<form action="confirmadd.jsp" method="get">
		<label for="id">ID:</label><br>
		<input type="text" id="id" name="id"><br>
		<label for="name">Name:</label><br>
		<input type="text" id="name" name="name"><br><br>
		<input type="submit" value="Add">
	</form>
</body>
</html>