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
       
        
        <form method="post"> 
           
            <table class="Content_Table">
                    <caption>
                        Emergency Contact 
                    </caption> 

                                <tr>
                <td>Emergency Contact</td>
                <td><input type="text" name="emergency_contact" id="emergency_contact" required></td>
            </tr>
            <tr>
                <td>Relationship To You</td>
                <td><input type="text" name="relationship" id="relationship" required></td>
            </tr>
            <tr>
                <td>Street</td>
                <td><input type="text" name="street" id="street" required></td>
            </tr>
            <tr>
                <td>Street2</td>
                <td><input type="text" name="street2" id="street2"></td>
            </tr>
            <tr>
                <td>City</td>
                <td><input type="text" name="city" id="city" required></td>
            </tr>
            <tr>
                <td>State/ Providence</td>
                <td><input type="text" name="state" id="state" required></td>
            </tr>
            <tr>
                <td>Zip Code</td>
                <td><input type="text" name="zip_code" id="zip_code" required></td>
            </tr>
            <tr>
                <td>Country</td>
                <td><input type="text" name="country" id="country" required></td>
            </tr>
            <tr>
                <td>Emergency Contact Number</td>
                <td><input type="text" name="emergency_number" id="emergency_number" required></td>
            </tr>
            <tr>
                <td>Emergency Contact Email</td>
                <td><input type="email" name="emergency_email" id="emergency_email" required></td>
            </tr>
                    <td>
                        <input type="reset" value="Reset" name="buttonReset" >
                    </td>
                    <td>
                        <input type="submit" value="Save & Continue" name="buttonSubmit" >
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
    