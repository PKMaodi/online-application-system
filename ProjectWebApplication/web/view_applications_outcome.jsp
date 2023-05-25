<%-- 
    Document   : view_unqualifying_outcome
    Created on : 18 May 2023, 11:29:11 AM
    Author     : dell
--%>

<%@page import="za.ac.tut.entities.Applicant"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Applications Page</title>
        <style>
            #customers {
              font-family: Arial, Helvetica, sans-serif;
              border-collapse: collapse;
              width: 100%;
            }

            #customers td, #customers th {
              border: 1px solid #ddd;
              padding: 8px;
            }

            #customers tr:nth-child(even){background-color: #f2f2f2;}

            #customers tr:hover {
              background: #03e9f4;
              color: #fff;
            }

            #customers th {
              padding-top: 12px;
              padding-bottom: 12px;
              text-align: left;
              background-color: #03e9f4;
              color: white;
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
            button:hover{
              background: #03e9f4;
              color: #fff;
              border-radius: 5px;
              box-shadow: 0 0 5px #03e9f4,
                          0 0 25px #03e9f4,
                          0 0 50px #03e9f4,
                          0 0 100px #03e9f4;
            }
            button span{
              position: absolute;
              display: block;
            }
            button span:nth-child(1){
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
            button span:nth-child(2){
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
            button span:nth-child(3){
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
            button span:nth-child(4){
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
</style>
    </head>
    
    <body>
        <form action="UpdateStatusServlet.do" method="POST">
                <table id="customers">
      <tr>
        <th>ID Number</th>
        <th>Name</th>
        <th>Surname</th>
        <th>APS</th>
        <th>Status</th>
        <th>Submitted</th>
        <th>Qualification</th>
        <th>Update status</th>
      </tr>
      <%
          String id;
          String name;
          String surname;
          Date submitted;
          String status;
          String qualification;
          Integer aps;
          List<Applicant> unqulifyingA = (List<Applicant>)session.getAttribute("applications");
          
          for(int i = 0;i < unqulifyingA.size();i++){
              id = unqulifyingA.get(i).getId();
              name = unqulifyingA.get(i).getFirstName();
              surname = unqulifyingA.get(i).getSurname();
              submitted = unqulifyingA.get(i).getCreationDate();
              status = unqulifyingA.get(i).getApplicationStatus();
              qualification = unqulifyingA.get(i).getQualification();
              aps = unqulifyingA.get(i).getAps();
      %>
      <tr>
        <td><%=id%></td>
        <td><%=name%></td>
        <td><%=surname%></td>
        <td><%=aps%></td>
        <td><%=status%></td>
        <td><%=submitted%></td>
        <td><%=qualification%></td>
        <td name="status"><select>
                <option value="approve">
                    Approve
                </option>
                <option value="decline">
                    Decline
                </option>
        </select></td>
        
      </tr>
      <%
          }
      %>
</table>
<button type="submit">SAVE</button>
        </form>
    </body>
</html>
