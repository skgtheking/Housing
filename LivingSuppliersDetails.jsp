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
        <div class="col-12 col-sm-7 wow fadeInLeft">
            <form class="fables-contact-form" action="LivingSuppliersProfilePictureUpload.jsp" enctype="multipart/form-data" method="post">
                <div class="form-group row">
                  <label class="col-sm-4 col-form-label">Living Suppliers Name</label>
                  <div class="col-sm-8">
                    <input type="text" class="form-control rounded-0 p-3" name="firstName" required="">
                  </div>
                </div>

                <div class="form-group row">
                  <label class="col-sm-4 col-form-label">Contact Person Name</label>
                  <div class="col-sm-8">
                    <input type="text" class="form-control rounded-0 p-3" name="lastName" required="">
                  </div>
                </div>           

                <div class="form-group row">
                  <label class="col-sm-4 col-form-label">Contact Number</label>
                  <div class="col-sm-8">
                    <input type="text" class="form-control rounded-0 p-3" name="cellNumber" required="">
                  </div>
                </div>

                <div class="form-group row">
                  <label class="col-sm-4 col-form-label">Contact Email</label>
                  <div class="col-sm-8">
                    <input type="email" class="form-control rounded-0 p-3" name="email" required="">
                  </div>
                </div>

                <div class="form-group row">
                  <label class="col-sm-4 col-form-label">Company Description</label>
                  <div class="col-sm-8">
                   <textarea class="form-control rounded-0 p-3" name="description" required></textarea>
                  </div>
                </div>    

                <div class="form-group row">
                  <label class="col-sm-4 col-form-label">Username</label>
                  <div class="col-sm-8">
                    <input type="text" class="form-control rounded-0 p-3" name="userName" required="">
                  </div>
                </div>

                <div class="form-group row">
                  <label class="col-sm-4 col-form-label">Password</label>
                  <div class="col-sm-8">
                    <input type="password" class="form-control rounded-0 p-3" name="password" required="">
                  </div>
                </div>

                <div class="form-group row">
                  <label class="col-sm-4 col-form-label">Re-Enter Password</label>
                  <div class="col-sm-8">
                    <input type="password" class="form-control rounded-0 p-3" name="password2" required="">
                  </div>
                </div>

                <div class="form-group row">
                  <label class="col-sm-4 col-form-label">Logo or Company Image</label>
                  <div class="col-sm-8">
                    <input type="file" class="form-control rounded-0 p-3" name="profilePicture" >
                  </div>
                </div>
                  <button type="submit" class="btn fables-second-background-color rounded-0 text-white btn-block p-3" name="buttonSubmit">Submit</button>
            </form>
        </div>
        <!-- Added for Display Side Image and Text-->
        <div class="col-12 col-sm-5 wow fadeInRight">
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