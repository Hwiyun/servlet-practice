<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String color = request.getParameter("color");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:choose>
		<c:when test='${param.color == "red" }'>
			<h1 style="color: red">hello world</h1>
		</c:when>
		<c:when test='${param.color == "blue" }'>
			<h1 style="color: blue">hello world</h1>
		</c:when>
		<c:when test='${param.color == "green" }'>
			<h1 style="color: green">hello world</h1>
		</c:when>
		<c:otherwise>
			<h1>hello world</h1>
		</c:otherwise>
		
	</c:choose>
	
	<h1 style='color: red'>Hello World</h1>
	<h1 style='color: blue'>Hello World</h1>
	<h1 style='color: green'>Hello World</h1>
</body>
</html>