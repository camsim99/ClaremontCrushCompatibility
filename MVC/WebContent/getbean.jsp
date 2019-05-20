<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="user" class="beans.User" scope = "session"></jsp:useBean>

Email: <%= user.getEmail() %>
<p/>
Password: <%= user.getPassword() %>

</body>
</html>