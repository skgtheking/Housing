<!-- HEADER  STARTS-->
<%@include file="GuestHomeHeader.jsp" %>

<div class="div_login">

<div class="div_Heading" >
    <p class="align_center_p"> Seller Details </p>
</div>
              
    
<table class="Round_corner_Form_Base">
    <tr>
        <td rowspan="3">    
<!-- HEADER  ENDS-->     

<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="db.DBConnection" id="obj" ></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Parking</title>
        
            <script type="text/javascript" lang="javascript">
          
            </script>
     
    </head>
    <body class="backgroungPicture4">
       
        
        <form action="ApartmentBookingTwoEmergencyContact.jsp" method="get">
           
            <table class="Content_Table">
                    <caption>
                         Parking
                    </caption> 


            <tr>
            <td>Parking Area (in Sqrt)</td>
            <td><input type="text" name="parking_area" id="parking_area" /></td>
        </tr>
        <tr>
            <td>Type</td>
            <td>
                <select name="parking_type" id="parking_type">
                    <option value="Ground Floor">Ground Floor</option>
                    <option value="Ground">Ground</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>Distance From Living Area (in Meters)</td>
            <td><input type="text" name="distance" id="distance" /></td>
        </tr>
        <tr>
            <td>Parking Area</td>
            <td><input type="file" name="parking_file" id="parking_file" /></td>
        </tr>
            </tr>
                    <td>
                       <button type="reset">Reset</button>
                    </td>
                    <td>
                        
                        <button type="submit">Save & Continue</button>
                    </td>
              </tr>

           </table>


           
        </form>
    </body>
</html>
<!-- FOOTER  STARTS-->
        </td>

        <td>
            <!-- Small Slide  STARTS-->
             <img src="../TemplateStyleFiles/img/pic1.jpg" width="580px" height="400px" >
            <!-- Small Slide  ENDS-->
        </td>
    </tr>
    <tr>
        <td>
            <!-- Small Slide  STARTS-->
             <img src="../TemplateStyleFiles/img/pic2.jpg" width="580px" height="400px" >
            <!-- Small Slide  ENDS-->
        </td>
    </tr>
     
</table>

</div>    

<%@include file="GuestHomeFooter.jsp" %>
<!-- FOOTER  ENDS-->
    