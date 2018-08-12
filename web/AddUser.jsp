<%-- 
    Document   : AddUser
    Created on : Aug 4, 2018, 12:04:48 PM
    Author     : www.24hgame.vn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <style>
            #name_error{
                color: red;
                
            }
        </style>
        <script>
            function myForm() {
                var name = document.getElementById("name").value;
                var email = document.getElementById("email").value;
                var username = document.getElementById("username").value;
                var password = document.getElementById("password").value;
                if (name == '') {
                    document.getElementById("name_error").innerHTML = "Please enter name";
                } else if (email == '') {
                    document.getElementById("email_error").innerHTML = "Please enter email";

                } else if (username == '') {
                    document.getElementById("username_error").innerHTML = "Please enter username";
                } else if (password == '') {
                    document.getElementById("pass_error").innerHTML = "Please enter passw";

                } else {
                    return true;
                }


                return false;
            }
        </script>
    </head>
    <body>
        <form class="form" onsubmit="return myForm()" action="adduserprocess.jsp" method="post">
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" name="name" id="name" class="form-control" placeholder="Enter your name"/>
                <span id="name_error" style="color: red"></span>
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="text" name="email" id="email" class="form-control" placeholder="Enter your email"/>
                <span id="email_error"  style="color: red"></span>
            </div>
            <div class="form-group">
                <label for="name">User Name</label>
                <input type="text" name="username" id="username" class="form-control" placeholder="Enter your username"/>
                <span id="username_error"  style="color: red"></span>

            </div>
            <div class="form-group">
                <label for="name">Pass</label>
                <input type="password" name="password" id="password" class="form-control" placeholder="Enter your password">
                <span id="password_error"  style="color: red"></span>

            </div>
            <div class="form-group">
                <button type="submit" name="button" class="btn btn-success">Submit</button>
            </div>

        </form>
    </body>
</html>
