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
                         Floor Plan
                    </caption> 
            <tr>
                <td>Floor Name:</td>
                <td>
                    <select name="floor_name">
                        <option value="First Floor">First Floor</option>
                        <option value="Second Floor">Second Floor</option>
                        <option value="Third Floor">Third Floor</option>
                        <!-- Add more floor options up to 10th Floor -->
                    </select>
                </td>
            </tr>
            <tr>
                <td>Gender Category:</td>
                <td>
                    <select name="gender_category">
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Floor Type:</td>
                <td>
                    <select name="floor_type">
                        <option value="WiiSE">WiiSE</option>
                        <option value="Computer Science">Computer Science</option>
                        <option value="Engineering">Engineering</option>
                        <option value="Academic Traditions Communities">Academic Traditions Communities</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Floor Plan:</td>
                <td><input type="file" name="floor_plan"></td>
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
    