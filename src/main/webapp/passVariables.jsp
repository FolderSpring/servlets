<%@ page import="com.simple.pojo.Post" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
    <title>Pass Variables</title>
</head>
<body>
<h1>Pass Variables</h1>
<h3> My name is <%= request.getAttribute("name") %>
</h3>

<table>
    <%
        ArrayList<Post> posts = (ArrayList<Post>) request.getAttribute("posts");
        for (Post post : posts) {
    %>
    <tr>
        <td><%=post.getId()%>
        </td>
        <td><%=post.getDate()%>
        </td>
        <td><%=post.getPostContent()%>
        </td>
    </tr>
    <%}%>
</table>
</body>
</html>
