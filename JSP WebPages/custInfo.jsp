<%@page import="Business.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%-- * This is the Customer Information Page. 
     * After a Customer has logged in, this is the landing page for them.
     * From here it shows their account information
     * Customer can edit account, view previous and current orders, and shop for coins.
--%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width initial-scale=1.0">
        <link href = "style.css" rel = "stylesheet"/>
        <title>Customer Information Page</title>
        
        <style>
            
            #InfoBody {
                background-color: #7395AE;
            }
            
            footer {
                padding-top: 50px;
            }
            
            input[type=submit] {
                padding: 6px 8px;
                border-radius: 2px;
                margin-right: 14px;
                margin-left: 60px;
                margin-top: 16px;
                padding-bottom: 0px;
            }
            
        </style>
    </head>
    <body id="InfoBody">
        <nav>
            <a href="home.jsp">Home</a>
            <a href="search.jsp">Search Coins</a>
            <a href= "procLogin.jsp">Processor Login</a>
            <a id="logout" onclick="Logout()" href = "logoutServlet">Logout</a>
        </nav>
        
        <h1 id="loginHeader">TeamSix Coin Company <br/> Customer Account Information</h1>
        
        <%
          
            Customer c1;
            
            c1 = (Customer)session.getAttribute("c1");
                  
        %>
        
        
            
        <form id="createForm"  action ="custInfo.jsp">
            
            <label for="custID">Customer ID</label><br/>
            <input type="text" id="custID" name="custID" value="<%=c1.getCustID()%>" readonly placeholder="Customer ID"/><br/><br/>
            
            <label for="acctPW">Password</label><br/>
            <input type="text" id="custPw" name="custPW" value="<%=c1.getPassword()%>" readonly placeholder="Customer Password"/><br/><br/>
            
            <label for="custFN">First Name</label><br/>
            <input type="text" id="custFN" name="custFn"  value="<%=c1.getFirstName()%>" required placeholder="Enter your First Name here.."/><br/><br/>
            
            <label for="custLN">Last Name</label><br/>
            <input type="text" id="custLN" name="custLn"  value="<%=c1.getLastName()%>" required placeholder="Enter your Last Name here.."/><br/><br/>
            
            <label for="custEmail">Email</label><br/>
            <input type="text" id="custEmail" name="custEmail"  value="<%=c1.getEmail()%>" required placeholder="Enter your Email here.."/><br/><br/>
            
            <label for="custPhone">Phone</label><br/>
            <input type="text" id="custPhone" name="custPhone"  value="<%=c1.getPhone()%>" required placeholder="Enter your Phone here.."/><br/><br/>
            
            <label for="custStreet">Street</label><br/>
            <input type="text" id="custStreet" name="custStreet"  value="<%=c1.getStreet()%>" required placeholder="Enter your Street Address here.."/> <br/><br/>
            
            <label for="custCity">City</label><br/>
            <input type="text" id="custCity" name="custCity"  value="<%=c1.getCity()%>" required placeholder="Enter your City here.."/><br/><br/>
            
            <label for="custState">State</label><br/>
            <input type="text" id="custState" name="custState"  value="<%=c1.getState()%>" required placeholder="Enter your State here.."/><br/><br/>
            
            <label for="custZip">Zip</label><br/>
             <input type="text" id="custZip" name="custZip"  value="<%=c1.getZip()%>" required placeholder="Enter your Zip here.."/><br/><br/>
            
            <input type="submit" id="submit" value="Search Coins"  onclick="form.action ='search.jsp';">
            <input type="submit" id="reset" value="Edit"  onclick="form.action ='custInfoUpdate.jsp';">
            <input type="submit" id="reset" value="View Orders"  onclick="form.action ='custOrderHistory';">
            
        </form>
             
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
