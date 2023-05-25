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
        <title>Personal Information Page</title>
        <link rel="stylesheet" href="css/maTStyle.css">
    </head>
    <body>
        <div class="wrapper">
        <div class="title">
          Personal details
        </div>
        <form action="PersonalDetailsServlet.do" method="POST">
            <div class="form">
                <div class="inputfield">
                  <label>ID Number</label>
                  <input type="text" id="idNumber" name="idnum" class="input" required>
               </div> 
               <div class="inputfield">
                  <label>First Name</label>
                  <input type="text" id="firstname" name="firstname" class="input" required>
               </div>  
                <div class="inputfield">
                  <label>Middle Name(optional)</label>
                  <input type="text" id="lastname" class="input">
               </div> 
               <div class="inputfield">
                  <label>Surname</label>
                  <input type="text" id="lastname" name="lastname" class="input" required>
               </div>
                <div class="inputfield">
                  <label>Gender</label>
                  <div class="custom_select">
                      <select name="gender">
                      <option value="">Select</option>
                      <option value="male">Male</option>
                      <option value="female">Female</option>
                    </select>
                  </div>
               </div> 
                <div class="inputfield">
                  <label>Email Address</label>
                  <input type="email" id="email" name="email" class="input">
               </div> 
              <div class="inputfield">
                  <label>Phone Number</label>
                  <input type="tel" id="phone" name="phone" class="input">
               </div> 
              <div class="inputfield">
                  <label>Residential Address</label>
                  <textarea class="textarea" name="address"></textarea>
               </div> 
              <div class="inputfield">
                  <label>Postal Code</label>
                  <input type="text" class="input" name="pcode">
               </div> 
                <div class="inputfield terms">
                  <label class="check">
                    <input type="checkbox">
                    <span class="checkmark"></span>
                  </label>
                  <p>Disability</p>
                 
               </div>
                <div class="inputfield">
                  <label>Disability</label>
                  <textarea class="textarea"></textarea>
               </div>
              <div class="inputfield terms">
                  <label class="check">
                    <input type="checkbox" required>
                    <span class="checkmark"></span>
                  </label>
                  <p>Agree to terms and conditions</p>
               </div> 
              <div class="inputfield">
                <input type="submit" value="Next" class="btn">
              </div>
            </div>
        </form>
    </div>	
    </body>
</html>
