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
        <title>Do Not Qualify Page</title>
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
</style>
    </head>
    
    <body>
        <table id="customers">
      <tr>
        <th>ID Number</th>
        <th>Name</th>
        <th>Surname</th>
        <th>Status</th>
        <th>Submitted</th>
        <th>Qualification</th>
      </tr>
      <%
          String id;
          String name;
          String surname;
          Date submitted;
          String status;
          String qualification;
          List<Applicant> unqulifyingA = (List<Applicant>)session.getAttribute("unqulifyingA");
          
          for(int i = 0;i < unqulifyingA.size();i++){
              id = unqulifyingA.get(i).getId();
              name = unqulifyingA.get(i).getFirstName();
              surname = unqulifyingA.get(i).getSurname();
              submitted = unqulifyingA.get(i).getCreationDate();
              status = unqulifyingA.get(i).getApplicationStatus();
              qualification = unqulifyingA.get(i).getQualification();
      %>
      <tr>
        <td><%=id%></td>
        <td><%=name%></td>
        <td><%=surname%></td>
        <td><%=status%></td>
        <td><%=submitted%></td>
        <td><%=qualification%></td>
      </tr>
      <%
          }
      %>
</table>
    </body>
</html>
