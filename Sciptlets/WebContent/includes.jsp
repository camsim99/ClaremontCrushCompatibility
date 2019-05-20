<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!--  static include -- content changes infrequently-->
<%@ include file="copyright.txt" %>

<p/>


<!--  dynamic include-- content changes a lot -->
<jsp:include page="updates.txt"/>

<p/>

<!--  MUST use static include if it's got java code in it that we want to access -->
<%@ include file="variables.jsp" %>

<%= name %>

</p>

<!--  Must use include jsp tag if you don't know what file you want until run time -->

<%String id = request.getParameter("id"); %>

<% if(id == null){ %>

<jsp:include page="idnotfound.html"/>

<%} else { %>

<jsp:include page="idfound.html"/>

<%} %>


</body>
</html>