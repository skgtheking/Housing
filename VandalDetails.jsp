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
       
        
        <form action="UserDetailsProfilePictureUpload.jsp" enctype="multipart/form-data" method="post"> 
           
              <table class="Content_Table">
                    <caption>
                        Vandal Details
                    </caption> 

                    <tr>
                        <td><label for="first_name">First Name</label></td>
                        <td><input type="text" id="first_name" name="first_name" required></td>
                    </tr>
                    <tr>
                        <td><label for="last_name">Last Name</label></td>
                        <td><input type="text" id="last_name" name="last_name" required></td>
                    </tr>
                    <tr>
                        <td><label for="vandal_number">Vandal Number</label></td>
                        <td><input type="text" id="vandal_number" name="vandal_number" required></td>
                    </tr>
                    <tr>
                        <td><label for="vandal_Cell_number">Vandal Cell Number</label></td>
                        <td><input type="text" id="vandal_Cell_number" name="vandal_number" required></td>
                    </tr>
                    <tr>
                        <td><label for="vandal_email">Vandal Email</label></td>
                        <td><input type="text" id="vandal_email" name="vandal_number" required></td>
                    </tr>

                    <tr>
                        <td><label for="password">Password</label></td>
                        <td><input type="text" id="password" name="vandal_number" required></td>
                    </tr>
                    <tr>
                        <td><label for="retype_password">Retype Password</label></td>
                        <td><input type="text" id="retype_password" name="vandal_number" required></td>
                    </tr>
                    
                    
                    <tr>
                        <td><label>Gender:</label></td>
                        <td>
                            <input type="radio" id="male" name="gender" value="Male">
                            <label for="male">Male</label>
                            <input type="radio" id="female" name="gender" value="Female">
                            <label for="female">Female</label>
                        </td>
                    </tr>
                    <tr>
                        <td><label for="classification">Classification</label></td>
                        <td>
                            <select id="classification" name="classification">
                                <option value="First Year">First Year</option>
                                <option value="Non-First Year">Non-First Year</option>
                                <option value="Other">Other</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td><label for="vandal_image">Vandal Image</label></td>
                        <td><input type="file" id="vandal_image" name="vandal_image"></td>
                    </tr>

                    <td>
                        <input type="reset" value="Reset" name="buttonReset" >
                    </td>
                    <td>
                        <input type="submit" value="Sign-Up" name="buttonSubmit" >
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
    