<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%-- 
    * This is the Processor Login Error jsp Page. 
    * When the user enters wrong login information procLoginServlet sends the user here.
    * Informing the User of their mistake. User can then hit back button or use navigation to go back
--%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width initial-scale=1.0">
        <link href = "style.css" rel = "stylesheet"/>
        <title>Processor Login Error Page</title>
        
        <style>
            
            .sorry {
                display: block;
                margin-left: auto;
                margin-right: auto;
                padding-top: 40px;
                padding-bottom: 40px;
            }
            
            #procText {
                text-align: center;
                margin-bottom: 200px;
                color:white;
                text-shadow: 1px 0 0 #000, 0 -1px 0 #000, 0 1px 0 #000, -1px 0 0 #000;
                padding-bottom: 10px;
            }
            
        </style>
    </head>
    <body id="procLogin">
        
        <nav>
            <a href="home.jsp">Home</a>
            <a href="search.jsp">Search Coins</a>
            <a href= "procLogin.jsp">Processor Login</a>
        </nav>
        
        <img class="sorry" src="images/sorry.jpg" width="450" height="300">
        <h1 id ="procText">You entered the wrong password.<br/><br/> Make sure that you type your Employee Id and Password correctly<br/><br/>
                          Forgot Your Password? Use forgot password link above or contact your administrator</h1>
       
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
