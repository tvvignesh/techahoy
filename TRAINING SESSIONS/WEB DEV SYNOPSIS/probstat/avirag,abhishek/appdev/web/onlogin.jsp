<%-- 
    Document   : onlogin
    Created on : 1 Feb, 2013, 2:40:00 AM
    Author     : Abhishek
--%>

<%@page language="java" import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<jsp:useBean id="db" scope="page" class="db.database"/>
<%
    String usrnm=request.getParameter("usrnm");
    String pwd=request.getParameter("pwd");
    String sql="select * from login where usrnm='"+usrnm+"' and pwd='"+pwd+"'";
    ResultSet resultSet=db.r_query(sql);
    if(resultSet.next())
       {
%>
<jsp:forward page="home.jsp">
<jsp:param name="usr_nm" value="<%=usrnm%>"/>
</jsp:forward>
<%
}else{
%>
<jsp:forward page="index.jsp">
    <jsp:param name="wr" value="0"/>
</jsp:forward>
<%}%>
