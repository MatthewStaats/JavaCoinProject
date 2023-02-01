<%@page import="Business.Customer"%>
<%@page import="Business.Order"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%-- * This is the Customer View Order Page. 
     * Logged in Customers from the custInfo.jsp page, can see previous shipped and open orders from TeamSix Company
     * custOrderHistory uses the logged in users Id, to search orders in the Database from this customer
--%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width initial-scale=1.0">
        <link href = "style.css" rel = "stylesheet" type="text/css"/>
        <title>Customer View Orders</title>
        
        <style>
            body {
                background-color: #7395AE;
            }
            
           table {
                margin-left: 400px;
                margin-right: 0px;
                border-left: 1px solid black;
                border-right: 1px solid black;
                border-top: 1px solid black;
                text-align: center;
                background-color: white;
                width: 50%;
        }
        
            td {
                border-left: 1px solid black;
                border-bottom: 1px solid black;
            }
        
            th {    
            border-bottom: 1px solid black;
            }
            
            form{
                padding: 100px;
            }
            
            h1 {
                color: white;
                text-align: center;
                font-size: 40px;
                padding-top: 50px;
                padding-bottom: 20px;
                font-family: "Metal Mania";
            }
            
            h2 {
                color:white;
            }
        
        </style>
    </head>
    <body>
        <nav>
                <a href = "home.jsp">Home</a>
                <a href = "custInfo.jsp">Customer Information</a>
                <a id="logout" onclick="Logout()" href = "logoutServlet">Logout</a>
        </nav>
        
        <%
            Customer c2;           
            c2 = (Customer)session.getAttribute("c1");
        %>
        
        <h1 id="searchHeader">TeamSix Coin Company<br/> <br/></h1>
        <h2><%= c2.getFirstName()%> here is a list of your Orders from TeamSix</h2>
        <br/>
        <br/>
        
        <%    
           Order ord;
           Order o2;
           ord = (Order)session.getAttribute("o1");
           
           
           for (int x = 0; x < ord.aList.aList.size(); x++) {
               o2 = ord.aList.aList.get(x);
           
        %>  
            <table>
                <tr>
                    <th>Order Number</th>
                    <td name ="ordNum"><%= o2.getOrderNum()%></td>
                </tr>
                <tr>
                    <th>Order Amount</th>
                    <td name ="ordAmount"><%=o2.getAmount()%></td>
                </tr>
                <tr>
                    <th>Order Status (Editable)</th>
                    <td name ="ordStatus" contenteditable='true'><%=o2.getStatus()%></td>
                </tr>
                <tr>
                    <th>Customer ID</th>
                    <td name ="ordCust"><%=o2.getCustID()%></td>
                </tr>
                 <tr>
                    <th>Approver ID</th>
                    <td name ="ordAppr"><%=o2.getApproverID()%></td>
                </tr>
                 <tr>
                    <th>Date of Approval (Editable)</th>
                    <td name ="ordDate" contenteditable='true'><%=o2.getDateOfApproval()%></td>
                </tr>
                 <tr>
                    <th>Street</th>
                    <td name ="ordStreet"><%=o2.getStreet()%></td>
                </tr>
                 <tr>
                    <th>City</th>
                    <td name ="ordCity"><%=o2.getCity()%></td>
                </tr>
                 <tr>
                    <th>State</th>
                    <td id ="ordState"><%=o2.getState()%></td>
                </tr>
                 <tr>
                    <th>Zip Code</th>
                    <td name ="ordZip"><%=o2.getZip()%></td>
                </tr>
            </table>       
            <br/>
            <br/>
        <% 
            }
        %>
        <form action="openOrderDisplay.jsp">
           <input id="homeButton" type="submit" value="Back" onclick="window.history.go(-1); return false;"/>
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
