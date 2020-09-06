<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Spring Boot</title>
	
</head>
<body style="background-color:powderblue;">

	<div align="center">
	<h1 style="color:blue">Welcome to Calculator Page</h1>
	<form:form action="calculator" method="post" modelAttribute="operation">
	
		<form:label path="a">First Value : </form:label>
		<form:input path="a"/><br><br>
		
		+ <form:radiobutton path="op" value="+"/>
		- <form:radiobutton path="op" value="-"/>
		/ <form:radiobutton path="op" value="/"/>
		* <form:radiobutton path="op" value="*"/>
		%<form:radiobutton path="op" value="%"/><br><br>
		
		<form:label path="b">Second Value :  </form:label>
		<form:input path="b"/><br><br>
		
		<form:button>Calculate</form:button>
		
	</form:form>
	</div>
	
</body>
</html>