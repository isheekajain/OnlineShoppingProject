<%@ page import="project.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%@include file="changeDetailsHeader.jsp" %>
<%@include file="footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Change Security Question</title>
</head>
<body>
<% 
String msg=request.getParameter("msg");
if("done".equals(msg))
{
%>
<h3 class="alert">Your security Question successfully changed !</h3>
<%} %>
<% 
if("wrong".equals(msg))
{
%>
<h3 class="alert">Your Password is wrong!</h3>
<%} %>
<form action="changeSecurityQuestionAction.jsp" method="post">
<h3>Select Your New Securtiy Question</h3>
 <select class="input-style" name="securityQuestion" required>
 <option value="In what city were you born?">In what city were you born?</option>
 <option value="What is the name of your favorite pet?">What is the name of your favorite pet?</option>
 <option value="What was your favorite food as a child?">What was your favorite food as a child?</option>
 <option value="What is your preferred musical genre?">What is your preferred musical genre?</option>
 </select>
 
 <hr>
 <h3>Enter Your New Answer</h3>
<input class="input-style" type="text" name="newAnswer" placeholder="Enter Your New Answer" required> 
<hr>

<h3>Enter Password (For Security)</h3>
<input class="input-style" type="password" name="password" placeholder="Enter Password" required>
<hr>
 <button class="button" type="submit">Change <i class='far fa-arrow-alt-circle-right'></i></button>
</form>
</body>
<br><br><br>
</html>