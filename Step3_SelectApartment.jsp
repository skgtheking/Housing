<!-- HEADER ONE STARTS-->
<%@include file="VandalHomeHeader.jsp" %>
<!-- HEADER ONE ENDS-->
     
<%

String currentVandalStatus="0";   

String querySelect0 = "select vandalStatus from vandaldetails where vandalID='"+SSNvandalID+"'";
ResultSet rs0 = obj.select(querySelect0);
while (rs0.next()) 
{
    currentVandalStatus=rs0.getString("vandalStatus");            

} 
System.out.print(currentVandalStatus); 

if(currentVandalStatus.equalsIgnoreCase("0")) 
{
    response.sendRedirect("Step1_EmergencyContact.jsp");
}
else if(currentVandalStatus.equalsIgnoreCase("1")) 
{
    response.sendRedirect("Step2_MorePersonalInfo.jsp");
}
 

    
%>
     
<!-- Start Breadcrumbs -->
<div class="fables-light-background-color ">
    <div class="container"> 
        <nav aria-label="breadcrumb">
            <ol class="fables-breadcrumb breadcrumb px-0 py-3">
                <li class="breadcrumb-item text-center">
                     <h3 class="font-20 font-weight-bold fables-main-text-color text-danger">                       
                        Emergency Contact-> More Information->Select Living Space
                    </h3>
                    
                </li>
            </ol>
        </nav> 
    </div>
</div>
<!-- /End Breadcrumbs -->

