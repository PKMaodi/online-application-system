<%-- 
    Document   : personal_info
    Created on : 18 May 2023, 3:43:10 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Next of Kin Information Page</title>
        <link rel="stylesheet" href="css/maTStyle.css">
        <style>
            .inputfield .btn{
              width: 100%;
               padding: 8px 10px;
              font-size: 15px; 
              border: 0px;
              background:  #03e9f4;
              color: black;
              cursor: pointer;
              border-radius: 3px;
              outline: none;
            }

            .inputfield .btn:hover{
              background: #03e9f4;
            }
        </style>
    </head>
    <body>
        <div class="wrapper">
        <div class="title">
          Next of kin
        </div>
        <form action="NOKDetailsServlet.do" method="POST">
            <div class="form">
               <div class="inputfield">
                  <label>First Name</label>
                  <input type="text" id="firstname" name="NOKfirstname" class="input" required>
               </div>
               <div class="inputfield">
                  <label>Surname</label>
                  <input type="text" id="lastname" name="NOKlastname" class="input" required>
               </div> 
                <div class="inputfield">
                  <label>Email Address</label>
                  <input type="email" id="email" name="NOKemail" class="input">
               </div> 
              <div class="inputfield">
                  <label>Phone Number</label>
                  <input type="tel" id="phone" name="NOKphone" class="input">
               </div> 
              <div class="inputfield">
                  <label>Residential Address</label>
                  <textarea class="textarea" name="NOKaddress"></textarea>
               </div> 
              <div class="inputfield">
                  <label>Postal Code</label>
                  <input type="text" class="input" name="NOKpcode">
               </div> 
              <div class="inputfield">
                <input type="submit" value="Next" class="btn">
              </div>
            </div>
        </form>
            <br>
        <div class="inputfield">
            <button href="personal_info.jsp" value="Next" class="btn">Back</button>
        </div>
    </div>	
    </body>
</html>
