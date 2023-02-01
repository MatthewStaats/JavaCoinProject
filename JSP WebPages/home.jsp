<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%-- * This is the Home Landing jsp Page. 
     * When you run Coin Project Application, you will want to run the program using this jsp first.
     * It leads to both logins, search, and create a new customer account page.
--%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width initial-scale=1.0">
        <link href = "style.css" rel = "stylesheet" type="text/css"/>
        <title>Home Landing Page</title>
    </head>
    <body>
        <header class="masthead">
            <nav>
                <a href = "search.jsp">Search Coins</a>
                <a href = "custLogin.jsp">Customer Login</a>
                <a href = "procLogin.jsp">Processor Login</a>
                <a href = "createAcct.jsp">Create Account</a>
                <a id="logout" onclick="Logout()" href = "logoutServlet">Logout</a>
            </nav>
            <div class="container-fluid" id ="home">
                <h1 id="homeMainText">TeamSix Coin Company</h1>
                <h2 id="homeSubText">We are Amazon for true coin collectors</h2>
            </div>
            <div id="scroll-down">
                <a href="#about" style="text-decoration:none" id="scrollerLink"><h1 id="scroller">╲╱</h1></a>
            </div>
        </header>
        <div class="container-fluid" id="aboutUs">
            <h1 id="about"> Explore our wide collection of coins</h1><br/><br/><br/>
            
            <h1 id ="about2">"We aim to provide great customer service<br/>for coin collectors world wide."</h1>
            
            <form action="home.jsp">
                <input id="homeButton" type="submit" value="Search Coins" onclick="form.action ='search.jsp'"/>
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
