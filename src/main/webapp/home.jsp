<%@ page import="java.util.List" %>
<%@ page import="demo.model.Book" %>
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
<p><%=session.getAttribute("username")%>
</p>
<hr>
<a href="/user?action=signOut">Sign out</a>
<hr>
<form action="/book" method="post">
    <input type="hidden" name="action" value="add">
    <input name="title" placeholder="Title"><br>
    <input name="author" placeholder="Author"><br>
    <input name="pubTime" placeholder="Publish time"><br>
    <input name="price" placeholder="Price"><br>
    <input name="amount" placeholder="Amount"><br>
    Picture <input type="file" name="picture"><br>
    <input type="submit" value="Add Book">
</form>
<hr>
<table border="1">
    <tr>
        <th>ID</th>
        <th>TITLE</th>
        <th>AUTHOR</th>
        <th>PUBLISH TIME</th>
        <th>PRICE</th>
        <th>AMOUNT</th>
        <th>PICTURE</th>
        <th colspan="2">OPERATION</th>
    </tr>
    <%
        List<Book> books = (List<Book>) session.getAttribute("books"); //
        for (Book book : books) {
    %>
    <tr>
        <td><%= book.getId()%></td>
        <td><%= book.getTitle()%></td>
        <td><%= book.getAuthor()%></td>
        <td><%= book.getPubTime()%></td>
        <td><%= book.getPrice()%></td>
        <td><%= book.getAmount()%></td>
        <td><%= book.getPicture()%></td>
        <td><a href="/book?action=search&id=<%=book.getId()%>">EDIT</a></td>
        <td><a href="/book?action=remove&id=<%=book.getId()%>">REMOVE</a></td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
