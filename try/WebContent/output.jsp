<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:set var="score" value="75"></c:set>
<c:choose>

	<c:when test="${score > 100 }">Score is greater than 100</c:when>
	<c:otherwise>Score is less than 100</c:otherwise>



</c:choose>

	<h1>I am writing EL expression ${6 >= 6 ? "Welcome" : "Good bye"}</h1>
	<h2>My name is ${name eq "Marcin Nienajadlo"}</h2>
	<h2>The student name is ${student.name}</h2>
	<h2>His age is ${student.age}</h2>
	<h3>He lives in ${student.location}</h3>
	<h3><c:out value="Marcin"></c:out></h3>
	<c:set var ="i" value="${10*2}"></c:set>
	<p>Before: <c:out value="${i}"></c:out></p>
	<c:remove var="i"/>
	<p>After: <c:out value="${i}"></c:out></p>
	<ul>
		<li><a href="employee">Welcome Page</a></li>
		<li><a href="spring-handler-index.jsp">Spring Handler Mapping Examples</a></li>
		<li><a href="image-view">Image Download Examples</a></li>
	</ul>
	
		<table border="1">
				<tr>
					<th>Name</th>
					<th>Age</th>
					<th>Location</th>
				</tr>
				<c:forEach items="${list}" var ="student">
				<tr>
					<td>${student.name}</td>
					<td>${student.age}</td>
					<td>${student.location}</td>
				</tr>
				</c:forEach>		

		</table>
	
	
	
	<h1><a href="<c:url value ="/index.html"></c:url>">Click me</a></h1>
	<h1><a href="<c:url value ="/test.html"></c:url>">Click me here too</a></h1>
	
	<c:forEach items="${countries}" var ="country">
		<p>Country = ${country}</p>
	</c:forEach>
	<c:forEach items="${list}" var ="student">
		<p>Student Name = ${student.name}</p>
		<p>Student Age = ${student.age}</p>
		<p>Student Location = ${student.location}</p>
		<hr/>
	</c:forEach>
	
	<c:out value="${fn:toLowerCase('M N')}"></c:out>
	
	
	
	
	
	
	
</body>
</html>