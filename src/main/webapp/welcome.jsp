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
</head>

<body background="/resources/images/map.jpg">

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

                        <li class="nav-item">
                            <a class="nav-link" href="articles.jsp">Articles</a>
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

        <div class="jumbotron">
            <h1 class="display-6">Welcome ${pageContext.request.userPrincipal.name} </h1>
            <p class="lead"> All need you need to know about the Distance, Origins and Environmental Costs of your
                favourite groceries</p>
                
            <br>

            <!-- <div class="form-group has-search">
                <span class="fa fa-search form-control-feedback"></span>
                <input type="text" class="form-control" placeholder="Search Food">
            </div> -->
            
           <div class="row">
                <div class="col">
                    <div class="card">
                        <div class="card-body text-center">
                            <a href="fruit.jsp" class="card-link">Fruit</a>
                            <!--<h5 class="card-title">Apples</h5>-->                           
						    <p class="card-text"></p>
                            <img src="/resources/images/fruit.png" alt="Fruits" style="width:30%; height:45%">
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card">
                        <div class="card-body text-center">
                            <a href="veg.jsp" class="card-link">Vegetables</a>
                            <p class="card-text"></p>
                            <img src="/resources/images/veg.png" alt="Veggies" style="width:39%; height:60%">
                        </div>
                    </div>
                </div>
            </div>

	

            <div class="row mt-sm-4 mt-md-0">
                <div class="col-sm-12 col-md-8 text-sm-center text-md-left">
                    <br>
                    <h3></h3>
                    <p class="lead"></p>
                    <p> </p>
                    <p> </p>
                </div>
            </div>

				<!-- <div class="col">
                    <div class="card">
                        <div class="card-body text-center">
                            <h5 class="card-title">Fair Trade & Origins</h5>
                            <p class="card-text"></p>
                            <a href="#" class="card-link">Study on Fair Trade in Africa</a>
                        </div>
                    </div>
                </div> -->



        </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
 		<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
        <script src="/js/jquery.min.js"></script>
        <script src="/js/popper.min.js"></script>
        <script src="/js/bootstrap.min.js"></script>
</body>

</html>