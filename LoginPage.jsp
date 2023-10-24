
<!-- HEADER  STARTS-->
<%@include file="GuestHomeHeader.jsp" %>



<table class="Round_corner_Form_Base" Style="margin-top: 150px;">
    <tr>
        <td style="vertical-align: middle;">  
            

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
   
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGIN PAGE</title>
    </head>
    
    <body>
        
       
        
<div class="">        
        <form>
            <table class="Content_Table" >
                <tr>
                     <td colspan="2" >
                        <div class="Table_Caption" align="center">
                            Login
                        </div>
                    </td>
                </tr>    
                
                <tr>
                    <td style="width:200px;">User Name</td>
                    <td>
                        <div class="input-group margin-bottom-sm" >
                            <span class="input-group-addon" style="color:#000; text-shadow: 2px 2px 5px white;" style="background-color: #31b0d5;" >
                                <i class="fa fa-user fa-fw" aria-hidden="true" ></i>
                            </span>
                            <input  type="text" name="T1" placeholder="User Name" value="admin" >
                        </div>       
                    </td>
                </tr> 
               <tr>
                    <td>Password</td>
                    <td>
                        <div class="input-group margin-bottom-sm" >
                            <span class="input-group-addon" style="color:#000; text-shadow: 2px 2px 5px white;" style="background-color: #31b0d5;" >
                                <i class="fa fa-lock fa-fw" aria-hidden="true" ></i>
                            </span>
                            <input type="password" placeholder="Password" name="PF1" value="admin">
                        </div>       
                    </td>
                </tr> 
                
                
                
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" name="buttonSubmit" value="Login">
                    </td>
                </tr>
            </table>                      
        </form>
    </body>
</html>
    
</div>
        
        </td>

        <td >
           <!-- Small Slide  STARTS-->
           <img src="../TemplateStyleFiles/img/pic2.jpg" width="580px" height="400px" >
           <!-- Small Slide  ENDS-->
        </td>
    </tr>
    
    
</table>

           <%@include file="FooterImages.jsp" %> 
           <%@include file="GuestHomeFooter.jsp" %>
<!-- FOOTER  ENDS-->
    