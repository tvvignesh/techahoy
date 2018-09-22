<%-- 
    Document   : register
    Created on : 1 Feb, 2013, 12:16:59 AM
    Author     : Abhishek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script type="text/javascript">
   function confirm()
   {
       if(((document.getElementById("pwd").value).compareTo(document.getElementById("cpwd").value))!=0)
         {
              document.getElementById("cpwd").value="";
         document.getElementById("put").innerText = "Passwords do not match";
         }
   }
       </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
        <link rel="stylesheet" href="iq1.css" type="text/css" />
        <link rel="stylesheet" href="iqtable.css" type="text/css" />
    </head>
    <body>
        <br>
        <h1>Register</h1>
        <br><br>
        
        <form action="onreg.jsp" method="post">
        <div id="form">
        <table>
            <tr>
                <td>First Name</td>
                <td><input type="text" name="fname"></td>
            </tr>
            <tr>
                <td>Last Name</td>
                <td><input type="text" name="lname"></td>
            </tr>
            <tr>
                <td>Email</td>
                <td><input type="email" name="email"></td>
            </tr>
            <tr>
                <td>Username</td>
                <td><input type="text" name="uname"></td>
            </tr>
            <tr>
                <td>Password</td>
                <td><input type="password" name="pwd" id="pwd"></td>
            </tr>
            <tr>
                <td>Confirm Password</td>
                <td><input type="password" onchange="confirm()" name="cpwd" id="cpwd"></td>
                <td><div id="put"> </div> </td>	
            </tr>
            <tr>
                <td><input type="submit" value="Register" id="input"></td>
            </tr>
        </table>
        </div>
        </form>
    </body>
</html>
