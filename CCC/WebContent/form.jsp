<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Claremont Crush Compatibility -- Test</title>
</head>
 <style>
 
.error {
    background-color:#fdc7c7;
    color: red;
    padding: 5px;
    text-align: left;
} 
 </style>
 
<body bgcolor= #fdc7c7>


<div style="text-align:center">
<h1 id="top" style="font-family:verdana;">
&#10084; Claremont Crush Compatibility Test &#10084;
</h1>
</div>

<jsp:useBean id="user" class="beans.CrusherAndCrush" scope="request"></jsp:useBean>
<jsp:setProperty name="user" property="*" />

<%
	String action = request.getParameter("action");

	if (action != null && action.equals("formsubmit")) {
		if (user.validate()) {
			request.getRequestDispatcher("results.jsp").forward(
					request, response);
		}
	}
%>

<h2 class="error" style = "font-family:verdana;"><jsp:getProperty name="user" property="message" /></h2>

<form action= "${pageContext.request.contextPath}/form.jsp" method="post">

<input type="hidden" name="action" value="formsubmit" />

<h4 style="font-family:verdana;"> &#10112; First, tell us a little bit about you! </h4>

<fieldset>
<legend style="font-family:verdana;"> Crusher Information</legend>

<font size= 2 face="verdana"> What 5C college do you attend? </font><br> <br>
<input type="radio" name="college_er" value="Claremont McKenna College (CMC)"/> <font size= 1 face="verdana">Claremont McKenna College (CMC)</font><br>
<input type="radio" name="college_er" value="Harvey Mudd College (HMC)"/> <font size= 1 face="verdana">Harvey Mudd College (HMC)</font><br>
<input type="radio" name="college_er" value="Pitzer College"/> <font size= 1 face="verdana">Pitzer College</font><br>
<input type="radio" name="college_er" value="Pomona College"/> <font size= 1 face="verdana">Pomona College</font><br>
<input type="radio" name="college_er" value="Scripps College"/> <font size= 1 face="verdana">Scripps College</font><br><br>


<font size= 2 face="verdana">Are you an athlete?</font><br> <br>
<input type="radio" name="athlete_er" value="CMS athlete"/> <font size= 1 face="verdana">CMS athlete</font><br>
<input type="radio" name="athlete_er" value="PP athlete"/> <font size= 1 face="verdana">PP athlete</font> <br>
<input type="radio" name="athlete_er" value="Club athlete"/> <font size= 1 face="verdana">Club athlete</font><br>
<input type="radio" name="athlete_er" value="Nope"/> <font size= 1 face="verdana">Nope</font><br><br>


<font size= 2 face="verdana">Which year are you?</font> <br> <br>
<input type="radio" name="class_er" value="Frosh"/> <font size= 1 face="verdana">Frosh/First Year</font><br>
<input type="radio" name="class_er" value="Sophomore"/> <font size= 1 face="verdana">Sophomore</font><br>
<input type="radio" name="class_er" value="Junior"/> <font size= 1 face="verdana">Junior</font><br>
<input type="radio" name="class_er" value="Senior"/> <font size= 1 face="verdana">Senior</font><br><br>


<font size= 2 face="verdana">What do you consider you fashion taste? </font><br> <br>
<input type="radio" name="fashion_er" value="Fashionable"/> <font size= 1 face="verdana">Fashionable</font><br>
<input type="radio" name="fashion_er" value="Distinct style"/> <font size= 1 face="verdana">Distinct style (not necessarily fashionable, but effort shows)</font><br>
<input type="radio" name="fashion_er" value="Athletic"/> <font size= 1 face="verdana">Athletic</font><br>
<input type="radio" name="fashion_er" value="Too comfortable"/> <font size= 1 face="verdana">Just comfortable</font><br>
<input type="radio" name="fashion_er" value="Slob"/> <font size= 1 face="verdana">Slob (Poor hygiene)</font><br><br>


<font size= 2 face="verdana">What is your personality type? </font><br> <br>
<input type="radio" name="personality_er" value="More extroverted"/> <font size= 1 face="verdana">More extroverted</font><br>
<input type="radio" name="personality_er" value="More introverted"/> <font size= 1 face="verdana">More introverted</font> <br>
<input type="radio" name="personality_er" value="Ambivert"/> <font size= 1 face="verdana">Ambivert</font><br><br>


