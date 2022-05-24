<%@ page import="ua.foxminded.dynamicweb.DatabaseFacade"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>The followed book deleted</h2>
	<form action="index.jsp">
		<p>
			<b>Name:</b>
			<%=request.getParameter("name")%>
		</p>
		<%
			DatabaseFacade.deleteBook(request.getParameter("name"));
		%>
		<input type="submit" value="Back to list">
	</form>
</body>
</html>