<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Here</title>
<link rel="stylesheet" href="/css/style.css">
</head>


<br>
<br>
<br>
<div class="topnav">
  <img src="images/legal.jpg" id="logo" />
  <p style="float: left; font-size: 1.5em;" >&nbsp;&nbsp;Legal FD</p>	
  <a href="WEB-INF/jsps/SelectService.jsp">Home</a>
  <a href="#about">About</a>
   <a href="#about">Contact Us</a>
</div>
<br>
<br>

<div align="left" style="float:left;padding:30px;margin-right:30px;width:32%;">

  <img src="/images/legal.jpg" alt="Company Images" width="400" height="500"/>
</div>

<div align="left" style="float:right;width:50%;padding-bottom:25px;margin-bottom:70px">
 
 
  <form action="/login">
	  UserName:<br>
	  <input type="text" name="userName" placeholder="Sam@Wilson.com" value="${emailValue}">
	  <br>
	  Password:<br>
	  <input type="password" name="password" placeholder="Sam123">
	  <br>
	  <input type="submit" value="Login">
	  <br>
	  <p align="center" style="color:red; font-size: 1.5em;">${loginMess}</p>
	  <br><br>
  </form> 
 

	<c:url var = "url" value = "/register"></c:url>
	<form:form action = "${url}" method="get" modelAttribute="register">
			User Name: <form:input path="userName" /><br>
			First name: <form:input path="firstName" /><br>
			Last name: <form:input path="lastName" /><br>
			E-Mail: <form:input path="email" /><br>
			Password: <form:input path="password" /><br>
			
			<input type="submit" value="Register Account" />
	
	<p align="center" style="color:red; font-size: 1.5em;">${message}</p>
	<p align="center" style="color:green; font-size: 1.5em;">${successMessage}</p>
	
<c:forEach var="e" items="${mess}">
	<p align="center" style="color:red; font-size: 1.5em;">${e}</p>	
	</c:forEach>	
	</form:form>
				
</div>

<div>

<p align="center" style="color:green; font-size: 1.5em;">${logOutMess}</p>
</div>

</body>
<br>
<br>
<br>
<br>
<br>
<br>

<footer class="footer">
  <p style="float: left">LegalFD &copy; 2019</p>
  <p style="float: right"><a href="/WEB-INF/jsps/Register.jsp">Chat Box</a></p>
</footer>

</html>