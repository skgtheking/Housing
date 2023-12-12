<!-- HEADER ONE STARTS-->
<%@include file="VandalHomeHeader.jsp" %>
<!-- HEADER ONE ENDS-->
     
<%

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
%>
     
<!-- Start Breadcrumbs -->
<div class="fables-light-background-color ">
    <div class="container"> 
        <nav aria-label="breadcrumb">
            <ol class="fables-breadcrumb breadcrumb px-0 py-3">
                <li class="breadcrumb-item text-center">
                    <h3 class="font-35 font-weight-bold fables-main-text-color text-danger">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        Profile
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
            
            <form action="VandalProfileEditing.jsp" enctype="multipart/form-data" method="POST">

              <div class="form-group row">
                <label for="firstName" class="col-sm-4 col-form-label">First Name</label>
                <div class="col-sm-8">
                  <input type="text" class="form-control" name="firstName" required="" value="<%=firstName%>">
                </div>
              </div>

              <div class="form-group row">
                <label for="lastName" class="col-sm-4 col-form-label">Last Name</label>
                <div class="col-sm-8">
                  <input type="text" class="form-control" name="lastName" required="" value="<%=lastName%>">
                </div>
              </div>

              <div class="form-group row">
                <label for="vandalNumber" class="col-sm-4 col-form-label">Vandal Number</label>
                <div class="col-sm-8">
                  <input type="text" class="form-control" name="vandalNumber" value="<%=vandalNumber%>">
                </div>
              </div>

              <div class="form-group row">
                <label for="cellNumber" class="col-sm-4 col-form-label">Cell Number</label>
                <div class="col-sm-8">
                  <input type="text" class="form-control" name="cellNumber" value="<%=cellNumber%>">
                </div>
              </div>

              <div class="form-group row">
                <label for="email" class="col-sm-4 col-form-label">Email</label>
                <div class="col-sm-8">
                  <input type="text" class="form-control" name="email" required="" value="<%=email%>">
                </div>
              </div>
              <div class="form-group row">
                <label class="col-sm-4 col-form-label">Date of Birth</label>
                <div class="col-sm-8">
                  <input type="date" class="form-control rounded-0 p-3" name="dateOfBirth" value="<%=dateOfBirth%>">
                </div>
              </div>
              <div class="form-group row">
                <label class="col-sm-4 col-form-label">Gender</label>
                <div class="col-sm-8">
                  <input type="radio" name="gender" value="Male" <%if(gender.equals("Male")){%> checked=""<%}%>> Male
                  <input type="radio" name="gender" value="Female" <%if(gender.equals("Female")){%> checked=""<%}%>> Female
                </div>
              </div>
              <div class="form-group row">
                <label for="classification" class="col-sm-4 col-form-label">Classification</label>
                <div class="col-sm-8">
                  <select name="classification" class="form-control">
                    <option>Select</option>
                    <option <%if(classification.equals("First Year")){%> selected="selected"<%}%>>First Year</option>
                    <option <%if(classification.equals("Non-First Year")){%> selected="selected"<%}%>>Non-First Year</option>
                    <option <%if(classification.equals("Other")){%> selected="selected"<%}%>>Other</option>
                  </select>
                </div>
              </div>
               <div class="form-group row">
                <label class="col-sm-4 col-form-label">Username</label>
                <div class="col-sm-8">
                  <input type="text" class="form-control rounded-0 p-3" name="userName" required=""  value="<%=userName%>">
                </div>
              </div>    
              <div class="form-group row">
                <label for="password" class="col-sm-4 col-form-label">Password</label>
                <div class="col-sm-8">
                  <input type="password" class="form-control" name="password" required="" value="<%=password%>">
                </div>
              </div>
              <div class="form-group row">
                <label for="profilePicture" class="col-sm-4 col-form-label">Image</label>
                <div class="col-sm-8">
                  <input type="file" class="form-control" name="profilePicture" >
                </div>
              </div>

              <div class="form-group row">
                <div class="col-sm-4"></div>
                <div class="col-sm-8">
                  <button type="reset" class="btn btn-primary" name="buttonReset">Reset</button>
                  <button type="submit" class="btn btn-primary" name="buttonSubmit">Update Profile</button>
                  <input type="hidden" name="hiddenID" value="<%=SSNvandalID%>">
                </div>
              </div>
            </form>



        </div>
    
        <!-- Added for Display Side Image and Text-->
        <div class="col-12 col-sm-6 wow fadeInRight">
            <div class="signup-info text-center">
                <h5 class="font-35 font-weight-bold text-black text-uppercase">
                    <%=SSNvandalName%>
                </h5>
                <br>
                <img src='ProfilePictures/<%=profilePicture%>' width="60%" height="60%"> 
                <br>
                <br>
                <p class="font-14 font-weight-bold fables-main-text-color text-danger">                   
                    Note
                </p>
                <p class="text-center mt-3">        
                    Edit the data and click "Update Profile" Button to edit the profile. If you change the image, then refresh the page to update the image.
                </p>
            </div>
        </div>

    </div>        
</div> 
<!-- /End page content -->
 
<!-- HEADER ONE STARTS-->
<%@include file="VandalHomeFooter.jsp" %>
<!-- HEADER ONE ENDS-->