<%@ page import="java.util.Arrays" %><%--
  Created by IntelliJ IDEA.
  User: ZP
  Date: 2018/1/26
  Time: 23:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String email = request.getParameter("email");
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String[] cities = request.getParameterValues("cities");
    String[] hobbies = request.getParameterValues("hobbies");
    out.print(email + ", " + username + ", " + password);
    out.print(Arrays.toString(cities) + ", " + Arrays.toString(hobbies));
%>