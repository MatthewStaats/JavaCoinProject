<%@page import="Business.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%-- * This is the Customer Update Information Page. 
     * The logged in user can edit all account information but their Customer Id
     * After submit custUpdateServlet is called to update the information in the Database
     * Then sending the customer to confirmation success page, to inform them
--%>
<html>
   <head>
    <title>Update Account Information</title>
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
      background-image: url('../demo/images/updateHeader.jpg');  
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
        <a id="logout" onclick="Logout()" href = "logoutServlet">Logout</a>
    </nav>
    <div class="testbox">
      <form action="/">
        <div class="banner">
          <h1>Update Account Information</h1>
        </div>
        <%
          
            Customer c1;
            
            c1 = (Customer)session.getAttribute("c1");
                  
        %>
        
        <div class="colums">
          <div class="item">
            <label for="fname">Customer ID<span> *Not Editable*</span></label>
            <input id="fname" type="text" name="custID" value="<%=c1.getCustID()%>" readonly required placeholder="ID Not editable.."/>
          </div>
          <div class="item">
            <label for="pw">Password<span> *Editable*</span></label>
            <input id="address2" type="text" name="custPW" value="<%=c1.getPassword()%>" required placeholder="Enter your Account Password here.."/>
          </div>
          <div class="item">
            <label for="fname"> First Name<span> *Editable*</span></label>
            <input id="fname" type="text" name="custFn" value="<%=c1.getFirstName()%>" required placeholder="Enter your First Name here.."/>
          </div>
          <div class="item">
            <label for="lname"> Last Name<span> *Editable*</span></label>
            <input id="lname" type="text" name="custLn" value="<%=c1.getLastName()%>" required placeholder="Enter your Last Name here.."/>
          </div>
          <div class="item">
            <label for="address1">Street<span> *Editable*</span></label>
            <input id="address1" type="text" name="custStreet" value="<%=c1.getStreet()%>" required placeholder="Enter your Street Address here.."/>
          </div>
          <div class="item">
            <label for="state">State<span> *Editable*</span></label>
            <input id="state" type="text" name="custState" value="<%=c1.getState()%>" required placeholder="Enter your State here.."/>
          </div>
          <div class="item">
            <label for="zip">Zip/Postal Code<span> *Editable*</span></label>
            <input id="zip" type="text" name="custZip" value="<%=c1.getZip()%>" required placeholder="Enter your Zip here.."/>
          </div>
          <div class="item">
            <label for="city">City<span> *Editable*</span></label>
            <input id="city" type="text" name="custCity" value="<%=c1.getCity()%>" required placeholder="Enter your City here.."/>
          </div>
          <div class="item">
            <label for="eaddress">Email Address<span> *Editable*</span></label>
            <input id="eaddress" type="text" name="custEmail" value="<%=c1.getEmail()%>" required placeholder="Enter your Email here.."/>
          </div>
          <div class="item">
            <label for="phone">Phone<span> *Editable*</span></label>
            <input id="phone" type="tel" name="custPhone" value="<%=c1.getPhone()%>" required placeholder="Enter your Phone here.."/>
          </div>
        </div>
        <div class="btn-block">
          <button type="submit" onclick="form.action ='custUpdateServlet';" href="/">Submit</button>
          <button type="submit" onclick="window.history.go(-1); return false;">Cancel</button>
        </div>
      </form>
    </div>
    <script>
            function Logout() {
                alert("You're now logged out");
            }
</script>
  </body>
</html>
