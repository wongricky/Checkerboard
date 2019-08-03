<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link href="DrawStyle.css" rel="stylesheet" type="text/css">
	<title>Checkerboard</title>
</head>
<body>
	<% int width = Integer.parseInt(request.getParameter("width")); %>
	<% int height = Integer.parseInt(request.getParameter("height")); %>
	<h1>Checkerboard: <%= width%>w X <%=height%>h</h1>
	<br/>
	
	
	<% for(int i = 0; i < height; i ++){ %>
		<% for(int j = 0; j < width; j ++){ %>
		<%
		if (i%2 == 0){ 
		%>
			<%
			if (j%2 == 0){ 
			%>
			<div class = "cb0"></div>
			<%
			} else {
			%>
			<div class = "cb1"></div>
			<% } %>
		<% 	
		} else {
		%>
			<%
			if (j%2 == 1){ 
			%>
			<div class = "cb0"></div>
			<%
			} else {
			%>
			<div class = "cb1"></div>
			<% } %>
		<% } %>
		<%} %>
	<br/>
	<%} %>
	
</body>
</html>