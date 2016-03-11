<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c" %>
     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List of captains</title>
</head>
<body>

Captain list:

<table border=1>
<tr>
<td> Name </td>
<td> Email </td>
<td> Address </td>
<td> City </td>
<td> State </td>
<td> Zip </td>
<td> Guest Capacity </td>
<td> Type </td>
<td> Profile </td>
<td> Interests </td>
</tr>
<c:forEach var = "myvar" items="${results}">
<tr>
<td> ${myvar.getFname()} ${myvar.getLname()} </td>
<td> ${myvar.getEmail()} </td>
<td> ${myvar.getAddress()} </td>
<td> ${myvar.getCity()} </td>
<td> ${myvar.getState()} </td>
<td> ${myvar.getZip()} </td>
<td> ${myvar.getCapacity()} </td>
<td> ${myvar.getType()} </td>
<td> ${myvar.getProfile()} </td>
<td> ${myvar.getInterests()} </td>
</tr>
</c:forEach>
</table>


</body>
</html>