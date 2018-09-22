<%-- 
    Document   : index
    Created on : 31 Jan, 2013, 11:34:00 PM
    Author     : Abhishek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <center><h1>IQ Testing</h1>
            <h3>Login Page</h3>
            <br><br><br>
            <div id="login">
                <form action="onlogin.jsp" method="post">
            <table>
                <tr>
                    <td>User Name</td>
                    <td><input type="text" name="usrnm"></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="pwd"></td>
                </tr>
                <tr>
                    <td><input type="submit" value="LOGIN"></td>
                    <td><center><a href="register.jsp">Register</a></center></td>
                </tr>
            </table>
                </form>
            </div>
        </center>
    </body>
</html>