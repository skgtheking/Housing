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
                     <a class="navbar-brand pl-0" href="index.html"><img src="assets/custom/images/fables-logo.png" alt="Fables Template" class="fables-logo"></a>
                     <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#fablesNavDropdown" aria-controls="fablesNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                         <span class="fables-iconmenu-icon text-white font-16"></span>
                     </button>
                     <div class="collapse navbar-collapse" id="fablesNavDropdown">
                         <ul class="navbar-nav mx-auto fables-nav">   
                             <li class="nav-item dropdown">
                                 <a class="nav-link " href="LivingSupplierstHomePage.jsp">
                                     Home
                                 </a>                                       
                             </li>

                             <li class="nav-item dropdown">
                                 <a class="nav-link " href="LivingSuppliersProfile.jsp" >
                                     Profile
                                 </a>                                       
                             </li>

                             <li class="nav-item dropdown">
                                 <a class="nav-link dropdown-toggle" href="#" id="sub-nav2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Living Area
                                 </a>
                                 <ul class="dropdown-menu" aria-labelledby="sub-nav2">

                                     <li><a class="dropdown-item " href="AddLivingApartment.jsp">Add Living Apartment</a></li>                                     
                                     <li><a class="dropdown-item " href="SelectLivingArea.jsp">Add Living Space Features</a></li>
                                 
                                     
                                 </ul>
                             </li>

                             <li class="nav-item dropdown">
                                 <a class="nav-link " href="Contact.jsp" >
                                     Contact Us
                                 </a>                                       
                             </li>
                             <li class="nav-item dropdown">
                                 <a class="nav-link " href="../Guest/GuestHomePage.jsp" >
                                     Logout
                                 </a>                                       
                             </li>   
                         </ul> 

                     </div>
                 </nav>
            </div>
            <div class="col-12 col-md-2 col-lg-3 pr-md-0 icons-header-mobile">
                <div class="fables-header-icons">
                    <%
                    String SSNlivingSuppliersID=session.getAttribute("livingSuppliersID").toString();   
                    String SSNlivingSuppliersName=session.getAttribute("livingSuppliersName").toString();   
                    %>
                    <a href="" class="fables-third-text-color fables-second-hover-color font-13 top-header-link px-3 px-md-2 px-lg-4 max-line-height"><span class="fables-iconuser"> &nbsp;<%=SSNlivingSuppliersName%> </span></a>
                </div>
            </div>
        </div>
    </div>
</div> 
<!-- /End Fables Navigation -->  

<style>
    .custom-table {
        border-collapse: collapse;
        /*width: 100%;
        height:100%;*/ 
    }
    .custom-table th, .custom-table td {        
        padding: 10px; /* Adjust the padding to your desired spacing */
    }
</style>
<style>
input[type="text"],
[type="password"],
[type="number"],
[type="time"],
[type="email"]

{
    display: block;
    width: 245px;
    height: 35px;
    padding: 6px 12px;
    font-size: 14px;
    line-height: 1.428571429;
    color: #000000;
    background-color: rgba(255, 255, 173, 0.98);
    background-image: none;
    border: 1px solid #cccccc;
    border-radius: 5px;
    -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
    box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
    -webkit-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
    transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
}
input[type="file"]

{
    display: block;
    width: 245px;
    height: 45px;
    padding: 6px 12px;
    font-size: 14px;
    line-height: 1.428571429;
    color: #000000;
    background-color: rgba(255, 255, 255, 0.98);
    background-image: none;
    border: 1px solid #cccccc;
    border-radius: 5px;
    -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
    box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
    -webkit-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
    transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
}

input[type="date"]
{
    display: block;
    width: 245px;
    height: 35px;
    padding: 6px 12px;
    font-size: 14px;
    line-height: 1.428571429;
    color: #000000;
    background-color: rgba(255, 255, 173, 0.98);
    background-image: none;
    border: 1px solid #cccccc;
    border-radius: 5px;
    -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
    box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
    -webkit-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
    transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
}

select 
{
    display: block;
    width: 245px;
    height: 35px;
    padding: 6px 12px;
    font-size: 14px;
    line-height: 1.428571429;
    color: #000000;
    background-color:rgba(255, 255, 173, 0.98);
    background-image: none;
    border: 1px solid #cccccc;
    border-radius: 5px;
    -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
    box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
    -webkit-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
    transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
}
select option 
{

    color: #000000;
    background-color: rgba(255, 255, 173, 0.98);
    text-shadow: 0 1px 0 rgba(0, 0, 0, 0.4);
}

textarea 
{
    overflow: auto;
    height:70px;
    width: 245px;
    padding: 6px 12px;
    font-size: 14px;
    line-height: 1.428571429;
    color: #000000;
    background-color: rgba(255, 255, 173, 0.98);
    background-image: none;
    border: 1px solid #cccccc;
    border-radius: 5px;
    -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
    box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
    -webkit-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
    transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
}
input[type="radio"]
{
    width: 50px;
    height: 18px;
}
input[type="radio"] + label 
{
    color:#f2f2f2;
    font-family:Arial, sans-serif;
    font-size:18px;
}



.custom-button {
    margin-bottom: 0;
    font-weight: normal;
    text-align: center;
    vertical-align: middle;
    cursor: pointer;
    background-image: none;
    border: 1px solid transparent;
    white-space: nowrap;
    padding: 6px 12px;
    font-size: 16px;
    line-height: 1.428571429;
    border-radius: 5px;   
    color: #ffffff;
    background-color: rgb(252, 73, 3);
    border-color: rgba(10, 10, 10, 0.47);
    width: 245px;
    height: 35px;
    }

.custom-button:hover {
    color: #ffffff;
    background-color: #030303;
    border-color: #000000;
    }

</style>
 
<style>
    .info-table {
        width: 500px;
        border-collapse: collapse;
        margin: 20px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    .info-table td {
        padding: 10px;
        border: 1px solid #ddd;
    }
    .info-table img {
        max-width: 100%;
        height: auto;
        display: block;
        margin: 0 auto;
    }
   

    .info-table .info-inner-table {
        width: 100%;
        height: 100%;
    }

    .info-table .info-inner-table td {
        padding: 8px;
    }

    .info-table .info-inner-table .label {
        font-weight: bold;
    }

    .info-table .info-inner-table .value {
        color: #333;
    }
</style>