<font size= 2 face="verdana">Do you like going to any parties in the 5C's? </font><br> <br>
<input type="radio" name="party_er" value="Yes!"/><font size= 1 face="verdana">  Yes!</font><br>
<input type="radio" name="party_er" value="Occasionally,yes."/> <font size= 1 face="verdana">Occasionally, yes.</font><br>
<input type="radio" name="party_er" value="Not really."/> <font size= 1 face="verdana">Not really.</font> <br><br>

</fieldset>

<h4 style="font-family:verdana;"> &#10113; Now, tell us about your crush!</h4>

<fieldset>
<legend style="font-family:verdana;"> Crush Information </legend>

<font size= 2 face="verdana"> What 5C college does your crush attend? </font><br> <br>
<input type="radio" name="college" value="Claremont McKenna College (CMC)"/> <font size= 1 face="verdana">Claremont McKenna College (CMC)</font><br>
<input type="radio" name="college" value="Harvey Mudd College (HMC)"/> <font size= 1 face="verdana">Harvey Mudd College (HMC)</font><br>
<input type="radio" name="college" value="Pitzer College"/> <font size= 1 face="verdana">Pitzer College</font><br>
<input type="radio" name="college" value="Pomona College"/> <font size= 1 face="verdana">Pomona College</font><br>
<input type="radio" name="college" value="Scripps College"/> <font size= 1 face="verdana">Scripps College</font><br><br>


<font size= 2 face="verdana">Is your crush an athlete? </font><br> <br>
<input type="radio" name="athlete" value="CMS athlete"/> <font size= 1 face="verdana">CMS Athlete</font><br>
<input type="radio" name="athlete" value="PP athlete"/> <font size= 1 face="verdana">PP Athlete</font> <br>
<input type="radio" name="athlete" value="Club athlete"/> <font size= 1 face="verdana">Club Athlete</font><br>
<input type="radio" name="athlete" value="Nope"/> <font size= 1 face="verdana">Nope</font><br><br>


<font size= 2 face="verdana">What's your crush's class?</font><br> <br>
<input type="radio" name="class_crush" value="Frosh"/> <font size= 1 face="verdana">Frosh/First Year</font><br>
<input type="radio" name="class_crush" value="Sophomore"/> <font size= 1 face="verdana">Sophomore</font><br>
<input type="radio" name="class_crush" value="Junior"/> <font size= 1 face="verdana">Junior</font><br>
<input type="radio" name="class_crush" value="Senior"/> <font size= 1 face="verdana">Senior</font><br><br>


<font size= 2 face="verdana">What do you consider your crush's fashion taste? </font><br> <br>
<input type="radio" name="fashion" value="Fashionable"/> <font size= 1 face="verdana">Fashionable</font><br>
<input type="radio" name="fashion" value="Distinct style"/> <font size= 1 face="verdana">Distinct style (not necessarily fashionable, but effort shows)</font><br>
<input type="radio" name="fashion" value="Athletic"/> <font size= 1 face="verdana">Athletic</font><br>
<input type="radio" name="fashion" value="Too comfortable"/> <font size= 1 face="verdana">Too comfortable</font><br>
<input type="radio" name="fashion" value="Slob"/> <font size= 1 face="verdana">Slob (Poor hygiene)</font><br><br>


<font size= 2 face="verdana">What is your crush's personality type? </font><br> <br>
<input type="radio" name="personality" value="More extroverted"/> <font size= 1 face="verdana">More extroverted</font><br>
<input type="radio" name="personality" value="More introverted"/> <font size= 1 face="verdana">More introverted</font> <br>
<input type="radio" name="personality" value="Ambivert"/> <font size= 1 face="verdana">Ambivert</font><br><br>

<font size= 2 face="verdana">Does your crush like going to any parties in the 5C's? </font><br> <br>
<input type="radio" name="party" value="Yes!"/><font size= 1 face="verdana">  Yes!</font><br>
<input type="radio" name="party" value="Occasionally, yes."/> <font size= 1 face="verdana">Occasionally, yes.</font><br>
<input type="radio" name="party" value="Not really."/> <font size= 1 face="verdana">Not really.</font> <br>

</fieldset>


<div style="text-align:center">
<a href="#top"> <font size= 2 face="verdana"> Return to top</font></a>
</div>

 <font size= 4 face="verdana">&#10114; </font>
<input type="submit" value="CALCULATE OUR COMPATIBILITY SCORE!"/>

</form>
</body>
</html>