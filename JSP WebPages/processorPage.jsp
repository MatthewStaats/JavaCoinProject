<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%--
    * processPage jsp is ran from the procLogin jsp Login Button
    * The form action calls the procLoginServlet to verfy Employees credentials
    * This shows the ProcessorPage which is the hub for an employee
--%>

<!DOCTYPE html>
<!DOCTYPE html>
<html>
  <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width initial-scale=1.0">
        <link href = "style.css" rel = "stylesheet"/>
        <title>Processor Page</title>

    <style>
      html, body {
      min-height: 100%;
      }
      
      body, div, form, input, select, p { 
      padding: 0;
      margin: 0;
      outline: none;
      font-family: Roboto, Arial, sans-serif;
      font-size: 14px;
      color: #666;
      line-height: 22px;
      }
      
      h1 {
      position: absolute;
      margin: 0;
      font-size: 36px;
      color: #fff;
      z-index: 2;
      }
      
     
      .testbox {
      display: flex;
      justify-content: center;
      align-items: center;
      height: inherit;
      padding: 20px;
      }
      
      form {
      width: 100%;
      padding: 20px;
      border-radius: 6px;
      background: #fff;
      box-shadow: 0 0 30px 0 #095484; 
      padding-bottom: 100px;
      }
      
      .banner {
      position: relative;
      height: 180px;
      background-image: url('../demo/images/membership.jpg');  
      background-size: cover;
      display: flex;
      justify-content: center;
      align-items: center;
      text-align: center;
      }
      
      .banner::after {
      content: "";
      background-color: rgba(0, 0, 0, 0.4); 
      position: absolute;
      width: 100%;
      height: 100%;
      }
      
      .btn-block {
      margin-top: 10px;
      text-align: center;
      padding-top: 100px;
      padding-bottom: 100px;
      }
      
      button {
      width: 150px;
      padding: 10px;
      border: none;
      border-radius: 5px; 
      background: #095484;
      font-size: 16px;
      color: #fff;
      cursor: pointer;
      }
      
      button:hover {
      background: #0666a3;
      }
    </style>
  </head>
  <body>
        <nav>
            <a href="home.jsp">Home</a>
            <a href="search.jsp">Search Coins</a>
            <a id="logout" onclick="Logout()" href = "logoutServlet">Logout</a>
        </nav>
        <div class="testbox">
            <form action="custLogin.jsp">
                <div class="banner">
                    <h1>Processor Page</h1>
                </div>
                <h2 class="top-info">View Open Orders for Processing below, or orders that have been Shipped already.</h2>
                <div class="btn-block">
                    <button type="submit" onclick="form.action ='procOpenOrders'; ">Open Orders</button>
                    <button type="submit" onclick="form.action ='procShippedOrders'; ">Shipped Orders</button>
                </div>
            </form>
        </div>
      
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