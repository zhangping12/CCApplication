<%--
  Created by IntelliJ IDEA.
  User: ZP
  Date: 2018/1/26
  Time: 22:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    out.print(email + ", " + password);

    String a = request.getParameterValues();
%>
</body>
</html>
