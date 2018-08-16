<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student - Login</title>
</head>
<body>
<h1><center>STUDENT LOGIN FOR ENGINEERING COURSES</center></h1>

<button name="register" style="width:100%;font:bold;font-size:20px">Register Here</button>
<br>
<br>
<fieldset>
<legend style="font-weight:bold;color:Brown;font-size:25px;">Student Login</legend>

<form action="/SpringWebConfig/SuccessLogin" method="post">
	<p>
		Student's Login: <input type="text" name="studentLoginId" style="margin-left:26px;" size="40"/><span style="color:red">(*Required)</span>
	</p>
	<p>
		Student's Password: <input type="password" name="studentPassword" size="40"/><span style="color:red">(*Required)</span>
	</p>
	<p><input type="checkbox" name="checkbox">Remember Me</p>
	<input type="reset" value="Reset"/>
	<input type="submit" value="Login"/>
	<p><a href="#">Forgot Password?</a></p>

</form>
</fieldset>
</body>
</html>