<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%--
     * This is the Search Coin Page
     * Customers or Non Customers can browse our inventory on the site and add them to shopping cart
     * Order Button form action calls newOrderServlet which determines if the order is from a Customer or Non Customer
     * Customers Orders will get processed immediately
     * Non Customers will be redricted to nonCustOrder.jsp to fill out information and payment
     * Non Customers Orders will be processed after billing
--%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width initial-scale=1.0">
        <link href = "style.css" rel = "stylesheet"/>
        <script src="shoppingCart.js" async></script>
        <title>Search Page</title>
       
        <style>
            
            .flip-card {
                background-color: transparent;
                width: 300px;
                height: 300px;
                perspective: 1000px;
            }

            .flip-card-inner {
                position: relative;
                width: 100%;
                height: 100%;
                text-align: center;
                transition: transform 0.6s;
                transform-style: preserve-3d;
                box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
            }

            .flip-card:hover .flip-card-inner {
                transform: rotateY(180deg);
            }

            .flip-card-front, .flip-card-back {
                position: absolute;
                width: 100%;
                height: 100%;
                -webkit-backface-visibility: hidden;
                backface-visibility: hidden;
            }

            .flip-card-front {
                background-color: #bbb;
                color: black;
            }

            .flip-card-back {
                background-color: white;
                color: black;
                transform: rotateY(180deg);
            }
            
        </style>
    </head>
    
    <body id ="searchBody">
        <nav>
            <a href="home.jsp">Home</a>
            <a href="custLogin.jsp">Customer Login</a>
            <a href= "procLogin.jsp">Processor Login</a>
        </nav>
        <h1 id="searchHead">Search Our Coins below</h1>
        <hr id ="line"/>
        
         <section class="container content-section">
            <h2 class="section-header">Copper</h2>
            <div class="shop-items">
                
                <div class="shop-item">
                    <div class="flip-card">
                        <div class="flip-card-inner">
                            <div class="flip-card-front">
                                <span class="shop-item-title">1931 S Lincoln Penny</span>
                                <img class="shop-item-image" src="images/1931 S Lincoln Penny.jpg">
                            </div>
                            <div class="flip-card-back">
                                <h1>Lincoln Penny</h1> 
                                <p>Model Year: 1931</p> 
                                <p>Key Date: 1931</p>
                                <p>Mint Mark: S</p>
                                <p>Metal: Copper</p>
                            </div>  
                        </div>
                    </div>
                    <div class="shop-item-details">
                        <span class="shop-item-price">$132.99</span>
                        <button class="btn btn-primary shop-item-button" type="button">ADD TO CART</button>
                    </div>
                </div>
                
                <div class="shop-item">
                    <div class="flip-card">
                        <div class="flip-card-inner">
                            <div class="flip-card-front">
                                <span class="shop-item-title">1909 Lincoln VDB</span>
                                <img class="shop-item-image" src="images/1909 Lincoln VDB.jpg">
                            </div>
                            <div class="flip-card-back">
                                <h1>Lincoln VDB</h1> 
                                <p>Model Year: 1909</p> 
                                <p>Key Date: None</p>
                                <p> Mint Mark: P</p>
                                <p>Metal: Copper</p>
                            </div>
                        </div>
                    </div>
                    <div class="shop-item-details">
                        <span class="shop-item-price">$89.00</span>
                        <button class="btn btn-primary shop-item-button"type="button">ADD TO CART</button>
                    </div>
                </div>
                
                <div class="shop-item">
                    <div class="flip-card">
                        <div class="flip-card-inner">
                            <div class="flip-card-front">
                                <span class="shop-item-title">1902 US Indian Head</span>
                                <img class="shop-item-image" src="images/1902 Indian Head Penny.jpg">
                            </div>
                            <div class="flip-card-back">
                                <h1>Indian Head</h1> 
                                <p>Model Year: 1902</p> 
                                <p>Key Date: 1902</p>
                                <p>Mint Mark: None</p>
                                <p>Metal: Copper</p>
                            </div>
                        </div>
                    </div>
                    <div class="shop-item-details">
                        <span class="shop-item-price">$10.99</span>
                        <button class="btn btn-primary shop-item-button" type="button">ADD TO CART</button>
                    </div>
                </div>
                
                <div class="shop-item">
                    <div class="flip-card">
                        <div class="flip-card-inner">
                            <div class="flip-card-front">
                                <span class="shop-item-title">1984 Lincoln Double Die</span>
                                <img class="shop-item-image" src="images/1984 Lincoln Double Die.jpg">
                            </div>
                            <div class="flip-card-back">
                                <h1>Lincoln DoubleDie</h1> 
                                <p>Model Year: 1984</p> 
                                <p>Key Date: 1984</p>
                                <p>Mint Mark: P</p>
                                <p>Metal: Copper</p>
                            </div>
                        </div>
                    </div>
                    <div class="shop-item-details">
                        <span class="shop-item-price">$150.99</span>
                        <button class="btn btn-primary shop-item-button" type="button">ADD TO CART</button>
                    </div>
                </div>
            </div>
        </section>
        
        <hr id ="line"/>
        
        <section class="container content-section">
            <h2 class="section-header">Nickel</h2>
            <div class="shop-items">
                <div class="shop-item">
                    <div class="flip-card">
                        <div class="flip-card-inner">
                            <div class="flip-card-front">
                                <span class="shop-item-title">1938 Jefferson Nickel</span>
                                <img class="shop-item-image" src="images/1938 Jefferson Nickel.jpg">
                            </div>
                            <div class="flip-card-back">
                                <h1>Jefferson Nickel</h1> 
                                <p>Model Year: 1938</p> 
                                <p>Key Date: 1938</p>
                                <p>Mint Mark: S</p>
                                <p>Metal: Nickel</p>
                            </div>
                        </div>
                    </div>
                    <div class="shop-item-details">
                        <span class="shop-item-price">$6.99</span>
                        <button class="btn btn-primary shop-item-button" type="button">ADD TO CART</button>
                    </div>
                </div>
                
                <div class="shop-item">
                    <div class="flip-card">
                        <div class="flip-card-inner">
                            <div class="flip-card-front">
                                <span class="shop-item-title">1907 Indian Head Buffalo</span>
                                <img class="shop-item-image" src="images/Indian Head Buffalo Nickel.jpg">
                            </div>
                            <div class="flip-card-back">
                                <h1>Indian Head Buffalo</h1> 
                                <p>Model Year: 1918</p> 
                                <p>Key Date: 1907</p>
                                <p>Mint Mark: P</p>
                                <p>Metal Nickel</p>
                            </div>
                        </div>
                    </div>
                    <div class="shop-item-details">
                        <span class="shop-item-price">$69.99</span>
                        <button class="btn btn-primary shop-item-button" type="button">ADD TO CART</button>
                    </div>
                </div>
                
                <div class="shop-item">
                    <div class="flip-card">
                        <div class="flip-card-inner">
                            <div class="flip-card-front">
                                <span class="shop-item-title">2020 Jefferson WestPoint</span>
                                <img class="shop-item-image" src="images/2020 Jefferson Nickel OGP WestPoint.jpg">
                            </div>
                            <div class="flip-card-back">
                                <h1>Jefferson WestPoint</h1> 
                                <p>Model Year: 2020</p> 
                                <p>Key Date: None</p>
                                <p>Mint Mark: W</p>
                                <p>Metal: Nickel</p>
                            </div>
                        </div>
                    </div>
                    <div class="shop-item-details">
                        <span class="shop-item-price">$21.00</span>
                        <button class="btn btn-primary shop-item-button" type="button">ADD TO CART</button>
                    </div>
                </div>
                
                <div class="shop-item">
                    <div class="flip-card">
                        <div class="flip-card-inner">
                            <div class="flip-card-front">
                                <span class="shop-item-title">1886 Liberty Head</span>
                                <img class="shop-item-image" src="images/1886 Liberty Head PCGS.jpg">
                            </div>
                            <div class="flip-card-back">
                                <h1>Libery Head</h1> 
                                <p>Model Year: 1889</p> 
                                <p>Key Date: None</p>
                                <p> Mint Mark: None</p>
                                <p>Metal: Nickel</p>
                            </div>
                        </div>
                    </div>
                    <div class="shop-item-details">
                        <span class="shop-item-price">$295.99</span>
                        <button class="btn btn-primary shop-item-button" type="button">ADD TO CART</button>
                    </div>
                </div>
            </div>
        </section>
        
        <hr id ="line"/>
        
        <section class="container content-section">
            <h2 class="section-header">Silver/Gold</h2>
            <div class="shop-items">
                <div class="shop-item">
                    <div class="flip-card">
                        <div class="flip-card-inner">
                            <div class="flip-card-front">
                                <span class="shop-item-title">2021 Gold American Eagle</span>
                                <img class="shop-item-image" src="images/2021 Gold American Eagle.jpg">
                            </div>
                            <div class="flip-card-back">
                                <h1>American Eagle</h1> 
                                <p>Model Year: 2021</p> 
                                <p>Key Date: None</p>
                                <p>Mint Mark: None</p>
                                <p>Metal: Gold</p>
                            </div>
                        </div>
                    </div>
                    <div class="shop-item-details">
                        <span class="shop-item-price">$19.99</span>
                        <button class="btn btn-primary shop-item-button" type="button">ADD TO CART</button>
                    </div>
                </div>
                
                <div class="shop-item">
                    <div class="flip-card">
                        <div class="flip-card-inner">
                            <div class="flip-card-front">
                                <span class="shop-item-title">1951 Franklin Half Dollar</span>
                                <img class="shop-item-image" src="images/Franklin Half Dollar.jpg">
                            </div>
                            <div class="flip-card-back">
                                <h1>Franklin Half</h1> 
                                <p>Model Year: 1951</p> 
                                <p>Key Date: None</p>
                                <p>Mint Mark: D</p>
                                <p>Metal: Silver</p>
                            </div>
                        </div>
                    </div>
                    <div class="shop-item-details">
                        <span class="shop-item-price">$22004.00</span>
                        <button class="btn btn-primary shop-item-button" type="button">ADD TO CART</button>
                    </div>
                </div>
                
                <div class="shop-item">
                    <div class="flip-card">
                        <div class="flip-card-inner">
                            <div class="flip-card-front">
                                <span class="shop-item-title">1946 Walking Liberty</span>
                                <img class="shop-item-image" src="images/1946 Walking Liberty Half Dollar.jpg">
                            </div>
                            <div class="flip-card-back">
                                <h1>Walking Liberty</h1> 
                                <p>Model Year: 9999</p> 
                                <p>Key Date: 1946</p>
                                <p>Mint Mark: None</p>
                                <p>Metal: Silver</p>
                            </div>
                        </div>
                    </div>
                    <div class="shop-item-details">
                        <span class="shop-item-price">$92.99</span>
                        <button class="btn btn-primary shop-item-button" type="button">ADD TO CART</button>
                    </div>
                </div>
                
                <div class="shop-item">
                    <div class="flip-card">
                        <div class="flip-card-inner">
                            <div class="flip-card-front">
                                <span class="shop-item-title">1976 Bicentennial Quarter</span>
                                <img class="shop-item-image" src="images/Bicentennial Washington Quarter.jpg">
                            </div>
                            <div class="flip-card-back">
                                <h1>Bicentennial</h1> 
                                <p>Model Year: 1976</p> 
                                <p>Key Date: None</p>
                                <p>Mint Mark: S</p>
                                <p>Metal: Silver </p>
                            </div>
                        </div>
                    </div>
                    <div class="shop-item-details">
                        <span class="shop-item-price">$9.99</span>
                        <button class="btn btn-primary shop-item-button" type="button">ADD TO CART</button>
                    </div>
                </div>
                
                <div class="shop-item">
                    <div class="flip-card">
                        <div class="flip-card-inner">
                            <div class="flip-card-front">
                                <span class="shop-item-title">1847 Gold Liberty Head</span>
                                <img class="shop-item-image" src="images/1847 Gold Liberty Head.jpg">
                            </div>
                            <div class="flip-card-back">
                                <h1>Liberty Head</h1> 
                                <p>Model Year: 1999</p> 
                                <p>Key Date: 1847</p>
                                <p>Mint Mark: None</p>
                                <p>Metal: Gold</p>
                            </div>
                        </div>
                    </div>
                    <div class="shop-item-details">
                        <span class="shop-item-price">$1495.99</span>
                        <button class="btn btn-primary shop-item-button" type="button">ADD TO CART</button>
                    </div>
                </div>
                
                <div class="shop-item">
                    <div class="flip-card">
                        <div class="flip-card-inner">
                            <div class="flip-card-front">
                                <span class="shop-item-title">1830 Bust Dime</span>
                                <img class="shop-item-image" src="images/1830 Bust Dime.jpg">
                            </div>
                            <div class="flip-card-back">
                                <h1>Bust Dime</h1> 
                                <p>Model Year: 1909</p> 
                                <p>Key Date: None</p>
                                <p>Mint Mark: None</p>
                                <p>Metal: Silver</p>
                            </div>
                        </div>
                    </div>
                    <div class="shop-item-details">
                        <span class="shop-item-price">$259.99</span>
                        <button class="btn btn-primary shop-item-button" type="button">ADD TO CART</button>
                    </div>
                </div>
                
                <div class="shop-item">
                    <div class="flip-card">
                        <div class="flip-card-inner">
                            <div class="flip-card-front">
                                <span class="shop-item-title">1921 Mercury Dime</span>
                                <img class="shop-item-image" src="images/1921 Mercury Dime.jpg">
                            </div>
                            <div class="flip-card-back">
                                <h1>Mercury Dime</h1> 
                                <p>Model Year: None</p> 
                                <p>Key Date: 1921</p>
                                <p>Mint Mark: S</p>
                                <p>Metal: Silver</p>
                            </div>
                        </div>
                    </div>
                    <div class="shop-item-details">
                        <span class="shop-item-price">$89.00</span>
                        <button class="btn btn-primary shop-item-button" type="button">ADD TO CART</button>
                    </div>
                </div>
                
                <div class="shop-item">
                    <div class="flip-card">
                        <div class="flip-card-inner">
                            <div class="flip-card-front">
                                <span class="shop-item-title">1964 JFK Half Dollar</span>
                                <img class="shop-item-image" src="images/1964 JFK Half Dollar.jpg">
                            </div>
                            <div class="flip-card-back">
                                <h1>JFK Half</h1> 
                                <p>Model Year: 1964</p> 
                                <p>Key Date: None</p>
                                <p>Mint Mark: D</p>
                                <p>Metal: Silver</p>
                            </div>
                        </div>
                    </div>
                    <div class="shop-item-details">
                        <span class="shop-item-price">$28.00</span>
                        <button class="btn btn-primary shop-item-button" type="button">ADD TO CART</button>
                    </div>
                </div>
            </div>
        </section>
        
        <hr id ="line"/>
        
        <form action="search.jsp">
            <section class="container content-section">
                <h2 class="section-header">Checkout Cart</h2>
                <div class="cart-row">
                    <span class="cart-item cart-header cart-column">Coin</span>
                    <span class="cart-price cart-header cart-column">Price</span>
                    <span class="cart-quantity cart-header cart-column">Quantity</span>
                </div>
                <div class="cart-items">
                </div>
                <div class="cart-total">
                    <strong class="cart-total-title">Amount Due</strong>
                    <span class="cart-total-price">$0</span>
                    <input type="hidden" id="hiddenId" name="hiddenId"/>
                </div>
                <button class="btn btn-primary btn-purchase" type="submit" onclick="form.action ='newOrderServlet';">Order</button>
            </section>
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
        
    </body>
</html>
