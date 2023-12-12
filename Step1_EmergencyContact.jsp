<!-- HEADER ONE STARTS-->
<%@include file="VandalHomeHeader.jsp" %>
<!-- HEADER ONE ENDS-->
     
<%
String currentVandalStatus="0";    

String querySelect0 = "select vandalStatus from vandaldetails where vandalID='"+SSNvandalID+"'";
ResultSet rs0 = obj.select(querySelect0);
while (rs0.next()) 
{
    currentVandalStatus=rs0.getString("vandalStatus");            

} 
System.out.print(currentVandalStatus);       


if(currentVandalStatus.equalsIgnoreCase("1")) 
{
    response.sendRedirect("Step2_MorePersonalInfo.jsp");
}
else if(currentVandalStatus.equalsIgnoreCase("2")) 
{   
    response.sendRedirect("Step3_SelectApartment.jsp");;
}   

else if(currentVandalStatus.equalsIgnoreCase("3")) 
{   
    response.sendRedirect("Step4_Booking.jsp");
}  

String firstName = "";
String lastName = "";
String vandalNumber ="";
String cellNumber = "";
String email = "";
String dateOfBirth = "";
String gender = "";
String classification = "";
String userName = "";
String password = "";
String profilePicture = "";

if (SSNvandalID != null) 
{
    String querySelect1 = "select * from vandaldetails where vandalID='"+SSNvandalID+"'";
    ResultSet rs1 = obj.select(querySelect1);
    while (rs1.next()) 
    {
        firstName=rs1.getString("firstName");            
        lastName =rs1.getString("lastName");
        vandalNumber=rs1.getString("vandalNumber");
        cellNumber=rs1.getString("cellNumber");
        email=rs1.getString("email");
        dateOfBirth=rs1.getString("dateOfBirth"); 
        gender=rs1.getString("gender"); 
        classification=rs1.getString("classification");                               
        userName=rs1.getString("userName"); 
        password=rs1.getString("password");  

        profilePicture=rs1.getString("profilePicture");
    }
}
if(request.getParameter("B_Submit")!=null) {
    String emergencyContact = request.getParameter("emergencyContact");
    String relationship = request.getParameter("relationship");
    String street = request.getParameter("street");
    String street2 = request.getParameter("street2");
    String city = request.getParameter("city");
    String state = request.getParameter("state");
    String zipCode = request.getParameter("zipCode");
    String country = request.getParameter("country");
    String emergencyNumber = request.getParameter("emergencyNumber");
    String emergencyEmail = request.getParameter("emergencyEmail");

    String values1 = "'" + SSNvandalID
    + "','" + emergencyContact        
    + "','" + relationship
    + "','" + street
    + "','" + street2
    + "','" + city
    + "','" + state
    + "','" + zipCode
    + "','" + country
    + "','" + emergencyNumber
    + "','" + emergencyEmail + "'";

    String columns = "vandalID,contactName,relationship,street,street2,city,state,zipCode,country,emergencyNumber,emergencyEmail";
    String queryInsert = "INSERT INTO emergencycontactinfo(" + columns + ") VALUES (" + values1 + ")";
    System.out.println(queryInsert);
    boolean status = obj.executeCommand(queryInsert);

    if (status == true) 
    {
        String queryUpadate = "update VandalDetails set vandalStatus=1 where vandalID=" + SSNvandalID;
        System.out.print(queryUpadate);                
        obj.executeCommand(queryUpadate);
        
        response.sendRedirect("Step2_MorePersonalInfo.jsp");
        out.print("<script> alert('Success..Move Forward')</script>");
    } 
    else 
    {
        out.print("<script> alert('Error')</script>");
    }

}

           
%>
     
<!-- Start Breadcrumbs -->
<div class="fables-light-background-color ">
    <div class="container"> 
        <nav aria-label="breadcrumb">
            <ol class="fables-breadcrumb breadcrumb px-0 py-3">
                <li class="breadcrumb-item text-center">
                    <h3 class="font-35 font-weight-bold fables-main-text-color text-danger">                       
                        Emergency Contact
                    </h3>
                    
                </li>
            </ol>
        </nav> 
    </div>
