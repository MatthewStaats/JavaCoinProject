<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%-- 
     * This is the Customer/Employee Reset Password Page. 
     * When the user forgets password they can enter ID and email to reset password
     * Email functionality is not setup, just for show
--%>

<html>
  <head>
    <title>Reset Password Page</title>
    <style>
      html, body {
      display: flex;
      justify-content: center;
      font-family: Roboto, Arial, sans-serif;
      font-size: 15px;
      }
      
      body {
          background-color: #16325c;
      }
      
      form {
      border: 5px solid #f1f1f1;
      margin-top: 150px;
      background-color:white;
      }
      input[type=text], input[type=password] {
      width: 100%;
      padding: 16px 8px;
      margin: 8px 0;
      display: inline-block;
      border: 1px solid #ccc;
      box-sizing: border-box;
      background-color:white;
      }
      
      button {
      background-color: #0070d2;
      color: white;
      padding: 12px 0;
      margin: 10px 0;
      border: none;
      cursor: grabbing;
      width: 30%;
      }
      h1 {
      text-align:center;
      fone-size:18;
      }
      button:hover {
      opacity: 0.8;
      }
      .formcontainer {
      text-align: left;
      margin: 24px 50px 12px;
      background-color: white;
      }
      .container {
      padding: 16px 0;
      text-align:left;
      background-color:white;
      }
      span.email {
      float: right;
      padding-top: 0;
      padding-right: 15px;
      }     

    </style>
  </head>
  <body>
    <form action ="resetPassword.jsp">
      <h1>Forgot Your Password</h1>
      <div class="formcontainer">
      <hr/>
      <div class="container">
        <label for="id"><strong>ID</strong></label>
        <input type="text" placeholder="Enter Your Account ID" id ="id" name="id" required>
        <label for="psw"><strong>Email</strong></label>
        <input type="text" placeholder="Enter Your Email" id="pw" name="email" required>
      </div>
      <button type="submit" onclick="Reset()" href = "home.jsp">Submit</button>
      <button type="submit" onclick="window.history.go(-1); return false;">Cancel</button>
      </div>
    </form>    
    <script>
            function Reset() {
                    alert("Check your email, for link to reset password");
            }
</script>
  </body>
</html>