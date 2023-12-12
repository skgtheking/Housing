<jsp:useBean class="db.DBConnection" id="obj" ></jsp:useBean>
<%@page import="java.sql.ResultSet"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Fables">
    <meta name="author" content="Enterprise Development">
    <link rel="shortcut icon" href="assets/custom/images/shortcut.png">

    <title> Vandal Living</title>
    
    <!-- animate.css-->  
    <link href="assets/vendor/animate.css-master/animate.min.css" rel="stylesheet">
    <!-- Load Screen -->
    <link href="assets/vendor/loadscreen/css/spinkit.css" rel="stylesheet">
    <!-- GOOGLE FONT -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
    <!-- Font Awesome 5 -->
    <link href="assets/vendor/fontawesome/css/fontawesome-all.min.css" rel="stylesheet">
    <!-- Fables Icons -->
    <link href="assets/custom/css/fables-icons.css" rel="stylesheet"> 
    <!-- Bootstrap CSS --> 
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap/css/bootstrap-4-navbar.css" rel="stylesheet">
    <!-- portfolio filter gallery -->
    <link href="assets/vendor/portfolio-filter-gallery/portfolio-filter-gallery.css" rel="stylesheet">
    <!-- Video Background -->
    <link href="assets/vendor/video-background/video-background.css" rel="stylesheet"> 
    <!-- FANCY BOX -->
    <link href="assets/vendor/fancybox-master/jquery.fancybox.min.css" rel="stylesheet"> 
    <!-- RANGE SLIDER -->
    <link href="assets/vendor/range-slider/range-slider.css" rel="stylesheet">
    <!-- OWL CAROUSEL  --> 
    <link href="assets/vendor/owlcarousel/owl.carousel.min.css" rel="stylesheet">
    <link href="assets/vendor/owlcarousel/owl.theme.default.min.css" rel="stylesheet">
    <!-- FABLES CUSTOM CSS FILE -->
    <link href="assets/custom/css/custom.css" rel="stylesheet">
    <!-- FABLES CUSTOM CSS RESPONSIVE FILE -->
    <link href="assets/custom/css/custom-responsive.css" rel="stylesheet">
    
  
    
     
</head>


<body>

<div class="search-section">
    <a class="close-search" href="#"></a>
    <div class="d-flex justify-content-center align-items-center h-100">
        <form method="post" action="#" class="w-50">
            <div class="row">
                <div class="col-10">
                    <input type="search" value="" class="form-control palce bg-transparent border-0 search-input" placeholder="Search Here ..." /> 
                </div>
                <div class="col-2 mt-3">
                     <button type="submit" class="btn bg-transparent text-white"> <i class="fas fa-search"></i> </button>
                </div>
            </div>
        </form>
    </div>
         
</div>
    
<!-- Loading Screen -->
<div id="ju-loading-screen">
  <div class="sk-double-bounce">
    <div class="sk-child sk-double-bounce1"></div>
    <div class="sk-child sk-double-bounce2"></div>
  </div>
</div>

 
<!-- /End Top Header -->

<!-- Start Fables Navigation -->
<div class="fables-navigation fables-main-background-color py-3 py-lg-0">
    <div class="container">
        <div class="row">
            <div class="col-12 col-md-10 col-lg-9 pr-md-0">                       
                <nav class="navbar navbar-expand-md btco-hover-menu py-lg-2">  
                    
                    <a class="navbar-brand pl-0" href="GuestHomePage.jsp"><img src="assets/custom/images/fables-logo.png" alt="Fables Template" class="fables-logo"></a>
                     <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#fablesNavDropdown" aria-controls="fablesNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                         <span class="fables-iconmenu-icon text-white font-16"></span>
                     </button>
                     
                     <div class="collapse navbar-collapse" id="fablesNavDropdown">
                         <ul class="navbar-nav mx-auto fables-nav">   
                             <li class="nav-item dropdown">
                                 <a class="nav-link " href="GuestHomePage.jsp">
                                     Home
                                 </a>                                       
                             </li>

                             <li class="nav-item dropdown">
                                 <a class="nav-link " href="Login.jsp" >
                                     Login
                                 </a>                                       
                             </li>

                             <li class="nav-item dropdown">
                                 <a class="nav-link dropdown-toggle" href="#" id="sub-nav2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                     Sign-Up
                                 </a>
                                 <ul class="dropdown-menu" aria-labelledby="sub-nav2">

                                     <li><a class="dropdown-item " href="VandalDetails.jsp">Vandals</a></li>
                                     <li><a class="dropdown-item " href="LivingSuppliersDetails.jsp">Living Suppliers</a></li>
                                 </ul>
                             </li>

                             <li class="nav-item dropdown">
                                 <a class="nav-link " href="Contact.jsp" >
                                     Contact Us
                                 </a>                                       
                             </li>

                         </ul> 

                     </div>
                 </nav>
            </div>
            
        </div>
    </div>
</div> 
<!-- /End Fables Navigation -->  

