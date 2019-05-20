<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<%

String name = request.getParameter("name");

out.println("Name param is: " + name);

//http://localhost:8080/Sciptlets/parameters.jsp?name=bob
%>


</body>
</html>