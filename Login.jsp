<!-- HEADER ONE STARTS-->
<%@include file="GuestHomeHeader.jsp" %>
<!-- HEADER ONE ENDS-->
 
<%
    
String userName="",password="";
if(request.getParameter("buttonSubmit")!=null)
{
    userName=request.getParameter("userName");
    password=request.getParameter("password");

    //VANDALS
    String sel="select * from vandaldetails where userName='"+userName+"' and password='"+password+"'";
    ResultSet rs=obj.select(sel); 
    String sel2="select * from livingsuppliersdetails where userName='"+userName+"' and password='"+password+"'";            
    ResultSet rs2=obj.select(sel2);

    if (rs.next())
    {
        session.setAttribute("vandalID",rs.getString("vandalID"));
        session.setAttribute("vandalName",rs.getString("firstName")+" "+rs.getString("lastName"));
        response.sendRedirect("../Vandal/VandalHomePage.jsp");    
    }  
    else if (rs2.next())
    {
        session.setAttribute("livingSuppliersID",rs2.getString("livingSuppliersID"));
        session.setAttribute("livingSuppliersName",rs2.getString("livingSuppliersName"));
        response.sendRedirect("../LivingSuppliers/LivingSupplierstHomePage.jsp");    
    }
    else
    {
        out.print("<script> alert('Login Failed')</script>");
    }
}   

%>

<!-- Start Breadcrumbs -->
<div class="fables-light-background-color ">
    <div class="container"> 
        <nav aria-label="breadcrumb">
            <ol class="fables-breadcrumb breadcrumb px-0 py-3">
                <li class="breadcrumb-item text-center">
                    <h3 class="font-35 font-weight-bold fables-main-text-color text-danger">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        Welcome to the World of Vandal Living
                    </h3>
                    
                </li>
            </ol>
        </nav> 
    </div>
</div>
<!-- /End Breadcrumbs -->
     
<!-- Start page content --> 
<div class="container"> 
    <div class="row overflow-hidden">
        <div class="col-12 col-md-10 offset-md-1 mt-5">                    
          <!-- Added for a Top Space -->                      
        </div>
    </div>        

    <div class="row mb-4 mb-md-5 overflow-hidden">
        <div class="col-12 col-sm-6 wow fadeInLeft">
            <form class="fables-contact-form mx-auto"  method="post">
                <div class="form-group row">
                    <div class="col-sm-12 text-center">
                        <h3 class="font-35 font-weight-bold fables-main-text-color mb-3">Login</h3>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-4 col-form-label">
                        <i class="fas fa-user"></i> <!-- Font Awesome user icon -->
                        Username
                    </label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control rounded-0 p-3" name="userName" required="">
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-sm-4 col-form-label">
                        <i class="fas fa-lock"></i> <!-- Font Awesome lock icon -->
                        Password
                    </label>
                    <div class="col-sm-8">
                        <input type="password" class="form-control rounded-0 p-3" name="password" required="">
                    </div>
                </div>

                <!-- Include Forgot Password and Reset Password links as needed -->
                <div class="form-group row">
                    <div class="col-sm-8 offset-sm-4">
                        <a href="#">Forgot Password</a> | <a href="#">Reset Password</a>
                    </div>
                </div>

                <button type="submit" class="btn fables-second-background-color rounded-0 text-white btn-block p-3" name="buttonSubmit">Login</button>
            </form>
        </div>
        <!-- Added for Display Side Image and Text-->
        <div class="col-12 col-sm-6 wow fadeInRight text-center">
            <div class="signup-info">
                <img src="assets/custom/images/Login2.jpg" alt="Signup Image" class="img-fluid">
            </div>
        </div>

    </div>        
</div> 
<!-- /End page content -->
 
<!-- HEADER ONE STARTS-->
<%@include file="GuestHomeFooter.jsp" %>
<!-- HEADER ONE ENDS-->