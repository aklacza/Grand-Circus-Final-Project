<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

String fname = request.getParameter("fname");
String lname = request.getParameter("lname");
String email = request.getParameter("emailAddress");
String address = request.getParameter("address");
String city = request.getParameter("city");
String state = request.getParameter("state");
String zipcode = request.getParameter("zip");
String subject = request.getParameter("boatType");
String message = request.getParameter("profile");
Class.forName("com.mysql.jdbc.Driver");

Connection con = DriverManager.getConnection("jdbc:mysql://boatsharedb.caz3pvhlcosd.us-west-2.rds.amazonaws.com", "boatadmin", "aBBazaBBa!");

Statement st=con.createStatement();

//int result=st.executeUpdate("INSERT INTO boathosts(fname, lname, emailAddress, address, city, state, zip, boatType, profile) "VALUES("+fname+",'"+lname+"','"+email+"','"+address+"','"+city+"','"+state+"','"+zip+"','"+boatType+"','"+profile+"')");
%>
<h1>Success! You've been added to our database, please use your username and login for next time!</h1>

</body>
</html>