<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% out.print("Today is:"+java.util.Calendar.getInstance().getTime()); %>
<form>
 
<%   
  
String name=request.getParameter("uname");  
out.print("Welcome "+name);  
  
session.setAttribute("user",name);  

%>
<a href="second.jsp">second</a>
</form> 
</body>
</html>