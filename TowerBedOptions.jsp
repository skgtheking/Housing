<!-- HEADER ONE STARTS-->
<%@include file="LivingSuppliersHomeHeader.jsp" %>
<!-- HEADER ONE ENDS-->
     
<!-- Start Breadcrumbs -->

<%
    String livingSpaceID = request.getParameter("livingSpaceID");
    String livingSpaceName = request.getParameter("livingSpaceName");
%>


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
            <table class="custom-table">
                <tr >
                    <td >                           
                        <div >
                            <form class="fables-contact-form" action="TowerBedOptionsPictureUpload.jsp" enctype="multipart/form-data" method="post">    
                                <table class="custom-table">
                                    <tr style="background-color: black;">
                                        <td colspan="2" style="text-align: center; color: red;">
                                            <h5 style="font-weight: bold;">
                                                Insert Tower Bed Options of <%=livingSpaceName%> (ID: <%=livingSpaceID%>)
                                            </h5>
                                        </td>                        
                                    </tr>
                                    <tr>
                                        <td>Bed Category:</td>
                                        <td>
                                            <select name="bedCategory">
                                                <option value="Twin Single Bed">Twin Single Bed</option>
                                                <option value="Twin Single Double">Twin Double Bed</option>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Bed Type:</td>
                                        <td>
                                            <select name="bedType">
                                                <option value="XL">XL</option>
                                                <option value="XXL">XXL</option>
                                                <option value="Single">Single</option>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>No of People can Occupy:</td>
                                        <td>
                                            <select name="NoOfPeopleCanOccupy">
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                                <option value="6">5</option>
                                                <option value="6">6</option>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Ground Clearance (in Inches):</td>
                                        <td>
                                            <input type="text" name="groundClearance">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Under Bed Storage:</td>
                                        <td>
                                            <select name="underBedStorage">
                                                <option value="Yes">Yes</option>
                                                <option value="No">No</option>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Bed Rise/Add Extra Height (in Inches):</td>
                                        <td>
                                            <input type="text" name="extraHeight">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Bed Image:</td>
                                        <td>
                                            <input type="file" name="bedImage">
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
                                    <input type="hidden" id="hid" name="hid" value="<%=livingSpaceID%>">
                                    <input type="hidden" id="hid2" name="hid2" value="<%=livingSpaceName%>">
                                </table>
                            </form>
                        </div>
                    </td>                       

                    <td>
                        <!-- Added for Display Side Living Area and Details-->
                        <div class="col-12 col-sm-7 wow fadeInRight">
                            <%            
                            String querySelect="select *"
                            + " from livingspace Where livingSpaceID='"+livingSpaceID+"'"; 
                            System.out.println(querySelect);
                            ResultSet rs=obj.select(querySelect);                                    
                            while(rs.next())
                            {           

                            %>
                            <table class="info-table">
                                <tr>                   
                                    <td class="value" style="text-align: center; color: red;">
                                        <h5 style="font-weight: bold;">
                                            ID/Name : &nbsp; <%=rs.getString("livingSpaceID")%> | <%=rs.getString("livingSpaceName")%>
                                        </h5>
                                    </td>                    
                                </tr>
                                <tr>
                                    <td>
                                        <img src='LivingImages\<%=rs.getString("iconImage")%>' alt="Living Space Image"   > 
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table class="info-inner-table">


                                            <tr>
                                                <td class="label">Location:</td>
                                                <td class="value"><%=rs.getString("location")%></td>
                                            </tr>
                                            <tr>
                                                <td class="label">Type:</td>
                                                <td class="value"><%=rs.getString("type")%></td>
                                            </tr>
                                            <tr>
                                                <td class="label">Rate:</td>
                                                <td class="value">$ <%=rs.getString("ratePerSemester")%></td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>              
                            <%
                            }
                            %> 
                        </div>
                    </td>
                </tr>
            </table>                    
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
                        <h2>Tower Bed Options of <%=livingSpaceName%> (ID: <%=livingSpaceID%>)</h2>
                    </div>
                </div>
                <div class="row">

                    <%
                    String querySelect2="select *"
                    + " from towerbedoptions WHERE livingSpaceID='"+livingSpaceID+"'"; 
                    System.out.println(querySelect2);
                    ResultSet rs2=obj.select(querySelect2);                                    
                    while(rs2.next())
                    {                    
                    %>
                       <div class="col-12 col-sm-6 col-lg-4 fables-product-block">
                           <div class="card rounded-0 mb-4">
                               <div class="row">
                                   <div class="fables-product-img col-12"> 
                                      <img class="card-img-top rounded-0" src='BedImages\<%=rs2.getString("bedImage")%>' width="200" height="200" alt="Bed Image">
                                      <div class="fables-img-overlay">                                          
                                          <ul class="nav fables-product-btns">
                                              <li><a href="" class="fables-product-btn"><span class="fables-iconeye"></span></a></li>                                             
                                          </ul>
                                      </div>
                                  </div>
                                  <div class="card-body col-12">
                                    <h5 class="card-title mx-xl-3" style="text-align: center;">
                                        <a href="#" class="fables-main-text-color fables-store-product-title fables-second-hover-color"> Category: <%=rs2.getString("bedCategory")%> </a>
                                    </h5>
                                    <h5 class="card-title mx-xl-3" style="text-align: center;">
                                        <a href="#" class="fables-main-text-color fables-store-product-title fables-second-hover-color"> Type:<%=rs2.getString("bedType")%></a>
                                    </h5>
                                    <h5 class="card-title mx-xl-3" style="text-align: center;">
                                        <a href="#" class="fables-main-text-color fables-store-product-title fables-second-hover-color"> People Can Occupy :<%=rs2.getString("NoOfPeopleCanOccupy")%> </a>
                                    </h5>
                                    <h5 class="card-title mx-xl-3" style="text-align: center;">
                                        <a href="#" class="fables-main-text-color fables-store-product-title fables-second-hover-color"> Clearance: <%=rs2.getString("groundClearance")%> Inch, Storage : <%=rs2.getString("underBedStorage")%>, Extra Height: <%=rs2.getString("extraHeight")%> Inch</a>
                                    </h5>
                                    <p class="fables-product-info">
                                        <a href="DeleteTowerBed.jsp?flag=2&towerBedID=<%=rs2.getString("towerBedID")%> &bedCategory=<%=rs2.getString("bedCategory")%> &livingSpaceID=<%=livingSpaceID%> &livingSpaceName=<%=livingSpaceName%>  " class="btn fables-second-border-color fables-second-text-color fables-btn-rouned fables-hover-btn-color font-14 p-2 px-2 px-xl-4">
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