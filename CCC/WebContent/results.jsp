<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>&#10084; Claremont Crush Compatibility -- Results &#10084;</title>
<style>
nav {
    float: left;
    width: 20%;
    height: 300px; 
    background: #FDF8FF;
    padding: 20px;
}
nav ul {
    list-style-type: none;
    padding: 0;
}

li, p {
  line-height: 1.5;
}

article {
    float: right;
    padding: 20px;
    width: 68%;
    background-color: #ff8686;
    height: 300px; 
    text-align: center;
}

.welcome {
    background-color: rgb(240,0,50);
    color: white;
    padding: 15px;
    text-align: center;
} 


</style>
</head>

<body bgcolor = #fdc7c7>

<!--  add the useBean stuff -->
<jsp:useBean id="info" class="beans.CrusherAndCrush" scope="request"></jsp:useBean>


<!--  set properties for bean analysis -->
<jsp:setProperty name="info" property="*"/>


<!--  Run code to set the score and analysis-->
<% info.setCScore(); %>
<% info.setAnalysis(); %>

<h1 class="welcome" style="font-family:verdana;color:white;">
&#10084; Claremont Crush Compatibility Results &#10084;

</h1>


<section>
  <nav>
      <ul>
      <li>&#10083; <a href="${pageContext.request.contextPath}/form.jsp">Take it again!</a></li>
      <li>&#10083; <a href="https://www.facebook.com/claremontcrush/">Shout-out your Crush!</a></li>
      <li>&#10083; <a href="${pageContext.request.contextPath}/index.jsp">Return to home</a></li>
    </ul>
  </nav>
  <article>
  	<font size = 5 style="font-family:verdana;">YOUR COMPATIBILITY SCORE:</font>
	<br><br>
  	<font size = 6 style="font-family:verdana;" ><%=info.getCScore()%>%</font>

	<br><br><br>
	
	<font size = 4 style="font-family:verdana;"> <%= info.getAnalysis() %></font>

  </article>
</section>


</body>
</html>