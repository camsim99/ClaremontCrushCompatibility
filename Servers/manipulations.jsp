<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<% for(int i=0; i<5; i++) { %>

<p>This HTML is in a scriptlet loop, iteration: <%= i %></p>

<% } %>

<p/>

<%
String id = request.getParameter("id");

if(id == null){
%>

<strong> ID parameter missing</strong>

<% } else {%>
ID parameter is: <%= id %>
<% } %>
</body>
</html>