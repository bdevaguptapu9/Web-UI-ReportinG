<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>user reg</title>
</head>
<body>

 <%      
 

	    try {
	        Class.forName ("oracle.jdbc.OracleDriver");
	    } catch (ClassNotFoundException e) {
	        e.printStackTrace();
	    }
	
 
 
 
     String first = request.getParameter("first");
      String last = request.getParameter("last");
       String email = request.getParameter("email");
      String uname = request.getParameter("uname");
       String pword = request.getParameter("pword");
   
      
     java.sql.Connection con = DriverManager.getConnection("jdbc:oracle:thin:@MININT-FFCGO3D.na.aecomnet.com:1521:XE","system","helloworld"); 
     Statement st = con.createStatement();
     ResultSet rs;
     int i = st.executeUpdate("INSERT INTO loser" + " VALUES ('"+first+"','"+last+"','"+email+"','"+uname+"','"+pword+"')");

       out.println("Congratulations Your are Registered");
       
   %>    
       <br>
  <p>Go to home and </p>
  <form id="myform4" action="index.jsp" method="post">
    <input type="submit" value="Sign In " >
</form>

  </body>
</html>