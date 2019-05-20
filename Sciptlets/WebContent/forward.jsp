<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

Hello

<!-- 
<jsp:forward page=""></jsp:forward>
 -->
 
 <%
 //btw above line not actually commented out
 //request.getRequestDispatcher("index.jsp").forward(request,response);
 
 response.sendRedirect("index.jsp");
 %>
 
</body>
</html>