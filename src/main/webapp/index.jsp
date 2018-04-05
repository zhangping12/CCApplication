<%--
  Created by IntelliJ IDEA.
  User: ZP
  Date: 2018/1/23
  Time: 21:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>index page</title>
</head>
<body>
<h1>index page</h1>
<form action="/user" method="post">
  <input type="hidden" name="action" value="signIn">
  <input name="email" placeholder="Email" value="tom@tom.com"><br>
  <input type="password" name="password" placeholder="Password" value="123"><br>
  <input type="submit" value="Sign in">
</form>
${requestScope.message}
<hr>
<a href="sign-up.jsp">Sign up</a>
</body>
</html>
