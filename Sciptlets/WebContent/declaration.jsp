<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- Declaration tag -->

<%! 

//instance variable
private String name = "Camille"; 


private String getInfo()
{
	return "Hello there.";
}


%>


<%out.println(getInfo()); %>

</body>
</html>