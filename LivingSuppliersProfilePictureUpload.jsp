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
System.out.println("File upload file is start invoking 2:-");
String field_name = "";
FileItem f_item = null;
String file_name = "";

File savedFile = null;
String fn = "", pf = "";

String field[] = new String[25];
String value[] = new String[25];
//checking if the request contains multipart data
boolean isMultipart = ServletFileUpload.isMultipartContent(request);
if (isMultipart) {
    FileItemFactory factory = new DiskFileItemFactory();
    ServletFileUpload upload = new ServletFileUpload(factory);

    //declaring a list of form fields
    List items_list = null;

    //assigning fields to list 'items_list'
    try {
        items_list = upload.parseRequest(request);
    } catch (FileUploadException ex) {
        System.out.println(ex);
    }

    //declaring iterator
    Iterator itr = items_list.iterator();
    int k = 0;
    //iterating through the list 'items_list'
    while (itr.hasNext()) {
        //typecasting the next element in items_list as a file item
        f_item = (FileItem) itr.next();

        //checking if 'f_item' contains a form field (common controls like textbox, dropdown, radio button, etc)
        if (f_item.isFormField()) {
            //getting fieldname and value
            field[k] = f_item.getFieldName();
            value[k] = f_item.getString();
            System.out.println("K-Value[k] :" + k + " " + value[k]);
            k++;
        } else {
            file_name = f_item.getName();
            field_name = f_item.getFieldName();

            String ext = "";
            int dotIndex = file_name.lastIndexOf(".");
            if (dotIndex != -1) {
                ext = file_name.substring(dotIndex);
            }
            //setting the path to store the image
            File proj_path = new File(config.getServletContext().getRealPath("/"));
            String file_path = proj_path.getParentFile().getParentFile().getPath() + "\\web\\LivingSuppliers\\ProfilePictures\\";
            Random r = new Random();
            int r_num = r.nextInt(1111) + 999;

            if (!file_name.isEmpty()) {
                fn = "IMG_" + r_num + ext;
            } else {
                // No file selected, use the default image
                fn = "default_image.jpg";
                // Set the path for default image
                file_path = proj_path.getParentFile().getParentFile().getPath() + "\\web\\TemplateStyleFiles\\";
            }

            // creating a file object
            savedFile = new File(file_path + fn);

            // Ensure the directory structure exists
            File directory = new File(file_path);
            if (!directory.exists()) {
                directory.mkdirs(); // creates the necessary directories
            }

            try {
                // writing the file object
                f_item.write(savedFile);
            } catch (Exception ex) {
                out.println(ex);
            }
        }
    }            

    String values1 = "'" + value[0] + "','" + value[1] + "','" + value[2] + "','" + value[3] + "','" + value[4] + "','" + value[5] + "','" + value[6] + "','" + fn + "'";

    String columns = "livingSuppliersName,contactPerson,contactNumber,email,companyDescription,"
            + "userName,password,profilePicture";  
    if (!value[6].equals(value[7]) ) 
    {
    response.sendRedirect("LivingSuppliersDetails.jsp");
    out.print("<script> alert('Password Missmatch')</script>");
    } 
    else 
    {
        String queryInsert = "insert into livingsuppliersdetails(" + columns + ") values (" + values1 + ")";
        System.out.println(queryInsert);

        boolean status = obj.executeCommand(queryInsert);

        if (status == true) {
            response.sendRedirect("GuestHomePage.jsp");
            out.print("<script> alert('Sign-Up Success')</script>");
        }     
    }
}   
%>
</body>
</html>
