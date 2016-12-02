<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign In</title>
<style type="text/css">

    body {
      background-image:url('Beautiful-Taj-Mahal-Backgrounds.jpg');
      width: 100%;
      height: 100%;
       background-size: cover;
    }
       
</style>
</head>


<body>
 <p>Welcome to WebUI reporting Site!</p>
 <form action ="mainpage.jsp" method = "post">
  
    User Name:<br>
    <input type="text" name="username"><br>
    Password:<br> <input type="password" name="password"> <br><br>
    <input type="submit" value="Sign In"> 
    
  
</form> 
 
<p>Not a Member?</p>
<form id="myform2" action="SignUp.jsp" method="post">
    <input type="submit" value="Sign up" >
</form>

</body>
</html>