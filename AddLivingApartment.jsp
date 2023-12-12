<!-- HEADER ONE STARTS-->
<%@include file="LivingSuppliersHomeHeader.jsp" %>
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
                        Add Living Space
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

            <form class="fables-contact-form" action="AddLivingApartmentProfilePictureUpload.jsp" enctype="multipart/form-data" method="post">    
                <table class="custom-table">

                    <tr>
                        <td>Apartment Name:</td>
                        <td><input type="text" name="livingSpaceName"></td>
                    </tr>

                    <tr>
                        <td>Rate (Per Semester):</td>
                        <td><input type="text" name="ratePerSemester" ></td>
                    </tr>

                    <tr>
                        <td>Location:</td>
                        <td><input type="text" name="location"></td>
                    </tr>

                    <tr>
                        <td>Type:</td>
                        <td>
                            <select name="type">
                                <option value="Residence Hall">Residence Hall</option>
                                <option value="Apartment Housing">Apartment Housing</option>
                                <option value="Other">Other</option>
                            </select>
                        </td>
                    </tr>

                    <tr>
                        <td>Icon Image</td>
                        <td>
                            <input type="file" class="form-control rounded-0 p-3" name="IconImage" required="">
                        </td>
                    </tr>    

                    <tr>
                        <td>
                           <button type="reset" class="custom-button">Cancel</button>
                        </td>
                        <td>
                            <button type="submit" class="custom-button">Save & Continue</button>
                        </td>
                    </tr>
                </table>    
            </form>

        </div>
                   
        <!-- Added for Display Side Image and Text-->
        <div class="col-12 col-sm-6 wow fadeInRight">
            <div class="signup-info">
                <img src="assets/custom/images/Ap1.jpg" alt="Image" class="img-fluid">
                <p class="text-center mt-3">
                  
                </p>
            </div>
        </div>

    </div>        
</div> 
<!-- /End page content -->
 
 
<!-- Start page content --> 
<div class="container">
     <div class="row my-4 my-md-5">           
           <div class="col-12 col-md-8 col-lg-9"> 
                <div class="row mb-4">
                    <h2>Living Space Details</h2>
                </div>
                <div class="row">

                    <%
                    String querySelect="select *"
                    + " from livingspace WHERE livingSuppliersID="+SSNlivingSuppliersID ; 
                    ResultSet rs=obj.select(querySelect);                                    
                    while(rs.next())
                    {                    
                    %>
                       <div class="col-12 col-sm-6 col-lg-4 fables-product-block">
                           <div class="card rounded-0 mb-4">
                               <div class="row">
                                   <div class="fables-product-img col-12">
                                      <img class="card-img-top rounded-0" src='LivingImages\<%=rs.getString("iconImage")%>' width="200" height="200" alt="dress fashion">
                                      <div class="fables-img-overlay">                                          
                                          <ul class="nav fables-product-btns">
                                              <li><a href="" class="fables-product-btn"><span class="fables-iconeye"></span></a></li>
                                              <li><a href="" class="fables-product-btn"><span class="fables-iconcompare"></span></a></li>
                                              <li><button class="fables-product-btn"><span class="fables-iconheart"></span></button></li>
                                          </ul>
                                      </div>
                                  </div>
                                  <div class="card-body col-12">
                                    <h5 class="card-title mx-xl-3">
                                        <a href="#" class="fables-main-text-color fables-store-product-title fables-second-hover-color"><%=rs.getString("livingSpaceName")%></a>
                                    </h5>
                                    <p class="store-card-text fables-fifth-text-color font-15 mx-xl-3"><%=rs.getString("location")%></p>
                                    <p class="store-card-text fables-fifth-text-color font-15 mx-xl-3"><%=rs.getString("type")%></p>
                                    <p class="font-15 font-weight-bold fables-second-text-color my-2 mx-xl-3">$ <%=rs.getString("ratePerSemester")%></p>
                                    <p class="fables-product-info"><a href="DeleteLivingSpace.jsp?deleteLivingSpace=<%= rs.getString("livingSpaceID") %>&flag=1"  class="btn fables-second-border-color fables-second-text-color fables-btn-rouned fables-hover-btn-color font-14 p-2 px-2 px-xl-4">
                                    <span class="fables-iconcart"></span> 
                                    <span class="fables-btn-value">DELETE</span></a></p>
                                  </div>
                               </div>
                            </div>
                       </div>
                    <%
                    }
                    %>      
                    
                </div> 

                 <nav aria-label="Page navigation">
                   <ul class="pagination justify-content-center">                                 
                     <li class="page-item"><a class="page-link rounded-circle fables-forth-text-color fables-page-link fables-second-hover-background-color" href="#">1</a></li>
                     <li class="page-item"><a class="page-link rounded-circle fables-forth-text-color fables-page-link fables-second-hover-background-color" href="#">2</a></li>
                     <li class="page-item"><a class="page-link rounded-circle fables-forth-text-color fables-page-link fables-page-link fables-second-hover-background-color" href="#">3</a></li>  
                     <li><span class="fables-pagi-dots fables-forth-text-color"> .... </span></li>
                     <li class="page-item"><a class="page-link rounded-circle fables-forth-text-color fables-page-link fables-second-hover-background-color" href="#">20</a></li>                                
                   </ul>
                 </nav> 
           </div>
     </div>

</div> 
<!-- /End page content -->


<!-- HEADER ONE STARTS-->
<%@include file="LivingSuppliersHomeFooter.jsp" %>
<!-- HEADER ONE ENDS-->