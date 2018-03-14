<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>sign up page</title>
</head>
<body>
<h1>Sign up page</h1>
<form action="/user" method="post">
    <input type="hidden" name="action" value="signUp">
    <input name="email" placeholder="Email"><br>
    <input name="username" placeholder="Username"><br>
    <input type="password" name="password" placeholder="Password"><br>
    <input type="submit" value="Sign up">
</form>
<%
    String message = (String) request.getAttribute("message");
    if (message != null) {
        out.print(message);
    }
%>
</body>
</html>
