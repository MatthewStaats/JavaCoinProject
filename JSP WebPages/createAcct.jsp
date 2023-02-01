<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%-- * This is the Create a new Customer Account Page. 
     * The customer will fill out the information then call the createAcctServlet.
     * Servlet will insert new Customer record into DB and send the Customer to the custInfo jsp after succesful creation.
--%>
<html>
   <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href = "style.css" rel = "stylesheet"/>
        <title>New Member Registration</title>
    <style>
      html, body {
      min-height: 100%;
      background-color: #DFDFE5;
      }
      body, div, form, input, select, textarea, label, p { 
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
      font-size: 40px;
      color: #fff;
      z-index: 2;
      line-height: 83px;
      color: white;
      text-shadow: 1px 0 0 #5D5C61, 0 -1px 0 #5D5C61, 0 1px 0 #5D5C61, -1px 0 0 #5D5C61;
      }
      textarea {
      width: calc(100% - 12px);
      padding: 5px;
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
      box-shadow: 0 0 8px  #669999; 
      }
      .banner {
      position: relative;
      height: 300px;
      background-image: url('../demo/images/membership.jpg');  
      background-size: cover;
      display: flex;
      justify-content: center;
      align-items: center;
      text-align: center;
      }
      .banner::after {
      content: "";
      background-color: rgba(0, 0, 0, 0.2); 
      position: absolute;
      width: 100%;
      height: 100%;
      }
      input, select, textarea {
      margin-bottom: 10px;
      border: 1px solid #ccc;
      border-radius: 3px;
      }
      input {
      width: calc(100% - 10px);
      padding: 5px;
      }
      input[type="date"] {
      padding: 4px 5px;
      }
      textarea {
      width: calc(100% - 12px);
      padding: 5px;
      }
      .item:hover p, .item:hover i, .question:hover p, .question label:hover, input:hover::placeholder {
      color:  #669999;
      }
      .item input:hover, .item select:hover, .item textarea:hover {
      border: 1px solid transparent;
      box-shadow: 0 0 3px 0  #669999;
      color: #669999;
      }
      .item {
      position: relative;
      margin: 10px 0;
      }
      .item span {
      color: red;
      }
      .week {
      display:flex;
      justfiy-content:space-between;
      }
      .colums {
      display:flex;
      justify-content:space-between;
      flex-direction:row;
      flex-wrap:wrap;
      }
      .colums div {
      width:48%;
      }
      input[type="date"]::-webkit-inner-spin-button {
      display: none;
      }
      .item i, input[type="date"]::-webkit-calendar-picker-indicator {
      position: absolute;
      font-size: 20px;
      color:  #a3c2c2;
      }
      .item i {
      right: 1%;
      top: 30px;
      z-index: 1;
      }
      input[type=radio], input[type=checkbox]  {
      display: none;
      }
      label.radio {
      position: relative;
      display: inline-block;
      margin: 5px 20px 15px 0;
      cursor: pointer;
      }
      .question span {
      margin-left: 30px;
      }
      .question-answer label {
      display: block;
      }
      label.radio:before {
      content: "";
      position: absolute;
      left: 0;
      width: 17px;
      height: 17px;
      border-radius: 50%;
      border: 2px solid #ccc;
      }
      input[type=radio]:checked + label:before, label.radio:hover:before {
      border: 2px solid  #669999;
      }
      label.radio:after {
      content: "";
      position: absolute;
      top: 6px;
      left: 5px;
      width: 8px;
      height: 4px;
      border: 3px solid  #669999;
      border-top: none;
      border-right: none;
      transform: rotate(-45deg);
      opacity: 0;
      }
      input[type=radio]:checked + label:after {
      opacity: 1;
      }
      .flax {
      display:flex;
      justify-content:space-around;
      }
      .btn-block {
      margin-top: 10px;
      text-align: center;
      }
      button {
      width: 150px;
      padding: 10px;
      border: none;
      border-radius: 5px; 
      background:  #669999;
      font-size: 16px;
      color: #fff;
      cursor: pointer;
      }
      button:hover {
      background:  #a3c2c2;
      }
      @media (min-width: 568px) {
      .name-item, .city-item {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      }
      .name-item input, .name-item div {
      width: calc(50% - 20px);
      }
      .name-item div input {
      width:97%;}
      .name-item div label {
      display:block;
      padding-bottom:5px;
      }
      
       nav {
        overflow: hidden;
        background-color: white;
        border-style: none;
        width:100%;
        }

        nav a {
        float: left;
        color: black;
        font-size: 16px;
        padding: 8px 12px;
        text-decoration: none;
        }
      }
    </style>
  </head>
  <body>
    <nav>
        <a href="home.jsp">Home</a>
        <a href="search.jsp">Search Coins</a> 
        <a href = "custLogin.jsp">Customer Login</a>
        <a href= "procLogin.jsp">Processor Login</a>
    </nav>
    <div class="testbox">
      <form action="/">
        <div class="banner">
          <h1>New Member Registration</h1>
        </div>
        <div class="colums">
           <div class="item">
            <label for="id">Customer ID<span>*</span></label>
            <input id="fname" type="text" name="newId" required placeholder="Enter your Customer ID Number"/>
          </div>
          <div class="item">
            <label for="pw">Password<span>*</span></label>
            <input id="address2" type="text" name="newPw" required placeholder="Enter your Account Password here.."/>
          </div>
          <div class="item">
            <label for="fname"> First Name<span>*</span></label>
            <input id="fname" type="text" name="newFn" required placeholder="Enter your First Name here.."/>
          </div>
          <div class="item">
            <label for="lname"> Last Name<span>*</span></label>
            <input id="lname" type="text" name="newLn" required placeholder="Enter your Last Name here.."/>
          </div>
          <div class="item">
            <label for="address1">Street<span>*</span></label>
            <input id="address1" type="text" name="newStreet" required placeholder="Enter your Street Address here.."/>
          </div>
          <div class="item">
            <label for="state">State<span>*</span></label>
            <input id="state" type="text" name="newState" required placeholder="Enter your State here.."/>
          </div>
          <div class="item">
            <label for="zip">Zip/Postal Code<span>*</span></label>
            <input id="zip" type="text" name="newZip" required placeholder="Enter your Zip here.."/>
          </div>
          <div class="item">
            <label for="city">City<span>*</span></label>
            <input id="city" type="text" name="newCity" required placeholder="Enter your City here.."/>
          </div>
          <div class="item">
            <label for="eaddress">Email Address<span>*</span></label>
            <input id="eaddress" type="text" name="newEmail" required placeholder="Enter your Email here.."/>
          </div>
          <div class="item">
            <label for="phone">Phone<span>*</span></label>
            <input id="phone" type="tel"   name="newPhone" required placeholder="Enter your Phone here.."/>
          </div>
        </div>
        <div class="question">
          <label>Preferred way to contact </label>
          <div class="question-answer">
            <div>
              <input type="radio" value="none" id="radio_4" name="contact"/>
              <label for="radio_4" class="radio"><span>Phone</span></label>
            </div>
            <div>
              <input  type="radio" value="none" id="radio_5" name="contact"/>
              <label for="radio_5" class="radio"><span>Email</span></label>
            </div>
            <div>
              <input  type="radio" value="none" id="radio_6" name="contact"/>
              <label for="radio_6" class="radio"><span>Either</span></label>
            </div>
          </div>
        </div>
        <h2>Terms and Conditions</h2>
        <input type="checkbox" name="checkbox1">
        <label>By clicking you agree to our service terms and conditions. You consent to receive communications from us electronically. We will communicate with you by e-mail or phone sending you deals and dealing with orders. Team 6 CoinCompany thanks you for your business and we look forward to helping you expand your coin collection.</label>
        <div class="btn-block">
          <button type="submit" onclick="form.action ='createAcctServlet'; " href="/">Submit</button>
          <button type="submit" onclick="window.history.go(-1); return false;">Cancel</button>
        </div>
      </form>
    </div>
  </body>
</html>
