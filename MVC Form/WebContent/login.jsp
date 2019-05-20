<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
</head>
<body>

<form action="/MVC_Form/Controller" method="post">

<input type="hidden" name="action" value="dologin"/>
Email: <input type="text" name="email" value="<%= request.getAttribute("email")%>" />
Password: <input type="text" name="password" value="<%=request.getAttribute("password") %>" />
<input type="submit" value="OK"/>

</form>

<h2><%= request.getAttribute("validationmessage") %></h2>

</body>
</html>