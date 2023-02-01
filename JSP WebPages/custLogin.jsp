<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%-- * This is the Customer Login Portal. 
     * The Customer will try to Login using their Id and Password, calling the custLoginServlet.
     * The Servlet will check the DB for the correct creditals and send them to CustInfo.jsp page on sucess or custLoginError.jsp page
     * Forgot Password Link will send user to resetPassword.jsp for the user to reset their account password
     * Functionality to be sent is not setup, just for styling and demo purposes
--%>
<html>
 <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width initial-scale=1.0">
    <link href = "style.css" rel = "stylesheet"/>
    <title>Customer Login Page</title>
<style> 
    /* TWO COLUMN FLEXBOX */
.two-column {
  display:flex;
  flex-direction:row;
}

/* TWO COLUMN FLEXBOX */
.two-column div {
  flex:1; 
  width: 100%;
  display:flex;
  flex-direction: column;
  justify-content:space-between;
  align-items:center;
}
/*footer for most jsps */
.footer {
  background-color: #5D5C61;
  font-family: Arial, sans-serif, "Times New Roman";
  color: #FAFAFA;
  bottom:0;
  left:0;
  padding: 10px;
  margin-bottom: 0;
  overflow: hidden;
  text-align: left;
  width: 100%;
  font-size: 20px;
}

    span.psw {
      float: right;
      padding-top: 10px;
      padding-bottom: 20px;
      padding-right: 15px;
      }
      span{
          padding-bottom: 30px;
      }
      
      #loginText {
    text-align: center;
    margin-bottom: 200px;
    color:white;
    text-shadow: 1px 0 0 #000, 0 -1px 0 #000, 0 1px 0 #000, -1px 0 0 #000;
}

</style>
</head>
<body id="loginBody">
    <nav>
        <a href="home.jsp">Home</a>
        <a href="search.jsp">Search Coins</a>
        <a href= "procLogin.jsp">Processor Login</a>
        <a href="createAcct.jsp">Create Account</a>
    </nav>
<section class="two-column">
   <div>
       <img src="../demo/images/updateHeader.jpg" alt="">

   </div>
   <div> 
        <h1 id="loginHeader">TeamSix Coin Company <br/> Customer Login Portal</h1>
        
        <form id="login"  action="custLogin.jsp">
            
            <label for="custID">Customer ID</label><br/>
            <input type="text" id="custID" name="custId" required placeholder="Enter you Customer ID here.."/>
            
            <label for="custPw">Password</label><br/>
            <input type="text" id="custPw" name="custPw" required placeholder="Enter your Account Password here.."/>
            
            <input type="submit" value="Login" onclick="form.action ='custLoginServlet'; ">
            <input type="reset" value="Clear">
            <div>
       
        <span class="psw"><a href="resetPassword.jsp"> Forgot password?</a></span>
      </div>
             
        </form>
        
        <h2 id ="loginText"> Don't have an account with us?<br/><br/> No worries, click the create account link in the navigation above!</h2>
   </div>
</section>
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