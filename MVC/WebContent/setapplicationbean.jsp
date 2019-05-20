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

<jsp:setProperty name="user4" property="email" value = "camillesimon90@gmail.com"/>
<jsp:setProperty name="user4" property="password" value = "letmein"/>



</body>
</html>