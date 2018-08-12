<%-- 
    Document   : adduserprocess
    Created on : Aug 4, 2018, 12:10:03 PM
    Author     : admin
--%>

<%@page import="AdminPost.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="AdminPost.BeanHelp" %>
<%@page import="javax.servlet.RequestDispatcher" %>
<jsp:useBean id="u" class="AdminPost.BeanHelp"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>    

<% 
    User us = new User();
    us.setName(request.getParameter("name"));
    us.setEmail(request.getParameter("email"));
    us.setUsername(request.getParameter("username"));
    us.setPassword(request.getParameter("password"));
    BeanHelp bh = new BeanHelp();
    int i = bh.AddUser(us);
    if(i>0){
        out.print("success");
        RequestDispatcher rs = request.getRequestDispatcher("listuser.jsp");
        rs.forward(request, response);
        
    }else{
        out.print("error");
    }
%>
    


