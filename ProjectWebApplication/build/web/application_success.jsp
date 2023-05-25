<%-- 
    Document   : view_applications
    Created on : 18 May 2023, 10:02:33 AM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Applications Page</title>
        <style>
            @import url('https://fonts.googleapis.com/css?family=Montserrat:400,700&display=swap');
            *{
              margin: 0;
              padding: 0;
              box-sizing: border-box;
              font-family: 'Montserrat', sans-serif;
            }
            body{
              background-image: url("img/tachy.png");
            }
            .brody{
              position: absolute;
              top: 50%;
              left: 50%;
              width: 400px;
              padding: 40px;
              transform: translate(-50%, -50%);
              background: rgba(0,0,0,1);
              box-sizing: border-box;
              box-shadow: 0 15px 25px rgba(0,0,0,.6);
              border-bottom: 1.50px solid #03e9f4;
              border-radius: 10px;
            }
            h2{
              margin: 0 0 30px;
              padding: 0;
              color: #03e9f4;
              text-align: center;
              text-decoration: none;
              text-transform: uppercase;
            }
            span{
              color: #03e9f4;
              float: right;
            }
            a{
              position: relative;
              display: inline-block;
              padding: 10px 20px;
              color: #03e9f4;
              font-size: 16px;
              text-decoration: none;
              text-transform: uppercase;
              overflow: hidden;
              transition: 0.5s;
              margin-top: 40px;
              letter-spacing: 4px;
            }
            button{
              position: relative;
              display: inline-block;
              padding: 10px 20px;
              color: #03e9f4;
              font-size: 16px;
              text-decoration: none;
              text-transform: uppercase;
              overflow: hidden;
              transition: 0.5s;
              margin-top: 40px;
              letter-spacing: 4px;
            }
            a:hover{
              background: #03e9f4;
              color: #fff;
              border-radius: 5px;
              box-shadow: 0 0 5px #03e9f4,
                          0 0 25px #03e9f4,
                          0 0 50px #03e9f4,
                          0 0 100px #03e9f4;
            }
            a span{
              position: absolute;
              display: block;
            }
            a span:nth-child(1){
              top: 0;
              left: -100%;
              width: 100%;
              height: 2px;
              background: linear-gradient(90deg, transparent, #03e9f4);
              animation: animatedbtn1 1s linear infinite;
            }
            @keyframes animatedbtn1{
              0%{
                left: -100%;
              }
              50%,100%{
                left: 100%;
              }
            }
            a span:nth-child(2){
              top: -100%;
              right: 0;
              width: 2px;
              height: 100%;
              background: linear-gradient(90deg, transparent, #03e9f4);
              animation: animatedbtn2 1s linear infinite;
              animation-delay: .25s;
            }
            @keyframes animatedbtn2{
              0%{
                top: -100%;
              }
              50%,100%{
                top: 100%;
              }
            }
            a span:nth-child(3){
              bottom: 0;
              right: -100%;
              width: 100%;
              height: 2px;
              background: linear-gradient(90deg, transparent, #03e9f4);
              animation: animatedbtn3 1s linear infinite;
              animation-delay: .5s;
            }
            @keyframes animatedbtn3{
              0%{
                right: -100%;
              }
              50%,100%{
                right: 100%;
              }
            }
            a span:nth-child(4){
              bottom: -100%;
              left: 0;
              width: 2px;
              height: 100%;
              background: linear-gradient(90deg, transparent, #03e9f4);
              animation: animatedbtn4 1s linear infinite;
              animation-delay: .75s;
            }
            @keyframes animatedbtn4{
              0%{
                bottom: -100%;
              }
              50%,100%{
                bottom: 100%;
              }
            }
            @media screen and (max-width:430px){
              body{
                width: 90%;
              }
            }
        </style>
    </head>
    <body>
        <div class="brody">
        <h2>Your Application was successful. Lookout for application status updates</h2>
        <a href="AppliEndSessionServlet.do">
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            go to home
        </a>
    </div>
        
    </body>
</html>
