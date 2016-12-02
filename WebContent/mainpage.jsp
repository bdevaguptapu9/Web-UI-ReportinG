<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>   
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%   
String username = request.getParameter("username");
String password = request.getParameter("password");
String driver = "oracle.jdbc.driver.OracleDriver";
String dbURL = "jdbc:oracle:thin:@MININT-FFCGO3D.na.aecomnet.com:1521:XE";
String dbuser = "system";
String dbpassword = "helloworld";
Connection theConnection = null;
PreparedStatement theStatement = null;


    try{  
        Class.forName(driver);
        theConnection=DriverManager.getConnection(dbURL,dbuser,dbpassword);  
        theStatement = theConnection.prepareStatement("select * from loser where uname=? and pword=?");
        theStatement.setString(1,request.getParameter("username"));
        theStatement.setString(2,request.getParameter("password"));
        ResultSet theResult = theStatement.executeQuery();

        if(theResult.next()){
         out.println("Login Success GO!");
         response.sendRedirect("repopage.jsp");
       }else {
           out.println("Login Failed Go Back");
           response.sendRedirect("index.jsp");
        }
    }
        catch(Exception e){
           out.println("Exception occured! "+e.getMessage()+" "+e.getStackTrace());
        }  
%>
<a></a>
</body>
</html>