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

if(currentVandalStatus.equalsIgnoreCase("0")) 
{
    response.sendRedirect("Step1_EmergencyContact.jsp");
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
if(request.getParameter("B_Submit")!=null) 
{
    String fraternityInterest = request.getParameter("fraternityInterest");
    String crimeConviction = request.getParameter("crimeConviction");
    

    String values1 = "'" + SSNvandalID
    + "','" + fraternityInterest
    + "','" + crimeConviction + "'";

    String columns = "vandalID,fraternityInterest,crimeConviction";
    String queryInsert = "INSERT INTO morepersonalinfo(" + columns + ") VALUES (" + values1 + ")";
    System.out.println(queryInsert);
    boolean status = obj.executeCommand(queryInsert);

    if (status == true) 
    {
        String queryUpadate = "update VandalDetails set vandalStatus=2 where vandalID=" + SSNvandalID;
        System.out.print(queryUpadate);                
        obj.executeCommand(queryUpadate);
        
        response.sendRedirect("Step3_SelectApartment.jsp");
        out.print("<script> alert('Added Success')</script>");
    } 
    else 
    {
        out.print("<script> alert('Error')</script>");
    }

}

           
%>
     
<!-- Start Breadcrumbs -->
<div class="fables-light-background-color container2">
    <div class="container"> 
        <nav aria-label="breadcrumb">
            <ol class="fables-breadcrumb breadcrumb px-0 py-3">
                <li class="breadcrumb-item text-center">
                    <h3 class="font-20 font-weight-bold fables-main-text-color text-danger">                       
                        Emergency Contact-> More Information
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
                <table class="Content_Table" style="width: 500px;">                    
                    <tr>                
                       <td>Fraternity & Society Life Interest</td>                      
                        <td>
                            <select name="fraternityInterest">
                                <option value="No">No</option>
                                <option value="Yes">Yes</option>                                
                            </select>
                        </td>    
                    </tr>
                    <tr>
                        <td>Crime Conviction</td>
                        <td>
                            <select name="crimeConviction"> 
                                <option value="No">No</option>
                                <option value="Yes">Yes</option>                                
                            </select>
                        </td>        
                    </tr>
                    
                    
                    <tr>
                        <td>
                            <input type="reset" value="Reset" name="buttonReset" >
                        </td>
                        <td>
                            <input type="submit" value="Save & Continue" name="B_Submit" >
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