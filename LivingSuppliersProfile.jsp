<!-- HEADER ONE STARTS-->
<%@include file="LivingSuppliersHomeHeader.jsp" %>
<!-- HEADER ONE ENDS-->
     
<%


String firstName = "";
String lastName = "";
String cellNumber = "";
String email = "";

String description = "";
String userName = "";
String password = "";
String profilePicture = "";

if (SSNlivingSuppliersID != null) 
{
    String querySelect1 = "select * from livingsuppliersdetails where livingSuppliersID='"+SSNlivingSuppliersID+"'";
    ResultSet rs1 = obj.select(querySelect1);
    while (rs1.next()) 
    {
        firstName=rs1.getString("livingSuppliersName");            
        lastName =rs1.getString("contactPerson");       
        cellNumber=rs1.getString("contactNumber");
        email=rs1.getString("email");

        description=rs1.getString("companyDescription");                    
        userName=rs1.getString("Username"); 
        password=rs1.getString("Password");  
        profilePicture=rs1.getString("profilePicture");
        
        System.out.print(description);
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
                        Suppliers Profile
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
        <div class="col-12 col-sm-7 wow fadeInLeft">
            <form action="LivingSuppliersProfileEditing.jsp" enctype="multipart/form-data" method="POST" > 
              <div class="form-group row">
                <label for="firstName" class="col-sm-4 col-form-label">Living Suppliers Name</label>              
                    <div class="col-sm-8">
                          <input type="text" class="form-control" name="firstName" required="" value="<%=firstName%>">
                    </div>
              </div>
              <div class="form-group row">
                <label for="lastName" class="col-sm-4 col-form-label">Contact Person Name</label>
                <div class="col-sm-8">
                  <input type="text" class="form-control" name="lastName" required="" value="<%=lastName%>">
                </div>
              </div>
              <div class="form-group row">
                <label for="cellNumber" class="col-sm-4 col-form-label">Contact  Number</label>
                <div class="col-sm-8">
                  <input type="text" class="form-control" name="cellNumber" value="<%=cellNumber%>">
                </div>
              </div>
              <div class="form-group row">
                <label for="email" class="col-sm-4 col-form-label">Contact Email</label>
                <div class="col-sm-8">
                  <input type="text" class="form-control" name="email" required="" value="<%=email%>">
                </div>
              </div>
               <div class="form-group row">
                <label class="col-sm-4 col-form-label">Username</label>
                <div class="col-sm-8">
                  <input type="text" class="form-control rounded-0 p-3" name="userName" required=""  value="<%=userName%>">
                </div>
              </div> 
              <div class="form-group row">
                <label class="col-sm-4 col-form-label">Company Description</label>
                <div class="col-sm-8">
                  <textarea name="description"><%= description %></textarea>
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
                  <input type="hidden" name="hiddenID" value="<%=SSNlivingSuppliersID%>">
                </div>
              </div>
            </form>   
        </div>    
        <!-- Added for Display Side Image and Text-->
        <div class="col-12 col-sm-5 wow fadeInRight">
            <div class="signup-info text-center">
                <h5 class="font-35 font-weight-bold text-black text-uppercase">
                    <%=SSNlivingSuppliersID%> -<%=SSNlivingSuppliersName%> 
                </h5>
                <br>
                <%
                    
                    String imagePath = "";
                            if(profilePicture .equalsIgnoreCase("default_image.jpg"))
                            {
                               imagePath= "TemplateStyleFiles/default_image.jpg";
                               
                            }else
                            {
                                imagePath= "ProfilePictures/" + profilePicture;
                            }
                    //System.out.print(imagePath);
                   %>
                
                <img src='<%=imagePath%>' width="60%" height="60%">
                <br>
                <br>
                <p class="font-14 font-weight-bold fables-main-text-color text-danger">                   
                    About
                </p>
                <p class="text-center mt-3">        
                    We are a dynamic and forward-thinking living supplies company dedicated to enhancing the well-being of individuals and families.
                </p>
            </div>
        </div>

    </div>        
</div> 
<!-- /End page content -->
 
<!-- HEADER ONE STARTS-->
<%@include file="LivingSuppliersHomeFooter.jsp" %>
<!-- HEADER ONE ENDS-->