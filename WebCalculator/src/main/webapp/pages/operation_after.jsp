<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body style="background-color:powderblue;">

	<div align="center">
		<h1 style="color:blue">Calculation Succeed</h1>
		<span>First Value : </span><span>${operation.a}</span><br><br>
		<span>Operation : </span><span>${operation.op}</span><br><br>
		<span>Second Value : </span><span>${operation.b}</span><br><br>
		<span>Result : </span><span>${operation.result}</span><br><br><br><br>
		<a href="calculator">Back To Calculation Page</a><br>
	</div>
	
</body>
</html>