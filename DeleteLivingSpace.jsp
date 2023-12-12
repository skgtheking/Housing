<!-- HEADER ONE STARTS-->
<%@include file="LivingSuppliersHomeHeader.jsp" %>
<!-- HEADER ONE ENDS-->
<%   
String deleteLivingSpaceId = request.getParameter("deleteLivingSpace");
String flag = request.getParameter("flag");

if (request.getParameter("B_Delete")!=null)  
{    

    String queryDelete="delete from livingspace WHERE livingSpaceID="+deleteLivingSpaceId;
    boolean result=obj.executeCommand(queryDelete);
    if(result)
    {
        out.print("<script>alert('Deleted')</script>");
    }
    else
    {
        out.print("<script>alert('Not Deleted')</script>");
    }
     response.sendRedirect("AddLivingApartment.jsp" );
}
if (request.getParameter("B_Cancel")!=null)  
{    
    response.sendRedirect("AddLivingApartment.jsp" );
}
%>
<!-- Start Breadcrumbs -->
<div class="fables-light-background-color ">
    <div class="container"> 
        <nav aria-label="breadcrumb">
            <ol class="fables-breadcrumb breadcrumb px-0 py-3">
                <li class="breadcrumb-item text-center">
                    <h3 class="font-35 font-weight-bold fables-main-text-color text-danger">
                        &nbsp;&nbsp;&nbsp;&nbsp; 
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        Are you sure you want to delete this living space? 
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


            

            // Now you can use deleteLivingSpaceId and flag as needed in your logic
            String querySelect="";
            if (flag.equalsIgnoreCase("1"))
            {
                 querySelect="select *"
                + " from livingspace where livingSpaceID='"+deleteLivingSpaceId+"'"; 
            }
            ResultSet rs=obj.select(querySelect);                                    
            while(rs.next())
            {                    
            %>       
           
                <table class="custom-table">
                                <div class="fables-product-img col-12" style="text-align: center;">
                                      <img src='LivingImages\<%=rs.getString("iconImage")%>' width="200" height="200"  alt="dress fashion">
                                      <div class="fables-img-overlay">                                          
                                          <ul class="nav fables-product-btns">
                                              <li><a href="" class="fables-product-btn"><span class="fables-iconeye"></span></a></li>
                                              <li><a href="" class="fables-product-btn"><span class="fables-iconcompare"></span></a></li>
                                              <li><button class="fables-product-btn"><span class="fables-iconheart"></span></button></li>
                                          </ul>
                                      </div>
                                  </div>
                    <tr style="border: 1px solid #dddddd;">
                        <td><h5 style="color: #c83821;">Living Space</h5></td>
                        <td><h5 style="color: #c83821;">: <%=deleteLivingSpaceId%> /  <%=rs.getString("livingSpaceName")%></h5></td>
                    </tr>

                    <tr style="border: 1px solid #dddddd; background-color: #f2f2f2;">
                        <td> Location</td>
                        <td>: <%=rs.getString("location")%></td>
                    </tr>

                    <tr style="border: 1px solid #dddddd; background-color: #f2f2f2;">
                        <td> Type</td>
                        <td>: <%=rs.getString("type")%></td>
                    </tr>
                    
                    <tr style="border: 1px solid #dddddd; background-color: #f2f2f2;">
                        <td> Rate Per Semester:</td>
                        <td>: <%=rs.getString("ratePerSemester")%></td>
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









