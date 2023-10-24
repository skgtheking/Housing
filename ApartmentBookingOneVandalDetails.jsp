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
    <h2>Registration Details</h2>

            <table>
                    <tr>
                        <td><label for="first_name"><strong>First Name:</strong></label></td>
                        <td><span id="first_name"></span></td>
                    </tr>
                    <tr>
                        <td><label for="last_name"><strong>Last Name:</strong></label></td>
                        <td><span id="last_name"></span></td>
                    </tr>
                    <tr>
                        <td><label for="vandal_number"><strong>Vandal Number:</strong></label></td>
                        <td><span id="vandal_number"></span></td>
                    </tr>
                    <tr>
                        <td><label for="gender"><strong>Gender:</strong></label></td>
                        <td><span id="gender"></span></td>
                    </tr>
                    <tr>
                        <td><label for="classification"><strong>Classification:</strong></label></td>
                        <td><span id="classification"></span></td>
                    </tr>
                    <tr>
                        <td><label for="vandal_image"><strong>Vandal Image:</strong></label></td>
                        <td><span id="vandal_image"></span></td>
                    </tr>
                </table>
    
                <table>
                    <tr>
                        <td><label for="keyPin">Key Pin:</label></td>
                        <td><input type="text" id="keyPin" name="keyPin"></td>
                    </tr>
                    <tr>
                        <td><label for="genderIdentity">Gender Identity:</label></td>
                        <td><input type="text" id="genderIdentity" name="genderIdentity"></td>
                    </tr>
                    <tr>
                        <td><label for="fraternityInterests">Fraternity & Social Interests:</label></td>
                        <td>
                            <select id="fraternityInterests" name="fraternityInterests">
                                <option value="Yes">Yes</option>
                                <option value="No">No</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td><label for="crimeConviction">Crime Conviction:</label></td>
                        <td>
                            <select id="crimeConviction" name="crimeConviction">
                                <option value="Yes">Yes</option>
                                <option value="No">No</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <button type="submit">Save & Continue</button>
                            <button type="button" id="back">Back</button>
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
    