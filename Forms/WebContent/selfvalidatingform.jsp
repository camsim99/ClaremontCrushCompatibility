<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id= "user1" class="beans.User" scope = "session"></jsp:useBean>
<jsp:setProperty name="user1" property="*"></jsp:setProperty>

<%
String action = request.getParameter("action");

if(action!=null && action.equals("formsubmit"))
{
	

if(user1.validate())
{
	request.getRequestDispatcher("/Controller").forward(request, response);
}
}
%>

<h2>
<jsp:getProperty name="user1" property="message"/>
</h2>


<form action="selfvalidatingform.jsp" method="post">

<input type="hidden" name="action" value = "formsubmit"/>

<input type="text" name="email" value="<jsp:getProperty name="user1" property="email"/>"/><br/>
<input type="text" name="password" value="<jsp:getProperty name="user1" property="password"/>"/>

<input type="submit" value="OK" />


</form>

</body>
</html>