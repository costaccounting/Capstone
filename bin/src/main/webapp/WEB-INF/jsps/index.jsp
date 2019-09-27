<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
    
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp"
    crossorigin="anonymous">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
    crossorigin="anonymous">
  <link rel="stylesheet" href="css/style.css">
  <title>Main Page - Legal FD</title>
</head>


<body data-spy="scroll" data-target="#main-nav" id="home">
  <nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top" id="main-nav">
    <div class="container">
    <c:url var = "url1" value = "/"></c:url>
      <a href="${url1 }" class="navbar-brand">LegalFD</a>
      <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
          	<c:url var = "url" value = "/register"></c:url>
            <a href= "${url}" class="nav-link">Sign Up</a>
          </li>
          <li class="nav-item">
            <a href="#explore-head-section" class="nav-link">About</a>
          </li>
         
        </ul>
      </div>
    </div>
  </nav>

  <!-- HOME SECTION -->
  <header id="home-section">
    <div class="dark-overlay">
      <div class="home-inner container">
        <div class="row">
         <!-- 
          <div class="col-lg-8 d-none d-lg-block">
            <h1 class="display-4">
              <strong></strong> 
              <strong></strong>
            </h1>
            <div class="d-flex">
              <div class="p-4 align-self-start">
                <i class="fas fa-check fa-2x"></i>
              </div>
              <div class="p-4 align-self-end">
                Lorem ipsum dolor sit, amet consectetur adipisicing elit. Sed, tempore iusto in minima facere dolorem!
              </div>
            </div>

            <div class="d-flex">
              <div class="p-4 align-self-start">
                <i class="fas fa-check fa-2x"></i>
              </div>
              <div class="p-4 align-self-end">
                Lorem ipsum dolor sit, amet consectetur adipisicing elit. Sed, tempore iusto in minima facere dolorem!
              </div>
            </div>

            <div class="d-flex">
              <div class="p-4 align-self-start">
                <i class="fas fa-check fa-2x"></i>
              </div>
              <div class="p-4 align-self-end">
                Lorem ipsum dolor sit, amet consectetur adipisicing elit. Sed, tempore iusto in minima facere dolorem!
              </div>
            </div>
          </div>
 -->
          <div class="col-lg-4">
            <div class="card bg-primary text-center card-form">
              <div class="card-body">
                <h3>Sign In</h3>
                <br>
                <form action="/login">
                  
                  <div class="form-group">
                    <input type="email" name="email" placeholder="Sam@Law.com" class="form-control form-control-lg" placeholder="Email">
                  </div>
                  <div class="form-group">
                    <input type="password" name="password" placeholder="Sam123" class="form-control form-control-lg" placeholder="Password">
                  </div>
                  
                  <input type="submit" value="Sign In" class="btn btn-outline-light btn-block">
                <br><br>
                <p align="center" style="color:red; font-size: 1.5em;">${loginMess}</p>
                <p align="center" style="color:green; font-size: 1.5em;">${logOutMess}</p>
                
	  <br><br>
                </form>
                
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </header>

  


  <script src="http://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
    crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
    crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
    crossorigin="anonymous"></script>

  <script>
    // Get the current year for the copyright
    $('#year').text(new Date().getFullYear());

    // Init Scrollspy
    $('body').scrollspy({ target: '#main-nav' });

    // Smooth Scrolling
    $("#main-nav a").on('click', function (event) {
      if (this.hash !== "") {
        event.preventDefault();

        const hash = this.hash;

        $('html, body').animate({
          scrollTop: $(hash).offset().top
        }, 800, function () {

          window.location.hash = hash;
        });
      }
    });
  </script>
</body>

<!-- 
<body>
<!-- *** This Page is Main Page (1st) *** --


<div>
<!-- *** This is LOGIN Section *** --

	<form action="/login">
	  
	  Email:<br>
	  <input type="text" name="email" placeholder="Sam@Wilson.com">
	  <br> 
	  
	  Password:<br>
	  <input type="password" name="password" placeholder="Sam123">
	  <br>
	  
	  <input type="submit" value="Login">
	  <br>
	  
	  <p align="center" style="color:red; font-size: 1.5em;">${loginMess}</p>
	  <br><br>
	  
  	</form> 
<!-- *** This is LOGIN Section *** --

<!-- *** This is REGISTER Section *** --
 	 <c:url var = "url" value = "/register"></c:url>
	 <form:form action = "${url}" method="get" modelAttribute="registerUser">
			E-Mail: <form:input path="email" /><br>
			First name: <form:input path="firstName" /><br>
			Last name: <form:input path="lastName" /><br>
			Password: <form:input path="password" /><br>
			
		<input type="submit" value="Register Account" />
	
		<p align="center" style="color:red; font-size: 1.5em;">${message}</p>
		<p align="center" style="color:green; font-size: 1.5em;">${successMessage}</p>
		
			<c:forEach var="e" items="${mess}">
			<p align="center" style="color:red; font-size: 1.5em;">${e}</p>	
			</c:forEach>	
	  </form:form>
 
	
<!-- *** This is REGISTER Section *** --
</div>

</body>
 -->
</html>