<!-- <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script> -->
<!------ Include the above in your HEAD tag ---------->

<head>
  <title>Add Product</title>
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />

  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway:400,800">
    <link rel='stylesheet' href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="/resources/css/bootstrap.css">
    <link rel="stylesheet" href="/resources/css/styles.css">

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

		<br>

        <!-- Text input-->
        <div class="form-group">
          <label class="col-md-4 control-label" for="product_name">PRODUCT NAME</label>
          <div class="col-md-4">
            <input id="product_name" name="product_name" placeholder="Apple" class="form-control input-md" required=""
              type="text">

          </div>
        </div>

        <!-- DROPDOWN -->
        <div class="form-group">
          <label for="tech" class="col-sm-3 control-label">Product Category</label>
          <div class="col-sm-3">
         <select class="form-control">
        
        <option value="">Fruit</option>
        <option value="texnolog2">Veg</option>
         </select>
          </div>
        </div>

        <!-- DROPDOWN -->
        <div class="form-group">
          <label for="tech" class="col-sm-3 control-label">Product Type</label>
          <div class="col-sm-3">
         <select class="form-control">
        
        <option value="">Apple</option>
        <option value="texnolog2">Orange</option>
        <option value="texnolog2">Banana</option>
         </select>
          </div>
        </div>

        <!-- Select Basic -->
        <div class="form-group">
          <label class="col-md-4 control-label" for="product_categorie">PRODUCT Origin</label>
          <div class="col-md-4">
            <input id="product_categorie" name="product_categorie" placeholder="Australia" class="form-control input-md"
              required="" type="text">

          </div>
        </div>
        <div class="form-group">
  		<label class="col-md-4 control-label"  for="filebutton">Add Image</label>
 		 <div class="col-md-4">
   		 <input id="filebutton" name="filebutton" class="input-file" type="file">
  		</div>
		</div>


        <!-- Button -->
        <div class="form-group">
          <label class="col-md-4 control-label" for="singlebutton"></label>
          <div class="col-md-4">
            <button id="singlebutton" name="singlebutton" class="btn btn-primary">Submit</button>
          </div>
        </div>
  </div>
  
</body>
