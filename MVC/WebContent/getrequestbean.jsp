<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="user3" class="beans.User" scope = "request"></jsp:useBean>

Email: <%= user3.getEmail() %>
<p/>
Password: <%= user3.getPassword() %>

</body>
</html>