</div>
<!-- /End Breadcrumbs -->
 <style>
        .container2  {
            background-image: url('1.jpg'); /* Replace 'your-image-path.jpg' with the path to your image file */
            background-size: cover; /* Adjust the background size as needed */
            background-position: center; /* Adjust the background position as needed */
            height: 100%; /* Adjust the height as needed */
            /* Other styles for the container */
        }
    </style>    
<!-- Start page content --> 
<div class="container  container2 "  > 
    <div class="row overflow-hidden">
        <div class="col-12 col-md-10 offset-md-1 mt-5">                    
          <!-- Added for a Top Space -->                      
        </div>
    </div>        

    <div class="row mb-4 mb-md-5 overflow-hidden ">
        <div class="col-12 col-sm-6 wow fadeInLeft ">            
            
            <form method="POST">
                <table class="Content_Table">                    
                    <tr>                
                       <td>Emergency Contact Person</td>
                       <!--
                       <td><input type="text" name="emergencyContact" id="emergency_contact" required class="form-control fables-subscribe-input fables-btn-rouned" style="color: brown "></td>
                       -->
                        <td><input type="text" name="emergencyContact" id="emergency_contact" required ></td>
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
                        <td><input type="text" name="zipCode" id="zip_code" required></td>
                    </tr>
                    <tr>
                        <td>Country</td>
                        <td><input type="text" name="country" id="country" required></td>
                    </tr>
                    <tr>
                        <td>Emergency Contact Number</td>
                        <td><input type="text" name="emergencyNumber" id="emergency_number" required></td>
                    </tr>
                    <tr>
                        <td>Emergency Contact Email</td>
                        <td><input type="email" name="emergencyEmail" id="emergency_email" required></td>
                    </tr>
                    
                    
                    <tr>
                        <td>
                            <input type="reset" value="Reset" name="buttonReset" class="custom-button">
                        </td>
                        <td>
                            <input type="submit" value="Save & Continue" name="B_Submit" class="custom-button">
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    
        <!-- Added for Display Side Image and Text-->
        <div class="col-12 col-sm-6 wow fadeInRight">
            <div class="signup-info text-left">
                <table border="0" width="550">
                    
                    <tr>
                        <td width="200" >
                             <img src='ProfilePictures/<%=profilePicture%>' width="100%" height="150%"> 
                        </td> 
                        <td width="350" style="padding: 10px;">
                            <table border="0">  
                                <tr> 
                                    <td> <h5 class="font-20 font-weight-bold text-black text-uppercase"> Name : </h5> </td> 
                                    <td>  <h5 class="font-20 font-weight-bold text-black text-uppercase"><%=SSNvandalName%></h5></td>
                                </tr>
                                <tr> <td> <h5> Vandal Number</h5> </td>  <td> <h5> :  <%=vandalNumber%> </h5> </td> </tr>
                                <tr> <td> <h5> Cell Number</h5> </td>  <td> <h5> : <%=cellNumber%> </h5> </td> </tr>
                                <tr> <td> <h5> Email</h5> </td>  <td> <h5> : <%=email%> </h5> </td> </tr>
                                <tr> <td> <h5> Date of Birth</h5> </td>  <td> <h5> : <%=dateOfBirth%> </h5> </td> </tr>
                                <tr> <td> <h5> Gender</h5> </td>  <td> <h5> : <%=gender%> </h5> </td> </tr>
                                <tr> <td> <h5> Classification</h5> </td>  <td> <h5> :  <%=classification%> </h5> </td> </tr>                                
                            </table>  
                            
                        </td> 
                    </tr>
                </table>
            </div>
        </div>
                

    </div>        
</div> 
<!-- /End page content -->
 
<!-- HEADER ONE STARTS-->
<%@include file="VandalHomeFooter.jsp" %>
<!-- HEADER ONE ENDS-->