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
                        
                        Living Spaces
                    </h3>
                    
                </li>
            </ol>
        </nav> 
    </div>
</div>
<!-- /End Breadcrumbs -->
     
<!-- Start page content --> 
<div class="container"> 
    <%
    String querySelect="select *"
    + " from livingspace"; 
    ResultSet rs=obj.select(querySelect);                                    
    while(rs.next())
    {                    
    %>
        <div class="row my-4 my-lg-5">
            <div class="col-12 col-lg-8">   
                <h2 class="font-23 semi-font my-3" >ID: <%=rs.getString("livingSpaceID")%> | Name: <%=rs.getString("livingSpaceName")%></h2>

                <img src='LivingImages\<%=rs.getString("iconImage")%>' width="300" height="150" class="img-fluid"> 
                <table border="1" width="300">
                    <tr>
                        <td>
                            <p class="font-15 font-weight-bold fables-second-text-color my-2 mx-xl-3">Location : </p>
                        </td>
                        <td>
                            <p class="font-15 font-weight-bold fables-second-text-color my-2 mx-xl-3"><%=rs.getString("location")%></p>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <p class="font-15 font-weight-bold fables-second-text-color my-2 mx-xl-3">Type : </p>
                        </td>
                        <td>
                            <p class="font-15 font-weight-bold fables-second-text-color my-2 mx-xl-3"><%=rs.getString("type")%></p>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <p class="font-15 font-weight-bold fables-second-text-color my-2 mx-xl-3">Rate : </p>
                        </td>
                        <td>
                            <p class="font-15 font-weight-bold fables-second-text-color my-2 mx-xl-3">$ <%=rs.getString("ratePerSemester")%></p>
                        </td>
                    </tr>
                    
                </table>

            </div>
            <div class="col-12 col-lg-4">
                <div class="mt-4">
                    <h2 class="position-relative font-23 semi-font fables-blog-category-head fables-main-text-color fables-second-before pl-3 mb-4">Click Features to Add</h2>
                    <ul class="nav fables-blog-cat-list fables-forth-text-color fables-second-hover-color-link">
                        
                        <li><a href="Amenities.jsp?flag=1&livingSpaceID=<%=rs.getString("livingSpaceID")%> &livingSpaceName=<%=rs.getString("livingSpaceName")%>">Add Apartment Amenities</a></li>
                        <li><a href="TowerBedOptions.jsp?flag=1&livingSpaceID=<%=rs.getString("livingSpaceID")%> &livingSpaceName=<%=rs.getString("livingSpaceName")%>">Add Tower Bed Options</a></li>
                        <li><a href="Gallery.jsp?flag=1&livingSpaceID=<%=rs.getString("livingSpaceID")%> &livingSpaceName=<%=rs.getString("livingSpaceName")%>">Add More Photos</a></li>
                        <li><a href="MealPlan.jsp?flag=1&livingSpaceID=<%=rs.getString("livingSpaceID")%> &livingSpaceName=<%=rs.getString("livingSpaceName")%>">Add Meal Plan</a></li>
                        <li><a href="Parking.jsp?flag=1&livingSpaceID=<%=rs.getString("livingSpaceID")%> &livingSpaceName=<%=rs.getString("livingSpaceName")%>">Add Parking Facilities</a></li>
                        <li><a href="FloorPlan.jsp?flag=1&livingSpaceID=<%=rs.getString("livingSpaceID")%> &livingSpaceName=<%=rs.getString("livingSpaceName")%>">Add Floor Plan</a></li>
                        <li><a href="Rooms.jsp?flag=1&livingSpaceID=<%=rs.getString("livingSpaceID")%> &livingSpaceName=<%=rs.getString("livingSpaceName")%>">Add Rooms</a></li>
                    </ul>
                    
                </div>   
            </div>
        </div>     
        <hr/>            
    <%
    }
    %> 
</div> 
<!-- /End page content -->
 
<!-- HEADER ONE STARTS-->
<%@include file="LivingSuppliersHomeFooter.jsp" %>
<!-- HEADER ONE ENDS-->