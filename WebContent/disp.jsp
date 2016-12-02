<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>weblinks</title>
</head>
<body>
<p>Your Web Links: </p>
<% 
String driver = "oracle.jdbc.driver.OracleDriver";
String dbURL = "jdbc:oracle:thin:@MININT-FFCGO3D.na.aecomnet.com:1521:XE";
String dbuser = "system";
String dbpassword = "helloworld";
Connection theConnection = null;
PreparedStatement theStatement = null;

    Class.forName(driver);
    theConnection=DriverManager.getConnection(dbURL,dbuser,dbpassword);  
    theStatement = theConnection.prepareStatement("select * from weblinks");
    ResultSet theResult = theStatement.executeQuery();

   
%>

<TABLE BORDER="1">
            <TR>
                <TH>LINKS</TH>
            </TR>
            <% while(theResult.next()){ %>
            <TR>
                <TD> <%= theResult.getString(1) %></td>
               
            </TR>
            <% } %>
        </TABLE>
    </BODY>
</HTML>