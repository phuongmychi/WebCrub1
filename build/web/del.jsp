<%-- 
    Document   : del
    Created on : Aug 5, 2018, 9:36:31 AM
    Author     : admin
--%>

<%@page import="AdminPost.User"%>
<%@page import="AdminPost.BeanHelp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
   String id = request.getParameter("userid");
    BeanHelp bh = new BeanHelp();
    bh.DelUser(Integer.parseInt(id));
    RequestDispatcher rs = request.getRequestDispatcher("listuser.jsp");
    rs.forward(request, response);
%>
