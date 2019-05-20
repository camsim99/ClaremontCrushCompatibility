<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%/* directive tag */ %>
<%@ page import="java.util.*" %>

<p/>

<%/* expression tag */ %>
<%= new Date() %>

<p/>

<%/* declaration tag */ %>
<%! public String info = "Some info here."; %>

<p/>

<%/* scriptlet tag, you can do anything in here that you can do in a Java method */ %>
<% for (int i =0; i < 5; i++) {%>
This is looped.
<% }  %>

</body>
</html>