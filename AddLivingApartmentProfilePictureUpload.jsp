
<%@page import="db.DBConnection"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="java.io.*" %>
<%@page import="org.apache.commons.fileupload.*" %>
<%@page import="org.apache.commons.fileupload.servlet.*" %>
<%@page import="org.apache.commons.fileupload.disk.*" %>
<jsp:useBean class="db.DBConnection" id="obj" ></jsp:useBean>	
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vandal Living</title>
    </head>
    <body>
        <%
        String SSNlivingSuppliersID=session.getAttribute("livingSuppliersID").toString();   
        String SSNlivingSuppliersName=session.getAttribute("livingSuppliersName").toString();   
       
        System.out.println("File upload file is strt invoking 2:-");
        String field_name="";
        FileItem f_item=null;
        String file_name="";

        File savedFile=null;
        String fn="",pf="";

        String field[] = new String[25];
        String value[]=new String[25];
        //checking if request cotains multipart data
        boolean isMultipart=ServletFileUpload.isMultipartContent(request);
        if(isMultipart)
        {
            FileItemFactory factory=new DiskFileItemFactory();
            ServletFileUpload upload=new ServletFileUpload(factory);

            //declaring a list of form fields
            List items_list=null;

            //assigning fields to list 'items_list'
            try
            {
                items_list=upload.parseRequest(request);
            }
            catch(FileUploadException ex)
            {
                System.out.println(ex);
            }

            //declaring iterator
            Iterator itr=items_list.iterator();
            int k=0;
            //iterating through the list 'items_list'
            while(itr.hasNext())
            {
                //typecasting next element in items_list as fileitem
                f_item=(FileItem)itr.next();

                //checking if 'f_item' contains a formfield(common controls like textbox,dropdown,radio buttonetc)
               if(f_item.isFormField())
                {
                    //getting fieldname and value
                    field[k]=f_item.getFieldName();
                    value[k]=f_item.getString();
                    System.out.println("K-Value[k] :"+k+" "+value[k]);
                    k++;
                }
               else
               {
                    //f_item=(FileItem)itr.next();
                    file_name=f_item.getName();
                    field_name=f_item.getFieldName();

                    String ext=file_name.substring(file_name.lastIndexOf("."));
                    //setting path to store image
                    File proj_path=new File(config.getServletContext().getRealPath("/"));
                    String file_path=proj_path.getParentFile().getParentFile().getPath()+"\\web\\LivingSuppliers\\LivingImages\\";
                    Random r=new Random();
                    int r_num=r.nextInt(1111)+999;
                    fn="IMG_"+r_num+ext;
                    //creating a file object
                    savedFile=new File(file_path+fn);
                    try
                    {
                        //writing the file object
                        f_item.write(savedFile);               

                    }
                    catch(Exception ex)
                    {
                        out.println(ex);
                    }
                }
            }
                           
            String values1="'"+ SSNlivingSuppliersID
            +"','"+value[0]
            +"','"+value[1]
            +"','"+value[2]   
            +"','"+value[3] 
            +"','"+fn
            +"'";
             
            String columns = "livingSuppliersID,livingSpaceName,ratePerSemester,location,type,iconImage";
            
            String queryInsert="insert into livingspace("+columns+") values ("+values1+")";
            System.out.println(queryInsert);

            boolean status=obj.executeCommand(queryInsert);

            if(status==true)
            {                            
                response.sendRedirect("LivingSupplierstHomePage.jsp");
                out.print("<script> alert('Added Success')</script>");           
            }
            else
            {
                 out.print("<script> alert('Error')</script>");  
            }            
        }   
        %>
    </body>
</html>
