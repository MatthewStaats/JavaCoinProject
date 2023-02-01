<%@page import="Business.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%-- * This is the Customer Update Success page. 
     * After a Customer has updated their information from custInfoUpdate.jsp page.
     * The custUpdateServlet updates the account information and sends them here, giving the user confirmation that their information has been updated
     * Customer can go back to info page and see changes made to the thier account.
--%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width initial-scale=1.0">
        <link href = "style.css" rel = "stylesheet"/>
        <title>Customer Information Updated Page</title>
         <style>
            
            .photo {
                display: block;
                margin-left: auto;
                margin-right: auto;
                padding-top: 40px;
                padding-bottom: 40px;
            }
            
            #updateText {
                text-align: center;
                margin-bottom: 200px;
                color:white;
                text-shadow: 1px 0 0 #000, 0 -1px 0 #000, 0 1px 0 #000, -1px 0 0 #000;
                padding-bottom: 40px;
            }
            
            #updateSuccess {
                background-color: #7395AE;
            }
            
        </style>
    </head>
    <body id="updateSuccess">
        <nav>
            <a href = "custInfo.jsp">Customer Information</a>
            <a href ="search.jsp">Search Coins</a>
            <a id="logout" onclick="Logout()" href = "logoutServlet">Logout</a>
        </nav>
        
        <%
            Customer c2;           
            c2 = (Customer)session.getAttribute("c1");
        %>
        
        <img class="photo" src="images/success.jpg" width="1024" height="250">
        <h1 id="updateText">Your Account information is now updated in our database.<br/><br/><br/>
            Click Customer Information above in the navigation to view the changes to your account<br/><br/>
             Thank you, <%= c2.getFirstName()%></h1>
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

   