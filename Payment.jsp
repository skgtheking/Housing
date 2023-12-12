
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>

<style>
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap');

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif
}

.container {
    margin: 30px auto;
}

.container .card {
    width: 100%;
    box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;
    background: #fff;
    border-radius: 0px;
}

body {
    background: #eee
}



.btn.btn-primary {
    background-color: #ddd;
    color: black;
    box-shadow: none;
    border: none;
    font-size: 20px;
    width: 100%;
    height: 100%;
}

.btn.btn-primary:focus {
    box-shadow: none;
}

.container .card .img-box {
    width: 80px;
    height: 50px;
}

.container .card img {
    width: 100%;
    object-fit: fill;
}

.container .card .number {
    font-size: 24px;
}

.container .card-body .btn.btn-primary .fab.fa-cc-paypal {
    font-size: 32px;
    color: #3333f7;
}

.fab.fa-cc-amex {
    color: #1c6acf;
    font-size: 32px;
}

.fab.fa-cc-mastercard {
    font-size: 32px;
    color: red;
}

.fab.fa-cc-discover {
    font-size: 32px;
    color: orange;
}

.c-green {
    color: green;
}

.box {
    height: 40px;
    width: 50px;
    display: flex;
    align-items: center;
    justify-content: center;
    background-color: #ddd;
}

.btn.btn-primary.payment {
    background-color: #1c6acf;
    color: white;
    border-radius: 0px;
    height: 50px;
    display: flex;
    align-items: center;
    justify-content: center;
    margin-top: 24px;
}


.form__div {
    height: 50px;
    position: relative;
    margin-bottom: 24px;
}

.form-control {
    width: 100%;
    height: 45px;
    font-size: 14px;
    border: 1px solid #DADCE0;
    border-radius: 0;
    outline: none;
    padding: 2px;
    background: none;
    z-index: 1;
    box-shadow: none;
}

.form__label {
    position: absolute;
    left: 16px;
    top: 10px;
    background-color: #fff;
    color: #80868B;
    font-size: 16px;
    transition: .3s;
    text-transform: uppercase;
}

.form-control:focus+.form__label {
    top: -8px;
    left: 12px;
    color: #1A73E8;
    font-size: 12px;
    font-weight: 500;
    z-index: 10;
}

.form-control:not(:placeholder-shown).form-control:not(:focus)+.form__label {
    top: -8px;
    left: 12px;
    font-size: 12px;
    font-weight: 500;
    z-index: 10;
}

.form-control:focus {
    border: 1.5px solid #1A73E8;
    box-shadow: none;
}

</style>




<!-- HEADER ONE STARTS-->
<%@include file="VandalHomeHeader.jsp" %>
<!-- HEADER ONE ENDS-->
 
<%
String livingSpaceID = request.getParameter("livingSpaceID");
String livingSpaceName = request.getParameter("livingSpaceName");
String rate = request.getParameter("ratePerSemester");

System.out.println(rate);
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
    //String cardType = request.getParameter("cardType");
    String cardNumber = request.getParameter("cardNumber");
    String expDate = request.getParameter("expDate");
    String ccv = request.getParameter("ccv");
    String nameontheCarad = request.getParameter("nameontheCarad");
    String hiddenID = request.getParameter("hiddenID");
    String hiddenID2 = request.getParameter("hiddenID2");
    String paymentDate="";    
    Date currentDate = new Date();
    // Define the date format
    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    // Format the current date and time
    paymentDate = dateFormat.format(currentDate);        
            
    String values1 = "'" + SSNvandalID
    + "','" + hiddenID        
    + "','" + hiddenID2
    + "','" + paymentDate
    + "','" + cardNumber
    + "','" + expDate
    + "','" + ccv
    + "','" + nameontheCarad + "'";

    String columns = "vandalID,livingSpaceID,rate,paymentDate,cardNumber,expDate, ccv,nameontheCarad";
    String queryInsert = "INSERT INTO payment(" + columns + ") VALUES (" + values1 + ")";
    System.out.println(queryInsert);
    boolean status = obj.executeCommand(queryInsert);

    if (status == true) 
    {
        String queryUpadate = "update VandalDetails set vandalStatus=0 where vandalID=" + SSNvandalID;
        System.out.print(queryUpadate);                
        obj.executeCommand(queryUpadate);
        response.sendRedirect("VandalHomePage.jsp");
        out.print("<script> alert('Success..Move Forward')</script>");
    } 
    else 
    {
        out.print("<script> alert('Error')</script>");
    }

}

%>
<!-- /End Breadcrumbs -->
     
