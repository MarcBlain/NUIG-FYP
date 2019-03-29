<!DOCTYPE html>
<html class="no-js" lang="en">

<head>
    <title>FoodMiles</title>
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway:400,800">
    <link rel='stylesheet' href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="/resources/css/bootstrap.css">
    <link rel="stylesheet" href="/resources/css/styles.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<!--  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css"> -->
  	 
</head>

<body>

    <div class="container">
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
            <a class="navbar-brand" href="welcome.jsp" style="max-width: 30%;">
                <img src="/resources/images/home.png" href="index.html" alt="FoodMiles" style: height="50px" , width="50px" />
                FoodMiles
            </a>
            
            <!--Add here -->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent">
                <span class="navbar-toggler-icon"></span>
            </button>
            <!--Add here -->

            <div class="collapse navbar-collapse" id="navbarSupportedContent"> </div>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="addProduct.jsp">Add Product</a>
                        </li>

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" data-toggle="dropdown">
                                Categories
                            </a>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="#">Fruit</a>
                                <a class="dropdown-item" href="#">Veg</a>
                                
                            </div>
                        </li>
                        <li class="nav-item">
                        <c:if test="${pageContext.request.userPrincipal.name != null}">
        					<form id="logoutForm" method="POST" action="${contextPath}/logout">
           					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
       	 					</form>
        					<a class="nav-link" onclick="document.forms['logoutForm'].submit()">Logout</a></h4>
    					</c:if>
                        </li>

                    </ul>
                </div>
        </nav>
        
        <div class="container">
    	<c:if test="${pageContext.request.userPrincipal.name != null}">
        	<form id="logoutForm" method="POST" action="${contextPath}/logout">
            	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
       	 	</form>

        	<h2>  <a onclick="document.forms['logoutForm'].submit()"></a></h2>
    		</c:if>
 	</div>


<div class="row">
                <div class="col-sm-12 col-md-4">
                    <div class="card">
                        <div class="card-body text-center">
                            <a href="/carrots.jsp" class="card-link">Carrots</a>
                            <!--<h5 class="card-title">Apples</h5>-->                           
						    <p class="card-text"></p>
                            <img src="/resources/images/carrots.png" alt="carrots" style="width:54%; height:45%">
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card">
                        <div class="card-body text-center">
                            <a href="/broccoli.jsp" class="card-link">Broccoli</a>
                            <p class="card-text"></p>
                            <img src="/resources/images/broccoli.png" alt="broccoli" style="width:30%; height:60%">
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card">
                        <div class="card-body text-center">
                            <a href="/onions.jsp" class="card-link">Onions</a>
                            <p class="card-text"></p>
                            <img src="/resources/images/onions.png" alt="onions" style="width:44%; height:45%">
                        </div>
                    </div>
                </div>
            </div>
            
            <br>

			<div class="row">
                <div class="col-sm-12 col-md-4">
                    <div class="card">
                        <div class="card-body text-center">
                            <a href="watermelon.jsp" class="card-link">Parsnips</a>
						    <p class="card-text"></p>
                            <img src="/resources/images/parsnips.png" alt="parsnips" style="width:65%; height:45%">
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card">
                        <div class="card-body text-center">
                            <a href="peppers.jsp" class="card-link">Peppers</a>
                            <p class="card-text"></p>
                            <img src="/resources/images/peppers.png" alt="peppers" style="width:40%; height:60%">
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card">
                        <div class="card-body text-center">
                            <a href="/mushrooms.jsp" class="card-link">Mushrooms</a>
                            <p class="card-text"></p>
                            <img src="/resources/images/mushrooms.png" alt="mushrooms" style="width:50%; height:45%">
                        </div>
                    </div>
                </div>
            </div>

 		
</body>
</html>