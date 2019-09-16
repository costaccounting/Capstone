<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
<link rel="stylesheet" href="/css/style1.css">
</head>
<body>
<!-- 
<div class="topnav">
  <img src="/img/legal.jpg" id="logo" />
  <p style="float: left; font-size: 1.5em;" >&nbsp;&nbsp;Legal FD</p>	
 
 <!-- 
 <c:url var="selectService" value="/SelectService"/>
  <a href="${selectService}">Home</a>
   -->
  <a href="#news">Services</a>
  <a href="#contact">Notification</a>
  <a href="#about">About</a>
  
  <!-- 
  <c:url var="payment" value="/payment"/>
  <a href="${payment}">Payment</a>
   -->
   <form action="/payment" class="form-inline">
  	<input type="submit" value="Payment">
  	<input type="hidden" name ="email" value="${email}">
	
  </form>
   
  <br>
  <br>
  <br>
  <h2 style="float:right;">
		Hello, ${firstName}
	</h2>	
		<c:url var="logoutUrl" value="/logout"/>
		<br>
		<br>
		
		<form action="${logoutUrl}" method="post" class="form-inline">
		<input type="Submit" value="LogOut" id="logOut">
		
		</form>
</div>
<br>
<h2>Select Service</h2>
<hr>
<div>
<c:url var="LegalDoc" value="/LegalDoc"/>
<c:url var="LegalForm" value="/LegalForm"/>
  	
		<form action="${LegalDoc}" class="form-inline">
		<input type="hidden" name ="userNameStore" value="${userNameStore}">
	
		<input type="Submit" value="Legal Document">
		</form>
		
		<br><br>
		
		<form action="${LegalForm}" class="form-inline">
		<input type="hidden" name ="userNameStore" value="${userNameStore}">
	
		<input type="Submit" value="Legal Form">
		</form>
		<p align="center" style="color:green; font-size: 1.5em;">${Message}</p>

</div>

<footer class="footer">
  <p style="float: left">LegalFD &copy; 2019</p>
  <p style="float: right"><a href="/WEB-INF/jsps/Register.jsp">Chat Box</a></p>
</footer>
</body>
</html>