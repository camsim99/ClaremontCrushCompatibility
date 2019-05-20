<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id = "user5" class="beans.User" scope = "page" ></jsp:useBean>

<jsp:setProperty name="user5" property="*"/>

<%= user5.getEmail() %>
<%= user5.getPassword() %>
</body>
</html>