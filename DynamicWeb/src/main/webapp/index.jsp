<%@ page import="ua.foxminded.dynamicweb.DatabaseFacade"  %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>List of books</h1>
	<%
		for(String name: DatabaseFacade.getBooks()){
			out.print(name + "<br/>");
		}
	%>
	<form action="addbook.jsp">
		<input type="submit" value="Add">
	</form>
	<form action="deletebook.jsp">
		<input type="submit" value="Delete">
	</form>
</body>
</html>