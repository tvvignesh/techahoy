<%-- 
    Document   : home
    Created on : 1 Feb, 2013, 2:47:55 AM
    Author     : Abhishek
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="db" scope="page" class="db.database"/>
<%
    String usrnm=request.getParameter("usr_nm");
    String sql="select cur_score from login where usrnm='"+usrnm+"'";
    ResultSet r=db.r_query(sql);
    r.next();
    String x=Integer.toString(r.getInt("cur_score"));
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
    <body>
    <center><h2>Hello <%=request.getParameter("usr_nm")%></h2>
    <h4>Your highest score is <%out.println(x); %></h4>
        <br><br><br>
        <table>
            <tr>
                <td>
                    <a href="start.jsp">Start Test</a>
                </td>
            </tr>
            <tr>
                <td>
                    <a href="view.jsp">View Previous Score</a>
                </td>
            </tr> 
            <tr>
                <td>
                    <a href="score.jsp">View High Scores</a>
                </td>
            </tr>
        </table>
        <br><br>
    <input type="submit" value="Logout"></center>
</html>
