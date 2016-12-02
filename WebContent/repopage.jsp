<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Repo Page</title>
</head>
<body>
<p>Welcome Bharat!</p> <br><br>
<p>Associated Email: bharat.devguptapu@gmail.com</p> <br>
<form action ="disp.jsp" method="get"><br>
 <input type="submit" value="Display Repos">
</form>
<p>Add a New Web Page...</p>
<form id="myform1" action="Meg.jsp" method="post">Enter Web Page here:<br><br>
    <input type="text" id="hey" name="links" ><br><br>
    <input type="submit" value="Add to Repo" >
</form>
</body>
</html>