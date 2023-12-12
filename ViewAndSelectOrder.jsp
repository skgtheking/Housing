

<!-- HEADER ONE STARTS-->
<%@include file="LivingSuppliersHomeHeader.jsp" %>
<!-- HEADER ONE ENDS-->
      
    <form name="Form1" method="POST"> 
        
        <div align="center" >  
            <table class="Dispaly_Table">
                 <caption>
                     <h2>Order Details</h2>
                 </caption>  

                <tr >
                    <th >Order ID</th>
                    <th >Ordered Staff</th>
                    <th >Staff Name</th>
                    <th >Order Category</th>
                    <th >Ordered Date</th>
                    <th >Expire Date</th>
                    <th >Pickup Port</th>
                    <th >View</th>
                    
                </tr>

                <%
                    String URLorderCategoryID=request.getParameter("orderCategoryID");
                    String profilePicture="";
                    String querySelect="select "
                    + "a.orderHeadID,"        
                    + "a.orderedDate,"                                           
                    + "a.orderExpireDate,"        
                    + "a.status,"

                    + "b.firstName,"
                    + "b.lastName,"
                    + "b.profilePicture,"

                    + "c.orderCategoryName," 

                    + "d.portName" 

                    + " FROM "
                    + "tbl_order_head a,"
                    + "tbl_staff_details b,"
                    + "tbl_order_category c,"  
                    + "tbl_port_details d"  

                    + " WHERE "
                    + "a.orderCategoryID="+URLorderCategoryID
                    + " AND "
                    + "a.staffID=b.staffID" 
                    + " AND "
                    + "a.orderCategoryID=c.orderCategoryID" 
                    + " AND " 
                    + "a.portID=d.portID" 
                    + " AND "         
                    + "a.status=1"
                    + " ORDER BY orderedDate";

                    System.out.println("querySelect:>>>>> "+querySelect);
                    //String querySelect="select * from tbl_product_order ";//a where (select DATEDIFF('"+currentDate+"','a.expireDate') AS diff1)<=0";
                    ResultSet rs=obj.select(querySelect);
                    while(rs.next())
                    {
                        profilePicture=rs.getString("profilePicture");
                %>

                <tr>
                    <td ><%=rs.getString("orderHeadID")%></td>
                    <td style="width:100px; height:100px;"><img style="width:100px; height:100px;" src="..\Staff\ProfilePictures\<%=profilePicture%>" alt=""/></td>
                    <td> <%=rs.getString("firstName")%>  <%=rs.getString("lastName")%> </td>
                    <td><%=rs.getString("orderCategoryName")%></td>

                    <td><%=rs.getString("orderedDate")%></td>
                    <td><%=rs.getString("orderExpireDate")%></td>
                    <td><%=rs.getString("portName")%></td>

                    <td  style="width: 80px;"><a href="ViewOrderDetails.jsp?orderHeadID=<%=rs.getString("orderHeadID")%>&orderCategoryID=<%=URLorderCategoryID%>">View Details</a></td>
                </tr>

                <%
                   }
                %>

            </table>
        </div>           
    </form>
 
<!-- HEADER ONE STARTS-->
<%@include file="LivingSuppliersHomeFooter.jsp" %>
<!-- HEADER ONE ENDS-->                        