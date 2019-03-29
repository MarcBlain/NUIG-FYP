<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
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
<meta charset="ISO-8859-1">
<title>Red Delicious</title>

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
 	<h4></h4>
 	
 		<div class="row">
             <div class="col-sm-12 col-md-4">
                    <div class="card">
                       <div class="card-body text-center">
                            <a href="/apples.jsp" class="card-link">Back to Apples</a>
						    <p class="card-text"></p>
                            <img src="/resources/images/reddelicious.png" alt="RedDeliciousApple" style="width:21%; height:45%">
                       </div>
             	 </div>
       		 </div>
		<div class="col-sm-12 col-md-4">
             <div class="card">
                  <div class="card-body text-center">
                        <a href="https://aircargoworld.com/allposts/air-cargo-emissions-forecasted-to-increase/" class="card-link">Emissions</a>
						<p class="card-text"></p>
                        <h4>Global warming costs of buying foreign fruit</h4>
                   </div>
              </div>
        </div>
    
        
        <div class="col-sm-12 col-md-4">
             <div class="card">
                  <div class="card-body text-center">
                        <a href="https://globalnews.ca/news/5075635/pesticides-on-fruits-and-vegetables/" class="card-link">Pesticides</a>
						<p class="card-text"></p>
                        <h4>What chemicals are in your apples</h4>
                   </div>
              </div>       
        </div>
        </div>
        
        <br>
        
        <div class="row">
 		<div class="col">
			<iframe src="https://www.google.com/maps/d/embed?mid=1HQUHC9RnRuwQiPAhiPPxLnRRcgrRR4M-" width="600px" height="400"></iframe>
		</div> 
		<div style="width:500px;">
		<h2>So you think your food is local?</h2>
  <p>Here are the results</p>            
  <table class="table table-striped" style="width:75%">
    <thead>
      <tr>
        <th>Origin</th>
        <th>Transport</th>
        <th>Distance</th>
        <th>Emissions</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Australia</td>
        <td>Air Freight</td>
        <td>17238km</td>        
        <td>3857 kgCO2</td>
        
      </tr>
      <tr>
        <td>Chile</td>
        <td>Air Freight</td>
        <td>11463km</td>        
        <td>2565 kgCO2</td>
      </tr>
      <tr>
        <td>Spain</td>
        <td>Boat</td>
        <td>1451km</td>       
        <td>700kgCO2</td>
      </tr>
    </tbody>
  </table>
		</div>
	</div>



  
</div>

</body>
</html>