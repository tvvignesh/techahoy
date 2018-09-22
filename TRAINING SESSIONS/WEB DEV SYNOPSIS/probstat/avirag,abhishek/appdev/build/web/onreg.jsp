<%--<%@page import="com.sun.imageio.stream.StreamCloser"%>
<%@page language="java"
        import="java.util.*,java.lang.String,java.sql.*,java.io.*"
    contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="db" scope="page" class="db.database"/>
<%
    db.connect();
    String fname=request.getParameter("fname");
    String lname=request.getParameter("lname");
    String eml=request.getParameter("email");
    String usrnm=request.getParameter("uname");
    String pwd=request.getParameter("pwd");
    String sql="insert into usr_det values('"+fname+"','"+lname+"','"+eml+"','"+usrnm+"','"+pwd+"');";
    db.wr_query(sql);
    %>
    
<%-- 
    Document   : onreg
    Created on : 30 Dec, 2012, 11:24:18 AM
    Author     : Anindya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="db" scope="page" class="db.database">
            <%
                //db.connect();
                String fname=request.getParameter("fname");
                String lname=request.getParameter("lname");
                String eml=request.getParameter("email");
                String usrnm=request.getParameter("uname");
                String pwd=request.getParameter("pwd");
                String sql="insert into usr_det values('"+fname+"','"+lname+"','"+eml+"','"+usrnm+"','"+pwd+"')";
                int x=db.wr_query(sql);
                if(x==1){
                    sql="insert into login values('"+usrnm+"','"+pwd+"',0)";
                    db.wr_query(sql);
            %>
            <jsp:forward page="index.jsp"/>
            <%
                }
                else{
                 System.out.println("NO!!");   
                }
                %>
        </jsp:useBean>
    </body>
</html>
