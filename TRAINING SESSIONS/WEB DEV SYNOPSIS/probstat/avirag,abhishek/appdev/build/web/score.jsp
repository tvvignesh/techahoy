<%-- 
    Document   : score
    Created on : 1 Feb, 2013, 4:04:21 AM
    Author     : Abhishek
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="db" scope="page" class="db.database"/>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>High Score</title>
    </head>
    <body>
        <h2>High Scores</h2><br>
        The high scores of all the users are as follows <br>
        <table>
        <%
            String sql="select * from login";
            ResultSet r=db.r_query(sql);
            while(r.next()){
        %>
        <tr><td><%out.println(r.getString("usrnm"));%></td>
            <td><%out.println(r.getInt("cur_score"));%></td>
        </tr>
        <%
               }
        %>
        </table>
    </body>
</html>
