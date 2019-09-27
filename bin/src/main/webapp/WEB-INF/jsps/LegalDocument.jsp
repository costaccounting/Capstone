<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Legal Document</title>
<link rel="stylesheet" href="css/style1.css">
</head>
<body>

<div class="topnav">
  <img src="images/legal.jpg" id="logo" />
  <p style="float: left; font-size: 1.5em;" >&nbsp;&nbsp;Legal FD</p>	
  <!-- 
  <c:url var="selectService" value="/SelectService"/>
   -->
  <form action="/SelectService">
  	<input type="submit" value="Home">
  	<input type="hidden" name ="userNameStore" value="${userNameStore}">
	
  </form>
  <a href="#news">Services</a>
  <a href="#contact">Notification</a>
  <a href="#about">About</a>
  
  <c:url var="payment" value="/payment"/>
  <a href="${payment}">Payment</a>
</div>
<br>
<h2>Select the document</h2>
<hr>
<div id="documentSelection">


<form action="/legalDocumentForm">
<table>
	<tr>
		<td><input type="checkbox" name="legalDoc" value="factum50"/></td>  <td>Factums</td>  <td>CAD. $50</td>
	</tr>
	<tr>
		<td><input type="checkbox" name="legalDoc" value="bookOfAuthority85"/></td>  <td>Book of Authority</td>  <td>CAD. $85</td>
	</tr>
	
  </table>
  <input type="submit" value="Request Document">
  <input type="hidden" name ="userNameStore" value="${userNameStore}">
		
</form> 


</div>

<footer class="footer">
  <p style="float: left">LegalFD &copy; 2019</p>
  <p style="float: right"><a href="/WEB-INF/jsps/Register.jsp">Chat Box</a></p>
</footer>

</body>
</html>