<%-- 
    Document   : qualification_app
    Created on : 18 May 2023, 6:52:18 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/maTStyle.css">
    </head>
    <body>
        <div class="wrapper">
        <div class="title">
          Registration Form
        </div>
        <form action="QulificationSelectServlet.do" method="POST">
            <div class="form">
              <div class="inputfield">
                  <label>Study Period</label>
                  <div class="custom_select">
                    <select name="period">
                      <option value="">Select</option>
                      <option value="June 2023 - May 2025">June 2023 - May 2025</option>
                      <option value="January 2024 - December 2026">January 2024 - December 2026</option>
                    </select>
                  </div>
               </div>
                <div class="inputfield">
                  <label>Course</label>
                  <div class="custom_select">
                    <select name="qualif">
                      <option value="">Select</option>
                      <option value="Innovation and Entrepreneurship">Innovation and Entrepreneurship</option>
                      <option value="Cybersecurity">Cybersecurity</option>
                      <option value="Machine Learning">Machine Learning</option>
                      <option value="Hackathon Umbrella">Hackathon Umbrella</option>
                    </select>
                  </div>
               </div> 
              
              <div class="inputfield">
                <input type="submit" value="Submit Application" class="btn">
              </div>
            </div>
        </form>
    </div>
    </body>
</html>