<!-- Start page content --> 
      
        
                <%            
                String querySelect="select *"
                + " from livingspace";// Where type='Apartment Housing'"; 
                ResultSet rs=obj.select(querySelect);  
                String livingSpaceID="";
                while(rs.next())
                { 
                    livingSpaceID=rs.getString("livingSpaceID");                
                %>
                <div class="fables-choose-background fables-after-overlay py-4 py-md-5 bg-rules overflow-hidden px-3 px-md-0">
                    <div class="container position-relative z-index">    
                        <!-- One living space ROW START -->         
                        <div class="row">  
                            <div class="col-12 col-lg-4 p-0 image-container translate-effect-right wow fadeInLeft mb-3 mb-md-0" data-wow-delay="1s" data-wow-duration="1.5s">
                                      
                            <!-- SIDE IMAGE DIV -->
                             <table border="0" >
                                 <tr style="background-color: white; ">
                                    <td colspan="2" style= "padding-top: 5px; text-transform: capitalize; text-align: center;">
                                       
                                            <h2 class="font-30 font-weight-bold fables-second-text-color" style="text-align: center; text-transform: uppercase;">
                                               ID: <%=rs.getString("livingSpaceID")%> | <%=rs.getString("livingSpaceName")%> 
                                            </h2>
                                            
                                                                              
                                    </td>                         
                                </tr> 
                                <tr>
                                    <td colspan="2">
                                              <img src='../LivingSuppliers\LivingImages\<%=rs.getString("iconImage")%>' alt="" class="w-100">
                                        
                                    </td>                         
                                </tr>
                                 <tr >
                                    <td>
                                              <img src='../LivingSuppliers\LivingImages\<%=rs.getString("iconImage")%>' alt="" class="w-100">
                                        
                                    </td>   
                                    <td>
                                              <img src='../LivingSuppliers\LivingImages\<%=rs.getString("iconImage")%>' alt="" class="w-100">
                                        
                                    </td>   
                                </tr>
                             </table>
                                        
                            </div>
                            
                            <!-- SIDE IMAGE DIV  END--> 

                            <!-- CHOOSE DIV START--> 
                            <div class="col-12 col-lg-8 bg-white px-6 py-3 py-md-5 wow fadeInRight" data-wow-delay="1s" data-wow-duration="1.5s">                    
                                <h2 class="font-30 font-weight-bold fables-second-text-color"> Rate : $ <%=rs.getString("ratePerSemester")%> (Per Semester)</h2> 
                                <p class="fables-main-text-color font-14 my-3" style="font-size: 22px; font-weight: bold;">
                                    Location: <%=rs.getString("location")%> | Type: <%=rs.getString("type")%>
                                </p>
                                
                                <div id="<%=rs.getString("livingSpaceID")%>">

                                      <div class="card border-0 mb-2">
                                        <div class="card-header p-0 border bg-transparent rounded-0" id="headingOne">
                                          <h5 class="mb-0 position-relative">
                                            <span class="fables-second-background-color white-color d-inline-block   position-absolute fables-lus-icon pt-2 text-center">
                                            <i class="fas fa-plus"></i>  
                                            </span>
                                            <button class="btn fables-main-text-color bg-transparent font-18 focus-0 d-block position-relative z-index pl-6 pt-2 pb-2 w-100 text-left border-0 text-truncate" data-toggle="collapse" data-target="#C1+<%=rs.getString("livingSpaceID")%>" aria-expanded="true" aria-controls="collapseOne">
                                             Floor Plan
                                            </button>
                                          </h5>
                                        </div>
                                        
                                        <!--  Please use this class="collapse show" to open collapse + while load the Page  -->   
                                        <div id="C1+<%=rs.getString("livingSpaceID")%>" class="collapse" aria-labelledby="headingOne" data-parent="#<%=rs.getString("livingSpaceID")%>">
                                          <div class="card-body fables-forth-text-color font-14 py-1 py-xl-2 pl-6 pr-0">

                                                <div class="row">
                                                    <%
                                                    String querySelect2="select *"
                                                    + " from floorplan WHERE livingSpaceID='"+livingSpaceID+"'"; 
                                                    ResultSet rs2=obj.select(querySelect2);                                    
                                                    while(rs2.next())
                                                    {                    
                                                    %>
                                                       <div class="col-12 col-sm-6 col-lg-4 fables-product-block">
                                                           <div class="card rounded-0 mb-4">
                                                               <div class="row">
                                                                   <div class="fables-product-img col-12"> 
                                                                      <img class="card-img-top rounded-0" src='../LivingSuppliers/FloorPlanImages\<%=rs2.getString("floorImage")%>' width="200" height="200" alt="dress fashion">
                                                                      <div class="fables-img-overlay">                                          
                                                                          <ul class="nav fables-product-btns">
                                                                              <li><a href="" class="fables-product-btn"><span class="fables-iconeye"></span></a></li>                                             
                                                                          </ul>
                                                                      </div>
                                                                  </div>
                                                                  <div class="card-body col-12">
                                                                    <h5 class="card-title mx-xl-3" style="text-align: center;">
                                                                        <a href="#" class="fables-main-text-color fables-store-product-title fables-second-hover-color"><%=rs2.getString("floorName")%></a>
                                                                    </h5>
                                                                    <h5 class="card-title mx-xl-3" style="text-align: center;">
                                                                        <a href="#" class="fables-main-text-color fables-store-product-title fables-second-hover-color">Total Rooms: <%=rs2.getString("totalRooms")%></a>
                                                                    </h5>
                                                                    <h5 class="card-title mx-xl-3" style="text-align: center;">
                                                                        <a href="#" class="fables-main-text-color fables-store-product-title fables-second-hover-color">For <%=rs2.getString("genderCategory")%> Only</a>
                                                                    </h5>
                                                                    <h5 class="card-title mx-xl-3" style="text-align: center;">
                                                                        <a href="#" class="fables-main-text-color fables-store-product-title fables-second-hover-color">Type: <%=rs2.getString("floorType")%></a>
                                                                    </h5>
                                                                    
                                                                  </div>
                                                               </div>
                                                            </div>
                                                       </div>
                                                    <%
                                                    }
                                                    %>     
                                                </div>

                                          </div>
                                        </div>                                                    
                                      </div>

                                      <div class="card border-0 mb-2">                                  
                                        <div class="card-header bg-transparent p-0 border rounded-0" id="headingTwo">
                                          <h5 class="mb-0 position-relative">
                                            <span class="fables-second-background-color white-color d-inline-block   position-absolute fables-lus-icon pt-2 text-center">
                                                <i class="fas fa-plus"></i>  
                                            </span>
                                            <button class="btn fables-main-text-color bg-transparent font-18 focus-0 d-block position-relative z-index pl-6 pt-2 pb-2 w-100 text-left border-0 text-truncate collapsed" data-toggle="collapse" data-target="#C2+<%=rs.getString("livingSpaceID")%>" aria-expanded="false" aria-controls="collapseTwo">
                                              Rooms
                                            </button>
                                          </h5>
                                        </div>

                                        <div id="C2+<%=rs.getString("livingSpaceID")%>" class="collapse" aria-labelledby="headingTwo" data-parent="#<%=rs.getString("livingSpaceID")%>">
                                          <div class="card-body fables-forth-text-color font-14 py-1 py-xl-2 pl-6 pr-0">

                                                <div class="row">
                                                    <%
                                                    String querySelect3="select *"
                                                    + " from rooms WHERE livingSpaceID='"+livingSpaceID+"'"; 
                                                    ResultSet rs3=obj.select(querySelect3);                                    
                                                    while(rs3.next())
                                                    {                    
                                                    %>
                                                       <div class="col-12 col-sm-6 col-lg-4 fables-product-block">
                                                           <div class="card rounded-0 mb-4">
                                                               <div class="row">
                                                                   <div class="fables-product-img col-12"> 
                                                                      <img class="card-img-top rounded-0" src='../LivingSuppliers/RoomImages\<%=rs3.getString("roomImages")%>' width="200" height="200" alt="dress fashion">
                                                                      <div class="fables-img-overlay">                                          
                                                                          <ul class="nav fables-product-btns">
                                                                              <li><a href="" class="fables-product-btn"><span class="fables-iconeye"></span></a></li>                                             
                                                                          </ul>
                                                                      </div>
                                                                  </div>
                                                                  <div class="card-body col-12">
                                                                    <h5 class="card-title mx-xl-3" style="text-align: center;">
                                                                        <a href="#" class="fables-main-text-color fables-store-product-title fables-second-hover-color">Room No: <%=rs3.getString("roomNumber")%></a>
                                                                    </h5>
                                                                    <h5 class="card-title mx-xl-3" style="text-align: center;">
                                                                        <a href="#" class="fables-main-text-color fables-store-product-title fables-second-hover-color"><%=rs3.getString("noVandalsCanOccupy")%> Vandals can occupy</a>
                                                                    </h5>

                                                                   
                                                                  </div>
                                                               </div>
                                                            </div>
                                                       </div>
                                                    <%
                                                    }
                                                    %>      
                                                </div>

                                          </div>
                                        </div>
                                      </div>

                                      <div class="card border-0 mb-2">
                                        <div class="card-header p-0 border bg-transparent rounded-0" id="headingThree">
                                          <h5 class="mb-0 position-relative">
                                            <span class="fables-second-background-color white-color d-inline-block   position-absolute fables-lus-icon pt-2 text-center">
                                                <i class="fas fa-plus"></i>  
                                            </span>
                                            <button class="btn fables-main-text-color bg-transparent font-18 focus-0 d-block position-relative z-index pl-6 pt-2 pb-2 w-100 text-left border-0 text-truncate collapsed" data-toggle="collapse" data-target="#C3+<%=rs.getString("livingSpaceID")%>" aria-expanded="false" aria-controls="collapseThree">
                                              Bed Options
                                            </button>
                                          </h5>
                                        </div>
                                        <div id="C3+<%=rs.getString("livingSpaceID")%>" class="collapse" aria-labelledby="headingThree" data-parent="#<%=rs.getString("livingSpaceID")%>">
                                          <div class="card-body fables-forth-text-color font-14 py-1 py-xl-2 pl-6 pr-0">

                                              
                                              <div class="row">
                                                    <%
                                                    String querySelect4="select *"
                                                    + " from towerbedoptions WHERE livingSpaceID='"+livingSpaceID+"'"; 
                                                    System.out.println(querySelect4);
                                                    ResultSet rs4=obj.select(querySelect4);                                    
                                                    while(rs4.next())
                                                    {                    
                                                    %>
                                                       <div class="col-12 col-sm-6 col-lg-4 fables-product-block">
                                                           <div class="card rounded-0 mb-4">
                                                               <div class="row">
                                                                   <div class="fables-product-img col-12"> 
                                                                      <img class="card-img-top rounded-0" src='../LivingSuppliers/BedImages\<%=rs4.getString("bedImage")%>' width="200" height="200" alt="Bed Image">
                                                                      <div class="fables-img-overlay">                                          
                                                                          <ul class="nav fables-product-btns">
                                                                              <li><a href="" class="fables-product-btn"><span class="fables-iconeye"></span></a></li>                                             
                                                                          </ul>
                                                                      </div>
                                                                  </div>
                                                                  <div class="card-body col-12">
                                                                    <h5 class="card-title mx-xl-3" style="text-align: center;">
                                                                        <a href="#" class="fables-main-text-color fables-store-product-title fables-second-hover-color"> Category: <%=rs4.getString("bedCategory")%> </a>
                                                                    </h5>
                                                                    <h5 class="card-title mx-xl-3" style="text-align: center;">
                                                                        <a href="#" class="fables-main-text-color fables-store-product-title fables-second-hover-color"> Type:<%=rs4.getString("bedType")%></a>
                                                                    </h5>
                                                                    <h5 class="card-title mx-xl-3" style="text-align: center;">
                                                                        <a href="#" class="fables-main-text-color fables-store-product-title fables-second-hover-color"> People Can Occupy :<%=rs4.getString("NoOfPeopleCanOccupy")%> </a>
                                                                    </h5>
                                                                    <h5 class="card-title mx-xl-3" style="text-align: center;">
                                                                        <a href="#" class="fables-main-text-color fables-store-product-title fables-second-hover-color"> Clearance: <%=rs4.getString("groundClearance")%> Inch, Storage : <%=rs4.getString("underBedStorage")%>, Extra Height: <%=rs4.getString("extraHeight")%> Inch</a>
                                                                    </h5>
                                                                    
                                                                  </div>
                                                               </div>
                                                            </div>
                                                       </div>
                                                    <%
                                                    }
                                                    %>      
                                                </div>

                                          </div>
                                        </div>
                                      </div>
                                                
                                      <div class="card border-0 mb-2">
                                        <div class="card-header p-0 border bg-transparent rounded-0" id="headingfour">
                                          <h5 class="mb-0 position-relative">
                                            <span class="fables-second-background-color white-color d-inline-block   position-absolute fables-lus-icon pt-2 text-center">
                                                <i class="fas fa-plus"></i>  
                                            </span>
                                            <button class="btn fables-main-text-color bg-transparent font-18 focus-0 d-block position-relative z-index pl-6 pt-2 pb-2 w-100 text-left border-0 text-truncate collapsed" data-toggle="collapse" data-target="#C4+<%=rs.getString("livingSpaceID")%>" aria-expanded="false" aria-controls="collapseFour">
                                              Amenities
                                            </button>
                                          </h5>
                                        </div>
                                        <div id="C4+<%=rs.getString("livingSpaceID")%>" class="collapse" aria-labelledby="headingfour" data-parent="#<%=rs.getString("livingSpaceID")%>">
                                          <div class="card-body fables-forth-text-color font-14 py-1 py-xl-2 pl-6 pr-0">

                                                <div class="row">
                                                    <%
                                                    String querySelect5="select *"
                                                    + " from livingspaceamenities WHERE livingSpaceID='"+livingSpaceID+"'"; 
                                                    ResultSet rs5=obj.select(querySelect5);                                    
                                                    while(rs5.next())
                                                    {                    
                                                    %>
                                                       <div class="col-12 col-sm-6 col-lg-4 fables-product-block">
                                                           <div class="card rounded-0 mb-4">
                                                               <div class="row">
                                                                   <div class="fables-product-img col-12"> 
                                                                      <img class="card-img-top rounded-0" src='../LivingSuppliers\LivingImages\<%=rs5.getString("amenitiesIcon")%>' width="200" height="200" alt="dress fashion">
                                                                      <div class="fables-img-overlay">                                          
                                                                          <ul class="nav fables-product-btns">
                                                                              <li><a href="" class="fables-product-btn"><span class="fables-iconeye"></span></a></li>                                             
                                                                          </ul>
                                                                      </div>
                                                                  </div>
                                                                  <div class="card-body col-12">
                                                                    <h6 class="card-title mx-xl-3" style="text-align: center;">
                                                                        <a href="#" class="fables-main-text-color fables-store-product-title fables-second-hover-color"><%=rs5.getString("amenitiesName")%></a>
                                                                    </h6>

                                                                  </div>
                                                               </div>
                                                            </div>
                                                       </div>
                                                    <%
                                                    }
                                                    %> 
                                                </div>
                                                
                                          </div>
                                        </div>
                                      </div>
                                                
                                      <div class="card border-0 mb-2">
                                        <div class="card-header p-0 border bg-transparent rounded-0" id="headingfive">
                                          <h5 class="mb-0 position-relative">
                                            <span class="fables-second-background-color white-color d-inline-block   position-absolute fables-lus-icon pt-2 text-center">
                                                <i class="fas fa-plus"></i>  
                                            </span>
                                            <button class="btn fables-main-text-color bg-transparent font-18 focus-0 d-block position-relative z-index pl-6 pt-2 pb-2 w-100 text-left border-0 text-truncate collapsed" data-toggle="collapse" data-target="#C5+<%=rs.getString("livingSpaceID")%>" aria-expanded="false" aria-controls="collapseFive">
                                              Parking
                                            </button>
                                          </h5>
                                        </div>
                                        <div id="C5+<%=rs.getString("livingSpaceID")%>" class="collapse" aria-labelledby="headingfive" data-parent="#<%=rs.getString("livingSpaceID")%>">
                                          <div class="card-body fables-forth-text-color font-14 py-1 py-xl-2 pl-6 pr-0">

                                                <div class="row">
                                                    <%
                                                    String querySelect6="select *"
                                                    + " from parking WHERE livingSpaceID='"+livingSpaceID+"'"; 
                                                    ResultSet rs6=obj.select(querySelect6);                                    
                                                    while(rs6.next())
                                                    {                    
                                                    %>
                                                       <div class="col-12 col-sm-6 col-lg-4 fables-product-block">
                                                           <div class="card rounded-0 mb-4">
                                                               <div class="row">
                                                                   <div class="fables-product-img col-12"> 
                                                                      <img class="card-img-top rounded-0" src='../LivingSuppliers/ParkingImages\<%=rs6.getString("parkingImage")%>' width="200" height="200" alt="parking Image">
                                                                      <div class="fables-img-overlay">                                          
                                                                          <ul class="nav fables-product-btns">
                                                                              <li><a href="" class="fables-product-btn"><span class="fables-iconeye"></span></a></li>                                             
                                                                          </ul>
                                                                      </div>
                                                                  </div>
                                                                  <div class="card-body col-12">
                                                                    <h5 class="card-title mx-xl-3" style="text-align: center;">
                                                                        <a href="#" class="fables-main-text-color fables-store-product-title fables-second-hover-color">Type:<%=rs6.getString("parkingType")%></a>
                                                                    </h5>
                                                                    <h5 class="card-title mx-xl-3" style="text-align: center;">
                                                                        <a href="#" class="fables-main-text-color fables-store-product-title fables-second-hover-color">Area:<%=rs6.getString("parkingArea")%> Sqrft</a>
                                                                    </h5>
                                                                    <h5 class="card-title mx-xl-3" style="text-align: center;">
                                                                        <a href="#" class="fables-main-text-color fables-store-product-title fables-second-hover-color">Distance: <%=rs6.getString("distance")%> Meter </a>
                                                                    </h5>
                                                                    
                                                                  </div>
                                                               </div>
                                                            </div>
                                                       </div>
                                                    <%
                                                    }
                                                    %>      
                                                </div>
                                                
                                          </div>
                                        </div>
                                      </div>  
                                                
                                                
                                      <div class="card border-0 mb-2">
                                        <div class="card-header p-0 border bg-transparent rounded-0" id="headingsix">
                                          <h5 class="mb-0 position-relative">
                                            <span class="fables-second-background-color white-color d-inline-block   position-absolute fables-lus-icon pt-2 text-center">
                                                <i class="fas fa-plus"></i>  
                                            </span>
                                            <button class="btn fables-main-text-color bg-transparent font-18 focus-0 d-block position-relative z-index pl-6 pt-2 pb-2 w-100 text-left border-0 text-truncate collapsed" data-toggle="collapse" data-target="#C6+<%=rs.getString("livingSpaceID")%>" aria-expanded="false" aria-controls="collapseSix">
                                              Meal Plan
                                            </button>
                                          </h5>
                                        </div>
                                        <div id="C6+<%=rs.getString("livingSpaceID")%>" class="collapse" aria-labelledby="headingsix" data-parent="#<%=rs.getString("livingSpaceID")%>">
                                          <div class="card-body fables-forth-text-color font-14 py-1 py-xl-2 pl-6 pr-0">

                                                <div class="row">
                                                    <%
                                                    String querySelect7="select *"
                                                    + " from mealplan WHERE livingSpaceID='"+livingSpaceID+"'"; 
                                                    ResultSet rs7=obj.select(querySelect7);                                    
                                                    while(rs7.next())
                                                    {                    
                                                    %>
                                                       <div class="col-12 col-sm-6 col-lg-4 fables-product-block">
                                                           <div class="card rounded-0 mb-4">
                                                               <div class="row">
                                                                   <div class="fables-product-img col-12"> 
                                                                      <img class="card-img-top rounded-0" src='../LivingSuppliers/MealPlan\<%=rs7.getString("mealImage")%>' width="200" height="200" alt="dress fashion">
                                                                      <div class="fables-img-overlay">                                          
                                                                          <ul class="nav fables-product-btns">
                                                                              <li><a href="" class="fables-product-btn"><span class="fables-iconeye"></span></a></li>                                             
                                                                          </ul>
                                                                      </div>
                                                                  </div>
                                                                  <div class="card-body col-12">
                                                                    <h5 class="card-title mx-xl-3" style="text-align: center;">
                                                                        <a href="#" class="fables-main-text-color fables-store-product-title fables-second-hover-color"><%=rs7.getString("mealName")%> </a>
                                                                    </h5>
                                                                    <h5 class="card-title mx-xl-3" style="text-align: center;">
                                                                        <a href="#" class="fables-main-text-color fables-store-product-title fables-second-hover-color">Type: <%=rs7.getString("mealType")%> </a>
                                                                    </h5>
                                                                    <h5 class="card-title mx-xl-3" style="text-align: center;">
                                                                        <a href="#" class="fables-main-text-color fables-store-product-title fables-second-hover-color"> Rate: $<%=rs7.getString("ratePerSemester")%></a>
                                                                    </h5>                                                                    
                                                                  </div>
                                                               </div>
                                                            </div>
                                                       </div>
                                                    <%
                                                    }
                                                    %>    
                                                </div>
                                                
                                          </div>
                                        </div>
                                      </div>       
                                                
                                                
                                      <div class="card border-0 mb-2">
                                        <div class="card-header p-0 border bg-transparent rounded-0" id="headingseven">
                                          <h5 class="mb-0 position-relative">
                                            <span class="fables-second-background-color white-color d-inline-block   position-absolute fables-lus-icon pt-2 text-center">
                                                <i class="fas fa-plus"></i>  
                                            </span>
                                            <button class="btn fables-main-text-color bg-transparent font-18 focus-0 d-block position-relative z-index pl-6 pt-2 pb-2 w-100 text-left border-0 text-truncate collapsed" data-toggle="collapse" data-target="#C7+<%=rs.getString("livingSpaceID")%>" aria-expanded="false" aria-controls="collapseSeven">
                                              Gallery
                                            </button>
                                          </h5>
                                        </div>
                                        <div id="C7+<%=rs.getString("livingSpaceID")%>" class="collapse" aria-labelledby="headingseven" data-parent="#<%=rs.getString("livingSpaceID")%>">
                                          <div class="card-body fables-forth-text-color font-14 py-1 py-xl-2 pl-6 pr-0">

                                                <div class="row">
                                                   
                                                <%
                                                String querySelect8="select *"
                                                + " from galleryImages WHERE livingSpaceID='"+livingSpaceID+"'"; 
                                                System.out.println(querySelect8);
                                                ResultSet rs8=obj.select(querySelect8);                                    
                                                while(rs8.next())
                                                {                    
                                                %>
                                                   <div class="col-12 col-sm-6 col-lg-4 fables-product-block">
                                                       <div class="card rounded-0 mb-4">
                                                           <div class="row">
                                                               <div class="fables-product-img col-12"> 
                                                                  <img class="card-img-top rounded-0" src='../LivingSuppliers/GalleryImages\<%=rs8.getString("galleryImage")%>' width="200" height="200" alt="Gallery">
                                                                  <div class="fables-img-overlay">                                          
                                                                      <ul class="nav fables-product-btns">
                                                                          <li><a href="" class="fables-product-btn"><span class="fables-iconeye"></span></a></li>                                             
                                                                      </ul>
                                                                  </div>
                                                              </div>
                                                              <div class="card-body col-12">
                                                                <h5 class="card-title mx-xl-3" style="text-align: center;">
                                                                    <a href="#" class="fables-main-text-color fables-store-product-title fables-second-hover-color"><%=rs8.getString("galleryImageHead")%></a>
                                                                </h5>
                                                                
                                                              </div>
                                                           </div>
                                                        </div>
                                                   </div>
                                                <%
                                                }
                                                %>      
                                                </div>
                                                
                                          </div>
                                        </div>
                                      </div>                  

                                                
                                                
                                    </div>
                                     <p class="fables-product-info">
                                         <a href="Step4_Booking.jsp?flag=1 &livingSpaceID=<%=livingSpaceID%>  &livingSpaceName=<%=livingSpaceID%>  " class="btn fables-second-border-color fables-second-text-color fables-btn-rouned fables-hover-btn-color font-14 p-2 px-2 px-xl-4">
                                            <span class="fables-iconToDelete">  <i class="fas fa-plus"></i> </span> 
                                            <span class="fables-btn-value">BOOK NOW</span>
                                        </a>
                                    </p>            
                                                
                            </div>
                            <!-- CHOOSE DIV END -->                                 
                        </div>    
                        <!-- One living space ROW END -->   
                    </div>
                </div>
                <%
                }
                %> 
           
      

    </div>        
</div> 
<!-- /End page content -->
 
<!-- HEADER ONE STARTS-->
<%@include file="VandalHomeFooter.jsp" %>
<!-- HEADER ONE ENDS-->