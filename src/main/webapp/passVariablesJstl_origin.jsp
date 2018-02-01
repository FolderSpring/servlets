<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>--%>
<%@ page language="java" contentType="text/html; charset=US-ASCII"
         pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
    <%--<title>Pass Variables</title>--%>
    <title>Tag Example</title>
        <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
</head>
<body>
<%--<h1>Pass Variables</h1>--%>
<%--<h3> My name is <c:out value="${name}"/></h3>--%>
<%--<h3> My name is ${name}</h3>--%>

<%--<table>--%>
    <%--<c:forEach items="${posts}" var="post">--%>
        <%--<tr>--%>
            <%--<td>${post.getId()}</td>--%>
        <%--</tr>--%>
    <%--</c:forEach>--%>
<%--</table>--%>

    <c:forEach var = "i" begin = "1" end = "5">
        Item <c:out value = "${i}"/><p>
    </c:forEach>

</body>
</html>