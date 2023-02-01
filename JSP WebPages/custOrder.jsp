<%@page import="Business.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%-- * This is the Customer Order Success Page. 
     * After a logged in customer user is done shopping, and procceded to checkout
     * The newOrderServlet adds the order to the Database and sends the user to confirmation page here
--%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href = "style.css" rel = "stylesheet" type="text/css"/>
        <title>Customer Order Success</title>
        
        <style>
            
            .success {
                display: block;
                margin-left: auto;
                margin-right: auto;
                padding-top: 30px;
            }
            
            #orderText {
                text-align: center;
                margin-bottom: 200px;
                color:white;
                text-shadow: 1px 0 0 #000, 0 -1px 0 #000, 0 1px 0 #000, -1px 0 0 #000;
                padding-bottom: 10px;
            }
            
             #custSuccess {
                background-color: #7395AE;
            }
            
        </style>
    </head>
    <body id="custSuccess">
        <nav>
            <a href="home.jsp">Home</a>
            <a href="search.jsp">Search Coins</a>
            <a href= "custInfo.jsp">Customer Info</a>
            <a id="logout" onclick="Logout()" href = "logoutServlet">Logout</a>
        </nav>
        
        <%
            Customer c2;           
            c2 = (Customer)session.getAttribute("c1");
        %>
        
        <img class="success" src="images/success.jpg" width="1024" height="250">
        <h1 id="orderText">Thank you for your purchase <%= c2.getFirstName()%><br/><br/>You can view your Orders from the Customer Info Page</h1>
        <footer>
            
            <div class="footer">
                <h5>Contact Info</h5>
                <h6>Email: support@TeamSixCoinCompany.com</h6>
                <h6>Phone: 303-303-3433</h6>
                <h6> HQ Address: 1230 Coin Street Atlanta, GA. 30238</h6>
                <p>&copy; TeamSix Coin Company</p>
            </div>
        </footer>
        
         <script>
            function Logout() {
                alert("You're now logged out");
            }
</script>
    </body>
</html>
