<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="user2" class="beans.User" scope = "page"></jsp:useBean>

<jsp:setProperty name="user2" property="email" value = "camillesimon90@gmail.com"/>
<jsp:setProperty name="user2" property="password" value = "letmein"/>

Email: <%= user2.getEmail() %>

</body>
</html>