<div class="container">
        <div class="row">
            
            <div class="col-lg-4 mb-lg-0 mb-3">
                <div class="card p-3">
                    <div class="img-box">
                        <img src="https://www.freepnglogos.com/uploads/visa-logo-download-png-21.png" alt="">
                    </div>
                    <div class="number">
                        <label class="fw-bold" for="">**** **** **** 1060</label>
                    </div>
                    <div class="d-flex align-items-center justify-content-between">
                        <small><span class="fw-bold">Expiry date:</span><span>18/29</span></small>
                        <small><span class="fw-bold">Name:</span><span><%=SSNvandalName%></span></small>
                    </div>
                </div>
            </div>
            
            <div class="col-lg-4 mb-lg-0 mb-3">
                <div class="card p-3">
                    <div class="img-box">
                        <img src="https://www.freepnglogos.com/uploads/mastercard-png/file-mastercard-logo-svg-wikimedia-commons-4.png"
                            alt="">
                    </div>
                    <div class="number">
                        <label class="fw-bold">**** **** **** 1074</label>
                    </div>
                    <div class="d-flex align-items-center justify-content-between">
                        <small><span class="fw-bold">Expiry date:</span><span>02/26</span></small>
                        <small><span class="fw-bold">Name:</span><span><%=SSNvandalName%></span></small>
                    </div>
                </div>
            </div>
    
            <div class="col-lg-4 mb-lg-0 mb-3">
                <div class="card p-3">
                    <div class="img-box">
                        <img src="https://www.freepnglogos.com/uploads/discover-png-logo/credit-cards-discover-png-logo-4.png"
                            alt="">
                    </div>
                    <div class="number">
                        <label class="fw-bold">**** **** **** 2250</label>
                    </div>
                    <div class="d-flex align-items-center justify-content-between">
                        <small><span class="fw-bold">Expiry date:</span><span>10/27</span></small>
                        <small><span class="fw-bold">Name:</span><span><%=SSNvandalName%></span></small>
                    </div>
                </div>
            </div>
            
            <div class="col-12 mt-4">
                <div class="card p-3">
                    <p class="mb-0 fw-bold h4">Payment Methods</p>
                </div>
            </div>
            <div class="col-12">
                <div class="card p-3">
                    <div class="card-body border p-0">
                        <p>
                            <a class="btn btn-primary w-100 h-100 d-flex align-items-center justify-content-between"
                                data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="true"
                                aria-controls="collapseExample">
                                <span class="fw-bold">PayPal</span>
                                <span class="fab fa-cc-paypal">
                                </span>
                            </a>
                        </p>
                        <div class="collapse p-3 pt-0" id="collapseExample">
                            <div class="row">
                                <div class="col-8">
                                    <p class="h4 mb-0">Summary</p>
                                    <p class="mb-0"><span class="fw-bold">Living Space</span><span class="c-green">: Name of
                                            product</span></p>
                                    <p class="mb-0"><span class="fw-bold">Price</span><span
                                            class="c-green">:$452.90</span></p>
                                            <p class="mb-0">
                                                We accept online payments through [Specify Accepted Payment Methods, e.g., credit cards, digital wallets].
Ensure that your chosen payment method is valid and has sufficient funds for a successful transaction.
                                            </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card-body border p-0">
                        <p>
                            <a class="btn  d-flex align-items-center justify-content-between"
                                data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="true"
                                aria-controls="collapseExample">
                                <span class="fw-bold">Credit Card</span>
                                <span class="">
                                    <span class="fab fa-cc-amex"></span>
                                    <span class="fab fa-cc-mastercard"></span>
                                    <span class="fab fa-cc-discover"></span>
                                </span>
                            </a>
                        </p>

                        <div class="collapse show p-3 pt-0" id="collapseExample">
                            <div class="row">
                                <div class="col-lg-5 mb-lg-0 mb-3">
                                    <p class="h4 mb-0">Summary</p>
                                    <p class="mb-0">
                                        <span class="fw-bold">Product:</span>
                                        <span class="c-green">: <%=livingSpaceID %> | <%=livingSpaceName %>
                                        </span>
                                    </p>
                                    <p class="mb-0">
                                        <span class="fw-bold">Price:</span>
                                        <span class="c-green">:$<%=rate %></span>
                                    </p>
                                    <p class="mb-0">Please complete the payment form below to proceed with your transaction. 
                                        Ensure all the required fields are filled accurately,
                                        and kindly provide your payment details for a seamless processing experience</p>
                                </div>
                                <div class="col-lg-7">
                                    <form action="" class="form">
                                        <div class="row">
                                            <div class="col-12">
                                                <div class="form__div">
                                                    <input type="text" class="form-control" placeholder=" " name="cardNumber">
                                                    <label for="" class="form__label">Card Number</label>
                                                </div>
                                            </div>

                                            <div class="col-6">
                                                <div class="form__div">
                                                    <input type="text" class="form-control" placeholder=" " name="expDate">
                                                    <label for="" class="form__label">MM / yy</label>
                                                </div>
                                            </div>

                                            <div class="col-6">
                                                <div class="form__div">
                                                    <input type="password" class="form-control" placeholder=" " name="ccv">
                                                    <label for="" class="form__label">cvv code</label>
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <div class="form__div">
                                                    <input type="text" class="form-control" placeholder=" " name="nameontheCarad">
                                                    <label for="" class="form__label">name on the card</label>
                                                </div>
                                            </div>
                                            
                                            <div class="col-12">              
                <button type="submit" class="btn btn-primary payment" name="B_Submit">PAY NOW</button>
            </div>
                                            
                                            
                                        </div>
                                        <input type="hidden" name="hiddenID" value="<%=livingSpaceID%>">
                                        <input type="hidden" name="hiddenID2" value="<%=rate%>">
                                        
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>
    </div>
<!-- /End page content -->
 
<!-- HEADER ONE STARTS-->
<%@include file="VandalHomeFooter.jsp" %>
<!-- HEADER ONE ENDS-->