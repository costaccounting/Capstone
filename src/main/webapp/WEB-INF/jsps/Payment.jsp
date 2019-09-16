<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>

<div class="topnav">
  <img src="/images/legal.jpg" id="logo" />
  <p style="float: left; font-size: 1.5em;" >&nbsp;&nbsp;Legal FD</p>	
  
  <form action="/SelectService">
  	<input type="submit" value="Home">
  	<input type="hidden" name ="userNameStore" value="${userNameStore}">
	
  </form>
  <!-- 
  <c:url var="selectService" value="/SelectService"/>
  <a href="${selectService }">Home</a>
   -->
   
  <a href="#news">Services</a>
  <a href="#contact">Notification</a>
  <a href="#about">About</a>
</div>
<br>
<h2>Payment</h2>
<hr>
<div style="float: left;" id="payment">

<form action="/paymentAmount">
<table>
	<tr><th>Payment Method</th></tr>
	<tr>
	<td><input type="radio" name="payAmount" value="paypal"></td><td>PayPal</td>
	</tr>
	<tr>
	<td><input type="radio" name="payAmount" value="debit"></td><td>Debit Card</td>
	</tr>
	<tr>
	<td><input type="radio" name="payAmount" value="credit"></td><td>Credit Card</td>
	</tr>
</table>
<input type="submit" value="Pay Amount">
<input type="hidden" name ="userNameStore" value="${userNameStore}">
	<p align="center" style="color:green; font-size: 1.5em;"> ${messagePaid}</p>
</form>

<div>

<div style="float: right; padding-top: 2px;" >
<table>
<%int amountPay = 0; %>
<tr>
<th>Document Type</th>
<th>Form Name</th>
<th>Amount $CAD</th>
</tr>
<c:forEach var="pay" items ="${payment}">
<tr>

	<td>${pay.documentType}</td>
	<td>${pay.formType }</td>
	<td>CAD.$ ${pay.documentAmount }</td>
	<td><a href="<c:url value="/remove/${pay.id}/${userNameStore }"/>">Remove Item</a></td>
	
</tr>

</c:forEach>
<tr>
<th>Total Amount  </th><th> </th><th>CAD.$ ${payTotalAmount }</th>
<tr>
</table>
</div>

<br>
<br>
<br>
<br>
<br>
<br>
<a  style="float: left;" href="#home">Pay</a>
</div>
</div>

</body>
<footer class="footer">
  <p style="float: left">LegalFD &copy; 2019</p>
  <p style="float: right"><a href="/WEB-INF//jsps/Register.jsp">Chat Box</a></p>
</footer>

</html>