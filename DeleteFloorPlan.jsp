<!-- HEADER ONE STARTS-->
<%@include file="LivingSuppliersHomeHeader.jsp" %>
<!-- HEADER ONE ENDS-->
<%   
String livingSpaceFloorPlanID= "";
String livingSpaceID= "";
String livingSpaceName= "";

livingSpaceFloorPlanID=request.getParameter("livingSpaceFloorPlanID");
livingSpaceID=request.getParameter("livingSpaceID");
livingSpaceName=request.getParameter("livingSpaceName");

if (request.getParameter("B_Delete")!=null)  
{    

    String queryDelete="delete from floorplan where floorPlanID="+livingSpaceFloorPlanID;
    boolean result=obj.executeCommand(queryDelete);
    if(result)
    {
        out.print("<script>alert('Deleted')</script>");
    }
    else
    {
        out.print("<script>alert('Not Deleted')</script>");
    }
     response.sendRedirect("FloorPlan.jsp?flag=1&livingSpaceID=" + livingSpaceID + "&livingSpaceName=" + livingSpaceName );
}
if (request.getParameter("B_Cancel")!=null)  
{    
    response.sendRedirect("FloorPlan.jsp?flag=1&livingSpaceID=" + livingSpaceID + "&livingSpaceName=" + livingSpaceName );
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
                        Are you sure you want to delete this? 
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
            <form method="post"> 
            <%
            String querySelect="select *"
            + " from floorplan WHERE floorPlanID="+livingSpaceFloorPlanID;
            ResultSet rs=obj.select(querySelect);                                    
            while(rs.next())
            {                    
            %>
                <table class="custom-table" brder="1">
                                <div class="fables-product-img col-12" style="text-align: center;">
                                      <img src='FloorPlanImages\<%=rs.getString("floorImage")%>' width="200" height="200"  alt="dress fashion">
                                      <div class="fables-img-overlay">                                          
                                          <ul class="nav fables-product-btns">
                                              <li><a href="" class="fables-product-btn"><span class="fables-iconeye"></span></a></li>
                                              <li><a href="" class="fables-product-btn"><span class="fables-iconcompare"></span></a></li>
                                              <li><button class="fables-product-btn"><span class="fables-iconheart"></span></button></li>
                                          </ul>
                                      </div>
                                  </div>
                    <tr>
                        <td>Floor Plan ID:</td>
                        <td><%=livingSpaceFloorPlanID%></td>
                    </tr>

                    <tr>
                        <td>Floor Plan Name:</td>
                        <td><%=rs.getString("floorName")%></td>
                    </tr>

                    <tr>
                        <td> Total Rooms</td>
                        <td><%=rs.getString("totalRooms")%></td>
                    </tr>
                    
                    <tr>
                        <td> Gender Category </td>
                        <td><%=rs.getString("genderCategory")%></td>
                    </tr>

                    <tr>
                        <td> Floor Type</td>
                        <td><%=rs.getString("floorType")%></td>
                    </tr>
                        
                    <tr>
                        <td>
                           <button type="submit" name="B_Cancel" class="custom-button">Cancel</button>
                        </td>
                        <td>                           
                            <button type="submit" name="B_Delete" class="custom-button">Delete</button>
                        </td>
                    </tr>
                </table>    
            <%
            }
            %> 
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
 
 


<!-- /End page content -->


<!-- HEADER ONE STARTS-->
<%@include file="LivingSuppliersHomeFooter.jsp" %>
<!-- HEADER ONE ENDS-->