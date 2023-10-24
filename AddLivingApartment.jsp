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
       
        
        <form action="AddLivingApartmentFeatures.jsp" method="get">
           
            <table class="Content_Table">
                    <caption>
                        Living Area
                    </caption> 

                                <tr>
  
        <tr>
            <td>Apartment Name:</td>
            <td><input type="text" name="apartment_name"></td>
        </tr>
        <tr>
            <td>Rate (Per Semester):</td>
            <td><input type="text" name="rate_per_semester"></td>
        </tr>
        <tr>
            <td>Location:</td>
            <td><input type="text" name="location"></td>
        </tr>
        <tr>
            <td>Type:</td>
            <td>
                <select name="type">
                    <option value="Apartment">Apartment</option>
                    <option value="Home">Home</option>
                </select>
            </td>
        </tr>


            </tr>
                    <td>
                       <button type="reset">Save & Continue</button>
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
    