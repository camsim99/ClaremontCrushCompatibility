<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ page import = "java.util.Date, gui.*" %>

<%= new Date() %>

<% 

TextOutput textOut = new TextOutput();

out.println(textOut.getInfo());

%>
</body>
</html>