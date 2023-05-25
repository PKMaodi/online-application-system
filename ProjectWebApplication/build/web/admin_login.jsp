<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login</title>
  <link rel="stylesheet" href="css/maTStyle.css">
</head>
<body>
  <div class="login">
    <h2>LOG IN</h2>
    <form action="AdminLoginServlet.do" method="POST">
          <div class="user-box">
            <input type="text" id="idNumber" name="staffNo" class="input" required>
            <label>Staff Number</label>
          </div>
          <div class="user-box">
            <input type="password" id="password" name="password" class="input" required>
            <label>Password</label>
          </div>
          <a>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            login
            <input type="submit" value="LOGIN" id="submitBtn"/>
          </a>
    </form>
  </div>
  
</body>
</html>