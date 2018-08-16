<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<%@ page isELIgnored="false"%>
<meta charset="ISO-8859-1">
<title>Success For Admission Form</title>
</head>
<body>
	<h1>${ headerMessage }</h1>
	
	<h3>Congratulations!! The Engineering college has processed your application form successfully.</h3>
	
	<h2>Details submitted:</h2>
	
	<table>
		<tr>
			<td>Student Name :</td>
			<td>${student1.studentName}</td>
		</tr>
		<tr>
			<td>Student Hobby :</td>
			<td>${student1.studentHobby}</td>
		</tr>
		<tr>
			<td>Student Mobile :</td>
			<td>${student1.studentMobile}</td>
		</tr>
		<tr>
			<td>Student DOB :</td>
			<td>${student1.studentDOB}</td>
		</tr>
		<tr>
			<td>Student Skills :</td>
			<td>${student1.studentSkills}</td>
		</tr>
		<tr>
			<td>Student Address:</td>
			<td>country: ${student1.studentAddress.country }
				city: ${student1.studentAddress.city } 
				street: ${student1.studentAddress.street }
				pincode: ${student1.studentAddress.pincode }
			</td>
		</tr>
	</table>
</body>
</html>