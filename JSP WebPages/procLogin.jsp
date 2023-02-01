<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%-- * This is the Processor Login Portal. 
     * The Processor will try to Login using their Id and Password, calling the procLoginServlet.
     * The Servlet will check the DB for the correct creditals and send them to processorPage.jsp page on sucess or procLoginError.jsp page
     * Forgot Password Link will send user to resetPassword.jsp for the user to reset their account password
     * Functionality to be sent is not setup, just for styling and demo purposes
--%>

<html>
 <head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href = "style.css" rel = "stylesheet"/>
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
  object-fit: cover;
  margin-right: 100px;
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

#procLogin {
    background-color: #7395AE;
}

#procText {
    text-align: center;
    margin-bottom: 200px;
    color:white;
    text-shadow: 1px 0 0 #000, 0 -1px 0 #000, 0 1px 0 #000, -1px 0 0 #000;
}

</style>
</head>
<body id="procLogin">
    <nav>
        <a href="home.jsp">Home</a>
        <a href="search.jsp">Search Coins</a>
        <a href= "custLogin.jsp">Customer Login</a>
        <a href="createAcct.jsp">Create Account</a>
    </nav>
<section class="two-column">
   <div class="fill">
       <img src="../demo/images/updateHeader.jpg" alt="">
   </div>
   <div> 
     <h1 id="procHeader">TeamSix Coin Company <br/> Processor Login Portal</h1>
          <form id="procedureLogin" action ="procLoginServlet" method ="post">
            
            <label for="procID" id ="procId">Processor ID</label><br/>
            <input type="text"  name="procId" required placeholder="Enter you Processor ID here.."/>
            
            <label for="Password" id="procPw">Password</label><br/>
            <input type="text" name="procPw" required placeholder="Enter your Employee Password here.."/>
            
            <input type="submit" id="submit" value="Login">
            <input type="reset" id="reset" value="Clear">
            
             <div>
       
        <span class="psw"><a href="resetPassword.jsp"> Forgot password?</a></span>
      </div>
            
        </form>
          <h2 id ="procText"> Can't remember your employee password?<br/><br/> No worries, reset it with the link, or email customer support!</h2>
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