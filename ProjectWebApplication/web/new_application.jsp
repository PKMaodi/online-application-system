<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Applicant Registration Form</title>
	<link rel="stylesheet" href="css/maTStyle.css">
        <style>
            body{
              background-image: url("img/start.jpg");
              color: white;
            }
            .brody{
              position: absolute;
              top: 35%;
              left: 50%;
              width: 1100px;
              padding: 40px;
              transform: translate(-50%, -50%);
              background: rgba(0,0,0,.8);
              box-sizing: border-box;
              box-shadow: 0 15px 25px rgba(0,0,0,.6);
              border-bottom: 1.50px transparent;
              border-radius: 10px;
            }
            #notice{
                text-transform: uppercase;
                font-size: 20px;
                color: #03e9f4;
            }
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
            ol{
                list-style-type: none;
                font-size: 18px;
                
            }
        </style>
</head>

<body>
    <div class="brody">
        <form action="personal_info.jsp">
             <p id="notice">
                Please be sure to provide the correct information regarding the following:-
            </p>
            <br>
            <br>
            <ol>
                <li>
                    <a>Identification</a>
                </li>
                <br>
                <br>
                <li>
                    <a>Residential Address</a>
                </li>
                <br>
                <br>
                <li>
                    <a>Next of Kin</a>
                </li>
                <br>
                <br>
                <li>
                    <a>School Leaving</a>
                </li>
                <br>
                <br>
                <div class="inputfield">
                <input type="submit" value="Continue" class="btn">
                </div>
            </ol>
              
        </form>
    </div>
</body>
</html>
