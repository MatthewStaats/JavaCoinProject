<%@page import="Business.Order"%>
<%@page import="Business.Processor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%-- 
    * openOrderUpdate jsp is called from openOrderDisplay jsp Button Approve Orders
    * The form action will call orderUpdateServlet. Which updates the open orders for approval
    * After updaing the DB the orders that were updated will be displayed here for the employee to see

--%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width initial-scale=1.0">
        <link href = "style.css" rel = "stylesheet" type="text/css"/>
        <title>Orders Updated Page</title>
        
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
            
            #openHead {
                color: white;
                text-align: center;
                font-size: 40px;
                padding-top: 50px;
                padding-bottom: 30px;
                font-family: "Metal Mania";
            }
            
             #openText {
                color: white;
                text-align: center;
                font-size: 30px;
                padding-top: 20px;
                padding-bottom: 20px;
                font-family: "Metal Mania";
            }
        
        </style>
    </head>
    <body>
        <nav>
                <a href = "home.jsp">Home</a>
                <a href = "processorPage.jsp">Processor Page</a>
                <a id="logout" onclick="Logout()" href = "logoutServlet">Logout</a>
        </nav>
        
         <%
            Processor p2;           
            p2 = (Processor)session.getAttribute("p1");
        %>
        
        <h1 id="openHead">TeamSix Coin Company<br/> <br/></h1>
        <h2 id="openText">Open Orders have been updated in the database<br/><br/>  
            Newly Processed Orders by <%=p2.getFirstName()%><br/>Employee ID Number <%=p2.getProcID()%><br/><br/></h2>
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
                    <th>Order Status</th>
                    <td name ="ordStatus"><%=o2.getStatus()%></td>
                </tr>
                <tr>
                    <th>Customer ID</th>
                    <td name ="ordCust"><%=o2.getCustID()%></td>
                </tr>
                 <tr>
                    <th>Approver ID</th>
                    <td name ="ordAppr"><%=p2.getProcID()%></td>
                </tr>
                 <tr>
                    <th>Date of Approval</th>
                    <td name ="ordDate"><%=o2.getDateOfApproval()%></td>
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
        
        <script>
            function Logout() {
                alert("You're now logged out");
            }
        </script>
    </body>
</html>
