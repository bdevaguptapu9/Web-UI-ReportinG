<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>   
<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Screens</title>
</head>
<body>

<% 
	    try {
	        Class.forName ("oracle.jdbc.OracleDriver");
	    } catch (ClassNotFoundException e) {
	        e.printStackTrace();
	    }
	
 
     String links = request.getParameter("links");
  
      
     java.sql.Connection con = DriverManager.getConnection("jdbc:oracle:thin:@MININT-FFCGO3D.na.aecomnet.com:1521:XE","system","helloworld"); 
     Statement st = con.createStatement();
     ResultSet rs;
     int k = st.executeUpdate("INSERT INTO weblinks"  +  " VALUES ('"+links+"')");

       String penks = "http://api.page2images.com/directlink?p2i_url=" + links + "&p2i_key=71118e609e040668" ;
       out.println("This is the link to Screenshot:");
       out.println(penks);  
       
%>

<img id=demo src="<%=penks%>">

<form id="myform2" action="Email n signout.html" method="post">
    <input type="submit" value="Mail this" >
</form>
</body>
</html>