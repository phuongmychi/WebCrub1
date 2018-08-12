<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : edit
    Created on : Aug 4, 2018, 8:39:01 PM
    Author     : admin
--%>

<%@page import="AdminPost.User"%>
<%@page import="AdminPost.BeanHelp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <% 
            BeanHelp bh = new BeanHelp();
            User us = bh.getUserbyId(Integer.parseInt(request.getParameter("userid")));
            request.setAttribute("lstu", us);
        %>
        <form action="update.jsp" method="post">
            <div class="form-group">
                <label for="userid">User ID</label>
                <input type="text" name="userid" value="${requestScope.lstu.userid}" class="form-control" readonly="readonly" />
            </div>
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" name="name" value="${requestScope.lstu.name}" class="form-control" />
            </div>
            
            <div class="form-group">
                <label for="email">Email</label>
                <input type="text" name="email" value="${requestScope.lstu.email}" class="form-control" />
            </div>
            <div class="form-group">
                <label for="user">User Name</label>
                <input type="text" name="username" value="${requestScope.lstu.username}" class="form-control" />
            </div>
            <div class="form-group">
                <label for="pass">Password</label>
                <input type="password" name="password" value="${requestScope.lstu.password}" class="form-control" />
            </div>
            <div class="form-group">
                <input type="submit" value="Submit" name="btn" class="btn btn-success"/>
            </div>
        </form>
    </body>
</html>
