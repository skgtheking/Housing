

<!-- HEADER  STARTS-->
<%@include file="GuestHomeHeader.jsp" %>

<div class="div_login">
        
    
<table class="Round_corner_Form_Base">
    <tr>
        <td rowspan="3">    
<!-- HEADER  ENDS-->    


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Living Suppliers Details</title>
        <script type="text/javascript" lang="javascript">

        </script>
        
            
            <style type="text/css">
               
                
            </style>      
       
    </head>
    <body>
       
        
        <form action="LivingSUppliersProfilePictureUpload.jsp" enctype="multipart/form-data" method="post">
            
            <table class="Content_Table">
               <caption>
                    Living Suppliers Details
                </caption>  
               <tr><td>FIRST NAME</td>            
                   <td> <input type="text"  name="firstName" required="" >  </td></tr>

               <tr><td>LAST NAME</td>
                   <td><input type="text" name="lastName" required="" >  </td></tr>  
               
               <tr><td>ADDRESS</td><td>
                         <textarea  name="address" required="" ></textarea>  </td></tr> 
                         
               <tr><td>POST OFFICE</td>
                   <td><input type="text" name="postbox" required="">  

                   </td></tr> 

               <tr><td>PLACE</td>
                   <td>
                       <input type="text"name="place">
                           </td></tr>

               <tr><td>PIN CODE</td>
                   <td>
                       <input type="number" name="pincode" required="">  </td></tr>   

               <tr><td>STATE</td>
                   <td>
                          <select  name="comboState" onchange="getDistrict(this.value);" >   
                                <option value="">--------Select--------</option> 
                               
                        </select>   
                   </td></tr>

 
               <tr><td>DISTRICT</td>
                   <td>
                          <select  name="comboDistrict" id="comboDistrict" >                     
                            <option value="">--------Select--------</option>                                 
                        </select>
                   </td></tr>
              
               <tr>               
                   <td>GENDER</td>
                   <td>            
                   <input type="radio" name="gender" required="" value="Male"> Male
                   <input type="radio" name="gender" required="" value="Female" checked=""> Female</td></tr>

               <tr><td>CONTACT NUMBER</td>
                   <td>
                          <input type="number" name="contactNumber" required="">  </td></tr>  
               <tr><td>MOBILE NUMBER</td>
                   <td>
                          <input type="number" name="mobileNumber" required="">  </td></tr>  

               <tr><td>EMAIL ID</td>
                   <td>
                          <input type="email" name="email" value="Shians@gamil.com" required="">  </td></tr> 

               <tr><td>QUALIFICATION</td>
                   <td>
                   <input type="text" name="qualification" >  </td></tr>   
                
               <tr><td>DATE OF BIRTH</td>
                   <td>
                       <input type="date" name="dateOfBirth" required="">
                   </td></tr>

               <tr>
                   <td>MARITAL</td>
                   <td>
                       <input type="radio" name="maritalStatus" value="Single">Single
                       <input type="radio" name="maritalStatus" value="Married" checked="">Married</td></tr>
           
               <tr><td>USERNAME</td>
                   <td>
                        <input type="text" name="userName" required="">  </td></tr> 

               <tr><td>PASSWORD</td>
                   <td>
                        <input type="password" name="password" required="">  </td></tr> 
               
                <tr><td>RE ENTER PASSWORD</td>
                   <td>
                        <input type="password" name="password2" required="">  </td></tr>   
                
               <tr><td>RECOVERY QUESTION</td>
                   <td>
                        <select   name="recoveryQuestion" >
                            <option>Select</option>
                            <option>Favourite Color</option>
                            <option>Favourite Place</option>
                            <option>Nick Name</option>
                        </select>
                        </td></tr> 
               
                <tr><td>ANSWER</td>
                   <td>
                        <input type="text" name="answer" required="">  </td></tr>
                
                <tr><td>CATEGORY</td>
                    <td>
                       <select  name="staffCategoryID">                      
                          
                                
                        </select>
                    </td></tr>
                
               <tr><td>PHOTO</td>
                    
                    <td>
                        <input  type="file" name="profilePicture" requird="" /> 
                   </td>
               </tr>   
               <tr>
                    <td  align="center">
                        <center>   
                             <input  type="reset" value="Reset" name="buttonReset" >
                            </center>
                    </td>
                    <td align="center">
                        <center>   
                             <input  type="submit" value="Submit" name="B_Submit" >
                        </center>
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
             <img src="../TemplateStyleFiles/img/pic2.jpg" width="580px" height="400px" >
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
    