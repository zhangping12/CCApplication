<%--
  Created by IntelliJ IDEA.
  User: ZP
  Date: 2018/3/13
  Time: 12:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>home page</title>
</head>
<body>
<%
    String username = (String) session.getAttribute("username");
    if (username == null) {
        response.sendRedirect("index.jsp");
    }
%>
<h1>home page</h1>
<p><%=session.getAttribute("username")%></p>
<hr>
<a href="/user?action=signOut">Sign out</a>
</body>
</html>
