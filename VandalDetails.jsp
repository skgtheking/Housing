<!-- HEADER ONE STARTS-->
<%@include file="GuestHomeHeader.jsp" %>
<!-- HEADER ONE ENDS-->
     
<!-- Start Breadcrumbs -->
<div class="fables-light-background-color ">
    <div class="container"> 
        <nav aria-label="breadcrumb">
            <ol class="fables-breadcrumb breadcrumb px-0 py-3">
                <li class="breadcrumb-item text-center">
                    <h3 class="font-35 font-weight-bold fables-main-text-color text-danger">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        Sign-Up
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
            <form action="AddLivingApartmentFeatures.jsp" method="get">
           
            <table class="Content_Table">
                    <caption>
                        Living Area
                    </caption> 

                                <tr>
  
        <tr>
            <td>Apartment Name:</td>
            <td><input type="text" name="apartment_name"></td>
        </tr>
        <tr>
            <td>Rate (Per Semester):</td>
            <td><input type="text" name="rate_per_semester"></td>
        </tr>
        <tr>
            <td>Location:</td>
            <td><input type="text" name="location"></td>
        </tr>
        <tr>
            <td>Type:</td>
            <td>
                <select name="type">
                    <option value="Apartment">Apartment</option>
                    <option value="Home">Home</option>
                </select>
            </td>
        </tr>


            </tr>
                    <td>
                       <button type="reset">Save & Continue</button>
                    </td>
                    <td>
                        
                        <button type="submit">Save & Continue</button>
                    </td>
              </tr>

           </table>


           
        </form>
            
            
            
            
        </div>
        <!-- Added for Display Side Image and Text-->
        <div class="col-12 col-sm-6 wow fadeInRight">
            <div class="signup-info">
                <img src="assets/custom/images/Side1.jpg" alt="Signup Image" class="img-fluid">
                <p class="text-center mt-3">
                  Welcome to our platform! Sign up now to join our community and unlock exclusive features. 
                  Get started on your journey with us today.
                </p>
            </div>
        </div>
    </div>        
</div> 
<!-- /End page content -->
 
<!-- HEADER ONE STARTS-->
<%@include file="GuestHomeFooter.jsp" %>
<!-- HEADER ONE ENDS-->