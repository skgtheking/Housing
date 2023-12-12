<!-- HEADER ONE STARTS-->
<%@include file="VandalHomeHeader.jsp" %>
<!-- HEADER ONE ENDS-->
     
<!-- Start Breadcrumbs -->
<div class="fables-light-background-color">
    <div class="container"> 
        <nav aria-label="breadcrumb">
          <ol class="fables-breadcrumb breadcrumb px-0 py-3">
            <li class="breadcrumb-item">
                <h3 class="font-35 font-weight-bold fables-main-text-color text-center">Get in Touch</h3>
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
                <div class="row">
                    <div class="col-12 col-sm-6 col-md-4 text-center mb-5 mb-md-0 wow fadeInDown" data-wow-delay=".5s">
                        <span class="fables-iconmap-icon fa-3x fables-main-text-color fables-second-hover-color"></span> 
                        <h2 class="font-16 semi-font fables-main-text-color my-3">Address Information</h2>
                        <p class="font-14 fables-forth-text-color">
                        level13, 2Elizabeth St, Melbourne,Victor 2000</p>
                    </div>
                    <div class="col-12 col-sm-6 col-md-4 text-center mb-5 mb-md-0 wow fadeInDown" data-wow-delay=".8s">
                        <span class="fables-iconphone fa-3x fables-main-text-color fables-second-hover-color"></span>
                        <h2 class="font-16 semi-font fables-main-text-color my-3">Mail & Phone number</h2>
                        <p class="font-14 fables-forth-text-color">adminsupport@website.com</p>
                        <p class="font-14 fables-forth-text-color">+333 111 111 000</p>

                    </div>
                    <div class="col-12 col-sm-6 col-md-4 text-center mb-5 mb-md-0 wow fadeInDown" data-wow-delay="1.1s">
                        <span class="fables-iconshare-icon fa-3x fables-main-text-color fables-second-hover-color"></span>
                        <h2 class="font-16 semi-font fables-main-text-color my-3">Stay In Touch</h2>
                        <ul class="nav fables-contact-social-links"> 
                            <li><a href="#" target="_blank"><i class="fab fa-facebook-f fables-forth-text-color fa-fw"></i></a></li>
                            <li><a href="#" target="_blank"><i class="fab fa-instagram fables-forth-text-color  fa-fw"></i></a></li> 
                            <li><a href="#" target="_blank"><i class="fab fa-twitter fables-forth-text-color    fa-fw"></i></a></li>
                            <li><a href="#" target="_blank"><i class="fab fa-linkedin fables-forth-text-color   fa-fw"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="mt-0 mb-5 my-md-5"> 
                    <h3 class="font-35 font-weight-bold fables-main-text-color text-center">Contact Us</h3>
                    <p class="mt-3 fables-forth-text-color  text-center">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal </p>

                </div> 


            </div>
        </div>        
        <% 
            if(request.getParameter("B_Submit")!=null) 
            {
                String contactName=request.getParameter("contactName");
                String contactNumber=request.getParameter("contactNumber");
                String email=request.getParameter("email");
                String subject=request.getParameter("subject");
                String message=request.getParameter("message");
                String queryInsert="insert into contact(contactName,contactNumber,email,subject,message)values('"+contactName+"','"+contactNumber+"','"+email+"','"+subject+"','"+message+"')";
                obj.executeCommand(queryInsert); //Reload the same page or refresh the same page
                System.out.println(queryInsert);
                response.sendRedirect("GuestHomePage.jsp");
            }
        %>       
        <div class="row mb-4 mb-md-10 overflow-hidden" style="text-align: center;">
            <div class="col-12 col-sm-12 wow fadeInLeft " style="text-align: center;">
                    <form class="fables-contact-form" >
                      <div class="form-group"> 
                        <input type="text" class="form-control rounded-0 p-3"  placeholder="Name" name="contactName" >   
                      </div>
                      <div class="form-group"> 
                        <input type="tect" class="form-control rounded-0 p-3" placeholder="Contact Number" name="contactNumber" >
                      </div>  
                      <div class="form-group"> 
                        <input type="email" class="form-control rounded-0 p-3" placeholder="Email" name="email" >
                      </div>
                      <div class="form-group"> 
                        <input type="text" class="form-control rounded-0 p-3" placeholder="Subject" name="subject" >   
                      </div>
                      <div class="form-group"> 
                          <textarea class="form-control rounded-0 p-3" placeholder="Message" rows="3" name="message" ></textarea>
                      </div>                       
                      <button type="submit" name="B_Submit" class="btn fables-second-background-color rounded-0 text-white btn-block p-3">Send</button>
                    </form>
                </div>
                <div class="col-12 col-sm-6 wow fadeInRight">
                    <div id="map" data-lng="31.248848" data-lat="29.966324" data-icon="assets/custom/images/map-marker.png" data-zom="12" style="width:100%;height:420px"></div>
                </div>
        </div>        
    </div> 
<!-- /End page content -->
 
<!-- HEADER ONE STARTS-->
<%@include file="VandalHomeFooter.jsp" %>
<!-- HEADER ONE ENDS-->