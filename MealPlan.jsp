<!-- HEADER ONE STARTS-->
<%@include file="LivingSuppliersHomeHeader.jsp" %>
<!-- HEADER ONE ENDS-->
     
<!-- Start Breadcrumbs -->

<%
    String livingSpaceID = request.getParameter("livingSpaceID");
    String livingSpaceName = request.getParameter("livingSpaceName");
%>

<div class="fables-light-background-color ">
    <div class="container"> 
        <nav aria-label="breadcrumb">
            <ol class="fables-breadcrumb breadcrumb px-0 py-3">
                <li class="breadcrumb-item text-center">
                    <h3 class="font-35 font-weight-bold fables-main-text-color text-danger">
                        <!--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
                        Insert Meal Plan of <%=livingSpaceName%> (ID: <%=livingSpaceID%>)
                    </h3>
                    
                </li>
            </ol>
        </nav> 
    </div>
</div>
<!-- /End Breadcrumbs -->
     
<!-- Start page content --> 
<div class="col-12 col-md-12 offset-md-1 mt-12" > 
    <div class="row overflow-hidden">
        <div class="col-12 col-md-10 offset-md-1 mt-5">                    
          <!-- Added for a Top Space -->                      
        </div>
    </div>        

    <div class="row mb-4 mb-md-12 overflow-hidden"> 
        <div class="col-12 col-sm-5 wow fadeInLeft">
            <form class="fables-contact-form" action="MealPlanPictureUpload.jsp" enctype="multipart/form-data" method="post">    
                <table class="custom-table">
                    
                    <tr>
                        <td><label for="mealName">Meal Name:</label></td>
                        <td><input type="text" id="mealName" name="mealName"></td>
                    </tr>
                    <tr>
                        <td><label for="mealType">Meal Type: </label></td>
                        
                        <td>
                            <select name="mealType">
                                <option value="Chinese">Chinese</option>
                                <option value="Continental">Continental</option>
                                <option value="South Indian">South Indian</option>
                                <option value="Burger">Burger</option>
                                <option value="Pizza">Pizza</option>
                                <option value="American">American</option>
                            </select>
                        </td>                                  
                    </tr>
                    <tr>
                        <td><label for="ratePerSemester">Rate Per Semester : $</label></td>
                        <td><input type="text" id="ratePerSemester" name="ratePerSemester"></td>
                    </tr>
                    <tr>
                        <td><label for="featureIcon">Meal Image:</label></td>
                        <td><input type="file" id="featureIcon" name="mealImage"></td>
                    </tr>
                    <tr>
                        <td>
                           <button type="reset" class="custom-button">Cancel</button>
                        </td>
                        <td>
                            <button type="submit" class="custom-button">Save & Continue</button>
                        </td>
                    </tr>
                    <input type="hidden" id="hid" name="hid" value="<%=livingSpaceID%>">
                    <input type="hidden" id="hid2" name="hid2" value="<%=livingSpaceName%>">
                </table>
            </form>
        </div>
        
        <!-- Added for Display Side Living Area and Details-->
        <div class="col-12 col-sm-7 wow fadeInRight">
            <%            
            String querySelect="select *"
            + " from livingspace Where livingSpaceID='"+livingSpaceID+"'"; 
            ResultSet rs=obj.select(querySelect);                                    
            while(rs.next())
            {           

            %>
            <table width="650" border="0">
                <tr>
                    <td>
                        <img src='LivingImages\<%=rs.getString("iconImage")%>' width="350" height="250" > 
                    </td>
                    <td style="padding: 10px;">
                        <table height="250" width="300">
                            <tr>
                                <td>
                                     ID: 
                                </td>
                                <td>
                                     <%=rs.getString("livingSpaceID")%>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                     Name: 
                                </td>
                                <td>
                                     <%=rs.getString("livingSpaceName")%>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Location: 
                                </td>
                                <td>
                                   <%=rs.getString("location")%>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Type: 
                                </td>
                                <td>
                                    <%=rs.getString("type")%>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Rate:  
                                </td>
                                <td>
                                    $ <%=rs.getString("ratePerSemester")%>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>                
            </table>               
            <%
            }
            %> 
        </div>
        
    </div>        
</div>       
<!-- /End page content -->

<!-- Start Display content --> 
<div class="container">
     <div class="row my-4 my-md-5">           
           <div class="col-12 col-md-8 col-lg-9"> 
                <div class="row mb-4">
                    <div class="fables-light-background-color col-12">
                        <h2>Meal Plan of <%=livingSpaceName%> (ID: <%=livingSpaceID%>)</h2>
                    </div>
                </div>
                <div class="row">

                    <%
                    String querySelect2="select *"
                    + " from mealplan WHERE livingSpaceID='"+livingSpaceID+"'"; 
                    ResultSet rs2=obj.select(querySelect2);                                    
                    while(rs2.next())
                    {                    
                    %>
                       <div class="col-12 col-sm-6 col-lg-4 fables-product-block">
                           <div class="card rounded-0 mb-4">
                               <div class="row">
                                   <div class="fables-product-img col-12"> 
                                      <img class="card-img-top rounded-0" src='MealPlan\<%=rs2.getString("mealImage")%>' width="200" height="200" alt="dress fashion">
                                      <div class="fables-img-overlay">                                          
                                          <ul class="nav fables-product-btns">
                                              <li><a href="" class="fables-product-btn"><span class="fables-iconeye"></span></a></li>                                             
                                          </ul>
                                      </div>
                                  </div>
                                  <div class="card-body col-12">
                                    <h5 class="card-title mx-xl-3" style="text-align: center;">
                                        <a href="#" class="fables-main-text-color fables-store-product-title fables-second-hover-color"><%=rs2.getString("mealName")%> </a>
                                    </h5>
                                    <h5 class="card-title mx-xl-3" style="text-align: center;">
                                        <a href="#" class="fables-main-text-color fables-store-product-title fables-second-hover-color">Type: <%=rs2.getString("mealType")%> </a>
                                    </h5>
                                    <h5 class="card-title mx-xl-3" style="text-align: center;">
                                        <a href="#" class="fables-main-text-color fables-store-product-title fables-second-hover-color"> Rate: $<%=rs2.getString("ratePerSemester")%></a>
                                    </h5>
                                    <p class="fables-product-info">
                                        <a href="DeleteMealPlan.jsp?flag=1&livingSpaceMealPlanID=<%=rs2.getString("mealPlanID")%> &mealName=<%=rs2.getString("mealName")%> &livingSpaceID=<%=livingSpaceID%> &livingSpaceName=<%=livingSpaceName%>  " class="btn fables-second-border-color fables-second-text-color fables-btn-rouned fables-hover-btn-color font-14 p-2 px-2 px-xl-4">
                                            <span class="fables-iconToDelete">  <i class="fas fa-trash-alt"></i> </span> 
                                            <span class="fables-btn-value">DELETE</span>
                                        </a>
                                    </p>
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