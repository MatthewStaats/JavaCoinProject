<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%-- * This is the Non Customer Order Success Page. 
     * After the order is confirmed and added, the user gets sent here for confirmation of order
--%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href = "style.css" rel = "stylesheet" type="text/css"/>
        <title>Non Customer Order Successful</title>
        
        <style>
            
             .success {
                display: block;
                margin-left: auto;
                margin-right: auto;
                padding-top: 40px;
                padding-bottom: 40px;
            }
            
            #orderText {
                text-align: center;
                margin-bottom: 200px;
                color:white;
                text-shadow: 1px 0 0 #000, 0 -1px 0 #000, 0 1px 0 #000, -1px 0 0 #000;
                padding-bottom: 10px;
            }
            
            #nonCustSuccess {
                background-color: #7395AE;
            }
            
        </style>
    </head>
    <body id="nonCustSuccess">
        <nav>
            <a href ="home.jsp">Home</a>
            <a href = "search.jsp">Search Coins</a>
            <a href = "createAcct.jsp">Create Account</a>
        </nav>
        
        <img class="success" src="images/success.jpg" width="1024" height="250">
        <h1 id="orderText">Thank you for your order!<br/><br/><br/> We recommend becoming a member to get deals and benefits that only members can get.<br/><br/>
                           Check your email for the receipt and tracking number</h1>
        
        <footer>
            <div class="footer">
                <h5>Contact Info</h5>
                <h6>Email: support@TeamSixCoinCompany.com</h6>
                <h6>Phone: 303-303-3433</h6>
                <h6> HQ Address: 1230 Coin Street Atlanta, GA. 30238</h6>
                <p>&copy; TeamSix Coin Company</p>
            </div>
        </footer>
    </body>
</html>
