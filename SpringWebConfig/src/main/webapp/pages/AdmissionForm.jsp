<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE html>
<html>
<head>
<%@ page isELIgnored="false"%>
<meta charset="ISO-8859-1">
<title>Admission Form</title>
</head>
<body>
	<h1>${headerMessage}</h1>

	<h1>Admission Form</h1>
	
	<form:errors path="student1.*"/>

	<form action="/SpringWebConfig/submitAdmissionForm.html" method="post">
		<table>
		<tr>
			<td>Student Name:</td><td><input type="text" name="studentName" /></td>
		</tr>
		<tr>
			<td>Student's Hobby:</td><td><input type="text" name="studentHobby" /></td>
		</tr>
		<tr>
			<td>Student's Mobile:</td><td><input type="text" name="studentMobile" /></td>
		</tr>
		<tr>
			<td>Student's DOB:</td><td><input type="text" name="studentDOB" /></td><td><span style="color:red">(*Should be in YYYY-MM-DD Format)</span></td>
		</tr>
		<tr>
			<td>Student's Skill Set:</td><td><select name="studentSkills" multiple>
													<option value="Java Core">Java Core</option>
													<option value="Spring Core">Spring Core</option>
													<option value="Dot Net">Dot Net</option>
													<option value="Hibernate">Hibernate</option>
													<option value="JDBC">JDBC</option>
													<option value="JMS">JMS</option>
										     </select></td>
		</tr>
		</table>
		<table>
		<tr>
			<td>Student's Address:</td>
		</tr>
		<tr>
			<td>country : <input type="text" name="studentAddress.country"/></td>
			<td>city : <input type="text" name="studentAddress.city"/></td>
			<td>street : <input type="text" name="studentAddress.street"/></td>
			<td>pincode : <input type="text" name="studentAddress.pincode"/></td>
		</tr>
		<tr>
			<td><input type="submit" value="Submit Information" /></td>
		</tr>

	</form>
</body>
</html>