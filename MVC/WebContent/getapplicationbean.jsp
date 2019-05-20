<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="user4" class="beans.User" scope = "application"></jsp:useBean>

Email: <%= user4.getEmail() %>
<p/>
Password: <%= user4.getPassword() %>

</body>
</html>