<%-- 
    Document   : listuser
    Created on : Aug 4, 2018, 7:20:39 PM
    Author     : admin
--%>

<%@page import="AdminPost.User"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="AdminPost.BeanHelp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
       
    </head>
    <body>
        <% 
            BeanHelp bh = new BeanHelp();
            List<User> lst = bh.getAllUser();
            request.setAttribute("lstu", lst);
        
        %>
         <script>

            function myFunction() {
                var txt;
                var r = confirm("Bạn có muốn xóa không ?!");
                if (r == true) {
            <c:forEach var="c7" items="${lstu}">
                     window.location.href = 'del.jsp?userid=${c7.userid}'
                     
            </c:forEach>
                    alert("You has been deleted")
                } else {
                    alert("You has been cancel")
                }
                document.getElementById("demo").innerHTML = txt;
            }

        </script>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>User ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>User Name</th>
                    <th>Password</th>
                    <th colspan="2">Action</th>
                </tr>
            </thead>
            <c:forEach var="c7" items="#{lstu}">
                <tbody>
                    <tr>
                        <td>${c7.userid}</td>
                        <td>${c7.name}</td>
                        <td>${c7.email}</td>
                        <td>${c7.username}</td>
                        <td>${c7.password}</td>
                        <td><a href="edit.jsp?userid=${c7.userid}">Edit</a></td>
                        <td> <button  type="button" onclick="myFunction()" class="btn btn-danger">Del</button> </td>

                    </tr>
                </tbody>
                
            </c:forEach>
        </table>
    </body>
</html>
