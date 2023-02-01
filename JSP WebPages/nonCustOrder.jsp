<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%-- * This is the Non Customer Order Page. 
     * Non Customer needs to fill out the information and payment needed for the order
     * nonCustOrder is then called to add the Order to the DB and send the user to the confirmation page
--%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href = "style.css" rel = "stylesheet"/>
        <title>Non Customer Order Page</title>
        <style>
            * {
                box-sizing: border-box;
            }

            .row {
                display: -ms-flexbox;
                display: flex;
                -ms-flex-wrap: wrap; 
                flex-wrap: wrap;
                margin: 0 -16px;
            }

            .col-25 {
                -ms-flex: 25%;
                flex: 25%;
            }

            .col-50 {
                -ms-flex: 50%;
                flex: 50%;
            }

            .col-75 {
                -ms-flex: 75%; 
                flex: 75%;
            }

            .col-25, .col-50,.col-75 {
                padding: 0 16px;
            }

            .container2 {
                background-color: #f2f2f2;
                padding: 5px 20px 15px 20px;
                border: 1px solid lightgrey;
                border-radius: 3px;
            }   

            input[type=text] {
                width: 100%;
                margin-bottom: 20px;
                padding: 12px;
                border: 1px solid #ccc;
                border-radius: 3px;
            }

            label {
                margin-bottom: 10px;
                display: block;
            }

            .icon-container {
                margin-bottom: 20px;
                padding: 7px 0;
                font-size: 24px;
            }   

            .btn {
                background-color: #494E6B;
                color: white;
                padding: 12px;
                margin: 10px 0;
                border: none;
                width: 20%;
                border-radius: 3px;
                cursor: pointer;
                font-size: 17px;
            }

            .btn:hover {
                background-color: #985E6D;
            }   

            a {
                color: #2196F3;
            }

            hr {
                border: 1px solid lightgrey;
            }

            @media (max-width: 800px) {
                .row {
                    flex-direction: column-reverse;
                }
                
                .col-25 {
                    margin-bottom: 20px;
                }
            }
        </style>
    </head>
    <body>
        <div class="row">
            <div class="col-75">
                <div class="container2">
                    <form action="nonCustOrder.jsp">
      
                    <div class="row">
                        <div class="col-50">
                            <h3>Shipping Address</h3>
                            <label for="fname">Full Name</label>
                            <input type="text" required id="fname" name="firstname" placeholder="Enter First Name Here..">
                            <label for="email"> Email</label>
                            <input type="text" required id="email" name="email" placeholder="Enter Email Here..">
                            <label for="adr">Address</label>
                            <input type="text" required id="adr" name="address" placeholder="Enter Street Address Here..">
                            <label for="city">City</label>
                            <input type="text" required id="city" name="city" placeholder="Enter City Here..">

                            <div class="row">
                                <div class="col-50">
                                    <label for="state">State</label>
                                    <input type="text" required id="state" name="state" placeholder="Enter State Here..">
                                </div>
                                <div class="col-50">
                                    <label for="zip">Zip</label>
                                    <input type="text" required id="zip" name="zip" placeholder="Enter Zip Here">
                                </div>
                            </div>
                        </div>

                        <div class="col-50">
                            <h3>Payment</h3>
                            <label for="fname">Accepted Credit Cards</label>
                            <div class="icon-container">
                                <i class="fa fa-cc-visa" style="color:navy;"></i>
                                <i class="fa fa-cc-amex" style="color:blue;"></i>
                                <i class="fa fa-cc-mastercard" style="color:red;"></i>
                                <i class="fa fa-cc-discover" style="color:orange;"></i>
                            </div>
                            <label for="cname">Full Name On Card</label>
                            <input type="text" required id="cname" name="cardname" placeholder="Enter Name on Card Here..">
                            <label for="ccnum">Credit card number</label>
                            <input type="text" required id="ccnum" name="cardnumber" placeholder="Enter Card Number Here...">
                            <label for="expmonth">Expiration Month</label>
                            <input type="text" required id="expmonth" name="expmonth" placeholder="Enter Expiration Month Here..">
                            <div class="row">
                                <div class="col-50">
                                    <label for="expyear">Expiration Year</label>
                                    <input type="text" required id="expyear" name="expyear" placeholder="Enter Expiration Year Here..">
                                </div>
                                <div class="col-50">
                                    <label for="cvv">CVV</label>
                                    <input type="text" required id="cvv" name="cvv" placeholder="Enter CCV Number on Back of Card Here..">
                                </div>
                            </div>
                        </div>
                    </div>
                    <input type="submit" value="Order" class="btn" onclick="form.action ='nonCustOrder'; ">
                    <input type="submit" value="Cancel" class="btn" onclick="window.history.go(-1); return false;">
                </form>
            </div>
        </div>  
    </body>
</html>
