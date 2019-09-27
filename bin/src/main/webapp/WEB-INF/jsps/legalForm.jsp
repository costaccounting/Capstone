<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Select Legal Form</title>
<link rel="stylesheet" href="/css/style1.css">
</head>
<body>

<div class="topnav">
  <img src="/img/legal.jpg" id="logo" />
  <p style="float: left; font-size: 1.5em;" >&nbsp;&nbsp;Legal FD</p>	
  <form action="/legalDocumentForm">
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
  
  <c:url var="payment" value="/payment"/>
  <a href="${payment }">Payment</a>
  
</div>
<br>
<h2>Select Legal Forms</h2>
<hr>

<div>
<fieldset>

  <div>
  <form action="/legalDocumentFormMulti">
 	<div>
 	<table>
	 	<tr>
		    <th><input type="radio" name="legalFormType" value="Divorce (Simple/Joint)" checked></th>
		    <th><label>Divorce (Simple/Joint)</label></th>
	  		<th>CAD.$60</th>
	  	</tr>
  		<tr>
  			<td><input type="checkbox" name="legalForm" value="Form 8A-Application15" ></td>
  			<td> Form 8A-Application</td>
  			<td>CAD.$15</td>
  		</tr>
  		 <tr>
  			<td><input type="checkbox" name="legalForm" value="Form 10A-Application15" ></td>
  			<td> Form 10A-Application</td>
  			<td>CAD.$15</td>
  		</tr>
  		<tr>
  			<td><input type="checkbox" name="legalForm" value="Form 6B-Application15" ></td>
  			<td> Form 6B-Application</td>
  			<td>CAD.$15</td>
  		</tr>
  		<tr>
  			<td><input type="checkbox" name="legalForm" value="Form 36-Application15" ></td>
  			<td> Form 36-Application</td>
  			<td>CAD.$15</td>
  		</tr>
 	</table>
  
	  <input type="submit" value="Request Forms">
	  
	
</fieldset>
</div>
<br>
<!-- ************************************************************************************************************ -->


<div>
<fieldset>

  <div>
 
 	<table>
	 	<tr>
		    <th><input type="radio" name="legalFormType" value="Divorce Application (General)" ></th>
		    <th><label>Divorce Application (General)</label></th>
	  		<th>CAD.$60</th>
	  	</tr>
  		<tr>
  			<td><input type="checkbox" name="legalForm" value="Form 8A-Application15" ></td>
  			<td> Form 8A-Application</td>
  			<td>CAD.$15</td>
  		</tr>
  		 <tr>
  			<td><input type="checkbox" name="legalForm" value="Form 10A-Application15" ></td>
  			<td> Form 10A-Application</td>
  			<td>CAD.$15</td>
  		</tr>
  		<tr>
  			<td><input type="checkbox" name="legalForm" value="Form 6B-Application15" ></td>
  			<td> Form 6B-Application</td>
  			<td>CAD.$15</td>
  		</tr>
  		<tr>
  			<td><input type="checkbox" name="legalForm" value="Form 36-Application15" ></td>
  			<td> Form 36-Application</td>
  			<td>CAD.$15</td>
  		</tr>
 	</table>
  
	  <input type="submit" value="Request Forms">
	 
	
</fieldset>
</div>
<br>
<!-- ************************************************************************************************************ -->

<div>
<fieldset>

  <div>
  
 	<table>
	 	<tr>
		    <th><input type="radio" name="legalFormType" value="Child Custody Application" ></th>
		    <th><label>Child Custody Application</label></th>
	  		<th>CAD.$60</th>
	  	</tr>
  		<tr>
  			<td><input type="checkbox" name="legalForm" value="Form 8A-Application15" ></td>
  			<td> Form 8A-Application</td>
  			<td>CAD.$15</td>
  		</tr>
  		 <tr>
  			<td><input type="checkbox" name="legalForm" value="Form 10A-Application15" ></td>
  			<td> Form 10A-Application</td>
  			<td>CAD.$15</td>
  		</tr>
  		<tr>
  			<td><input type="checkbox" name="legalForm" value="Form 6B-Application15" ></td>
  			<td> Form 6B-Application</td>
  			<td>CAD.$15</td>
  		</tr>
  		<tr>
  			<td><input type="checkbox" name="legalForm" value="Form 36-Application15" ></td>
  			<td> Form 36-Application</td>
  			<td>CAD.$15</td>
  		</tr>
 	</table>
  
	  <input type="submit" value="Request Forms">
	  
	
</fieldset>

</div>
<input type="hidden" name ="userNameStore" value="${userNameStore}">
	 
</form>
</div>
<br>
<!-- ************************************************************************************************************ -->


<br>
<br>
<br>

</body>
<br>
<br>
<br>
<footer class="footer">
  <p style="float: left">LegalFD &copy; 2019</p>
  <p style="float: right"><a href="/WEB-INF//jsps/Register.jsp">Chat Box</a></p>
</footer>

</html>