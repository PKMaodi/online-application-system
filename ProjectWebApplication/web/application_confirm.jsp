<%-- 
    Document   : application_confirm
    Created on : 18 May 2023, 6:21:00 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirm Application Page</title>
        <link rel="stylesheet" href="css/maTStyle.css">
        <style>
            a{
                color: white;
                font-weight: bold;
                font-size: 14px;
            }
            .inputfield .btn:hover{
              background: #03e9f4;
            }
            .inputfield .btn{
              width: 100%;
              padding: 8px 10px;
              font-size: 15px; 
              border: 0px;
              background:  #03e9f4;
              color: #fff;
              cursor: pointer;
              border-radius: 3px;
              outline: none;
            }
        </style>
    </head>
    <body>
        <%
        String idnum = (String)session.getAttribute("idnum");
        String firstname = (String)session.getAttribute("firstname");
        String lastname = (String)session.getAttribute("lastname");
        String gender = (String)session.getAttribute("gender");
        String email = (String)session.getAttribute("email");
        String phone = (String)session.getAttribute("phone");
        String address = (String)session.getAttribute("address");
        String pcode = (String)session.getAttribute("pcode");
        

        String schoolname = (String)session.getAttribute("schoolname");
        String subj1 = (String)session.getAttribute("subj1");
        String subj2 = (String)session.getAttribute("subj2");
        String subj3 = (String)session.getAttribute("subj3");
        String subj4 = (String)session.getAttribute("subj4");
        String subj5 = (String)session.getAttribute("subj5");
        String subj6 = (String)session.getAttribute("subj6");
        String subj7 = (String)session.getAttribute("subj7");
        
        Integer subj1M = (Integer)session.getAttribute("subj1M");
        Integer subj2M = (Integer)session.getAttribute("subj2M");
        Integer subj3M = (Integer)session.getAttribute("subj3M");
        Integer subj4M = (Integer)session.getAttribute("subj4M");
        Integer subj5M = (Integer)session.getAttribute("subj5M");
        Integer subj6M = (Integer)session.getAttribute("subj6M");
        Integer subj7M = (Integer)session.getAttribute("subj7M");
        Integer aps = (Integer)session.getAttribute("aps");
        
        String nokfirstname = (String)session.getAttribute("nokfirstname");
        String noklasttname = (String)session.getAttribute("noklastname");
        String nokemail = (String)session.getAttribute("nokemail");
        String nokphone = (String)session.getAttribute("nokphone");
        String nokaddress = (String)session.getAttribute("nokaddress");
        String nokpcode = (String)session.getAttribute("nokpcode");
        
        String qualif = (String)session.getAttribute("qualif");
        String period = (String)session.getAttribute("period");
        
        %>
        
        <div class="wrapper">
        
        <form action="SubmitRegistrationServlet.do" method="POST">
            <div class="form">
                <div class="title">
                    Personal Details
                </div>
                    <table>
                        <tr>
                            <td>
                                <a>ID Number: </a>
                            </td>
                            <td><a><%=idnum%></a></td>
                        </tr>
                        <tr>
                            <td>
                                <a>First Name: </a>
                            </td>
                            <td><a><%=firstname%></a></td>
                        </tr>
                        <tr>
                            <td>
                                <a>Last Name: </a>
                            </td>
                            <td><a><%=lastname%></a></td>
                        </tr>
                        <tr>
                            <td>
                                <a>Gender: </a>
                            </td>
                            <td><a><%=gender%></a></td>
                        </tr>
                        <tr>
                            <td>
                                <a>Email: </a>
                            </td>
                            <td><a><%=email%></a></td>
                        </tr>
                        <tr>
                            <td>
                                <a>Phone Number: </a>
                            </td>
                            <td><a><%=phone%></a></td>
                        </tr>
                        <tr>
                            <td>
                                <a>Address: </a>
                            </td>
                            <td><a><%=address%></a></td>
                        </tr>
                        <tr>
                            <td>
                                <a>Postal Code: </a>
                            </td>
                            <td><a><%=pcode%></a></td>
                        </tr>
                    </table>
                        <br>
                        <br>
            </div>
                        
            <div class="form">
                        <div class="title">
                        Next of Kin
                        </div>
                       
                            <table>
                                <tr>
                                    <td>
                                        <a>First Name: </a>
                                    </td>
                                    <td><a><%=nokfirstname %></a></td>
                                </tr>
                                <tr>
                                    <td>
                                        <a>Last Name: </a>
                                    </td>
                                    <td><a><%=noklasttname %></a></td>
                                </tr>
                                <tr>
                                    <td>
                                        <a>Email: </a>
                                    </td>
                                    <td><a><%=nokemail%></a></td>
                                </tr>
                                <tr>
                                    <td>
                                        <a>Phone Number: </a>
                                    </td>
                                    <td><a><%=nokphone%></a></td>
                                </tr>
                                <tr>
                                    <td>
                                        <a>Address: </a>
                                    </td>
                                    <td><a><%=nokaddress%></a></td>
                                </tr>
                                <tr>
                                    <td>
                                        <a>Postal Code: </a>
                                    </td>
                                    <td><a><%=nokpcode%></a></td>
                                </tr>
                            </table>
                                <br>
                                <br>
            </div>
                                
            <div class="form">
                        
                        <div class="title">
                            School leaving details
                        </div>
                            <table>
                                <tr>
                                    <td>
                                        <a>High School: </a>
                                    </td>
                                    <td><a><%=schoolname%></a></td>
                                </tr>
                                <tr>
                                    <td>
                                        <a>Subject 1: </a>
                                    </td>
                                    <td><a><%=subj1%></a></td>
                                    <td><a><%=subj1M%></a></td>
                                </tr>
                                <tr>
                                    <td>
                                        <a>Subject 2: </a>
                                    </td>
                                    <td><a><%=subj2%></a></td>
                                    <td><a><%=subj2M%></a></td>
                                </tr>
                                <tr>
                                    <td>
                                        <a>Subject 3: </a>
                                    </td>
                                    <td><a><%=subj3%></a></td>
                                    <td><a><%=subj3M%></a></td>
                                </tr>
                                <tr>
                                    <td>
                                        <a>Subject 4: </a>
                                    </td>
                                    <td><a><%=subj4%></a></td>
                                    <td><a><%=subj4M%></a></td>
                                </tr>
                                <tr>
                                    <td>
                                        <a>Subject 5: </a>
                                    </td>
                                    <td><a><%=subj5%></a></td>
                                    <td><a><%=subj5M%></a></td>
                                </tr>
                                <tr>
                                    <td>
                                        <a>Subject 6: </a>
                                    </td>
                                    <td><a><%=subj6%></a></td>
                                    <td><a><%=subj6M%></a></td>
                                </tr>
                                <tr>
                                    <td>
                                        <a>Subject 7: </a>
                                    </td>
                                    <td><a><%=subj7%></a></td>
                                    <td><a><%=subj7M%></a></td>
                                </tr>
                                <tr>
                                    <td>
                                        <a>APS: </a>
                                    </td>
                                    <td><a><%=aps%></a></td>
                                </tr>
                            </table>
                                <br>
                                <br>
            </div>
                    
            <div class="form">      
                <div class="title">
                Qualification details
                </div>
                <table>
                    <tr>
                        <td>
                            <a>Qualification: </a>
                        </td>
                        <td><a><%=qualif%></a></td>
                    </tr>
                    <tr>
                        <td>
                            <a>Study period: </a>
                        </td>
                        <td><a><%=period%></a></td>
                    </tr>
                </table>
                    <br>
                    <br>
            </div>
            <div class="inputfield">
                <input type="submit" value="Submit" class="btn">
            </div>
        </form>
        </div>
        
    </div>
    </body>
</html>
