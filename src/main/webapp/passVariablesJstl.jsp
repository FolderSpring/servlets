<%--<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>--%>
<%--<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>--%>
<%--<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %>--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<html>
<head>
    <title>
        Tag Example</title>
</head>

<body>

ServerInfo: <%= application.getServerInfo() %></br>

Server version: <%= application.getMajorVersion() %>.<%= application.getMinorVersion() %></br>

Jsp specification version: <%= JspFactory.getDefaultFactory().getEngineInfo().getSpecificationVersion() %></br></br>




<%--<c:forTokens items="Zara,nuha,roshy" delims="," var="name">--%>
<%--<c:out value="${name}"/><p>--%>
<%--</c:forTokens>--%>

<c:set var="showPopup" value="true"/>
<span>SHOW POPUP val: ${showPopup}</span>

</br>
<c:out value="This is c:out value..."/></br></br>

<c:set var="curNumber" value="5"/>
<c:choose>
    <c:when test="${curNumber == '5'}">
        Value is 5
    </c:when>
    <c:otherwise>
        Value is not 5
    </c:otherwise>
</c:choose>


<%--<c:if test="${!empty post}">--%>
    <%--<h3>${post.title}</h3>--%>
<%--</c:if>--%>

<%--<c:if test="${not empty post}">--%>
<%--<h3>${post.title}</h3>--%>
<%--</c:if>--%>

<%--<c:choose>--%>
    <%--<c:when test="${condition2}">--%>

    <%--</c:when>--%>
    <%--<c:when test="${condition2}">--%>
        <%--...--%>
    <%--</c:when>--%>
    <%--<c:otherwise>--%>
        <%--...--%>
    <%--</c:otherwise>--%>
<%--</c:choose>--%>

<%--<table>--%>
    <%--<c:forEach items="${posts}" var="post">--%>
        <%--<tr>--%>
            <%--<td>${post}</td>--%>
        <%--</tr>--%>
    <%--</c:forEach>--%>
<%--</table>--%>


<%
    String[] cities = new String[]{"Bangalore", "Chennai", "New Delhi", "Mumbai"};
    pageContext.setAttribute("cities", cities);
%>

<table>
    <tr><td>JSTL Example</td>
    <tr><td>
        <c:forEach var="cities" items="${cities}">
            <c:out value="${cities}"/>
        </c:forEach>
    </td>
    </tr>
</table>

</body>
</html>