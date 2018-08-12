<%-- 
    Document   : update
    Created on : Aug 5, 2018, 8:53:24 AM
    Author     : admin
--%>

<%@page import="AdminPost.User"%>
<%@page import="AdminPost.BeanHelp"%>
<%@page import="javax.servlet.RequestDispatcher" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    BeanHelp bh = new BeanHelp();
    User us = new User();
    us.setUserid(Integer.parseInt(request.getParameter("userid")));
    us.setName(request.getParameter("name"));
    us.setEmail(request.getParameter("email"));
    us.setUsername(request.getParameter("username"));
    us.setPassword(request.getParameter("password"));
    boolean b = bh.updateUser(us);
    if(b==true){
        out.print("Success");
        RequestDispatcher rs = request.getRequestDispatcher("/listuser.jsp");
        rs.forward(request, response);
    }else{
        out.print("Failed");
    }

%>

