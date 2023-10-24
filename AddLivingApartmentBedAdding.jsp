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
        <title>Vandal Sign-up</title>
        
            <script type="text/javascript" lang="javascript">
          
            </script>
     
    </head>
    <body class="backgroungPicture4">
       
        
        <form action="ApartmentBookingTwoEmergencyContact.jsp" method="get">
           
            <table class="Content_Table">
                    <caption>
                         Bed Options
                    </caption> 

                                <tr>
  <tr>
                <td>Bed Category:</td>
                <td>
                    <select name="bed_category">
                        <option value="Twin Single Bed">Twin Single Bed</option>
                        <option value="Twin Single Double">Twin Single Double</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Bed Type:</td>
                <td>
                    <select name="bed_type">
                        <option value="XL">XL</option>
                        <option value="XXL">XXL</option>
                        <option value="Single">Single</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Ground Clearance (in Inches):</td>
                <td>
                    <input type="text" name="ground_clearance">
                </td>
            </tr>
            <tr>
                <td>Under Bed Storage:</td>
                <td>
                    <select name="under_bed_storage">
                        <option value="Yes">Yes</option>
                        <option value="No">No</option>
                    </select>
                </td>
            </tr>

            <tr>
                <td>Bed Rise/Add Extra Height (in Inches):</td>
                <td>
                    <input type="text" name="extra_height">
                </td>
            </tr>
            <tr>
                <td>Bed Image:</td>
                <td>
                    <input type="file" name="bed_image">
                </td>
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
    