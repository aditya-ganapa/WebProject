<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:forEach begin="1" end="10" var="x">
	<c:out value="${x}"></c:out>
</c:forEach>

<hr>

<c:forTokens items="welcome-to-jstl-program" delims="-" var="x">
	<c:out value="${x}"></c:out><br>
</c:forTokens>

<%
 ArrayList<String> list = new ArrayList<>();
list.add("Hyderabad");
list.add("Bangalore");
list.add("Chennai");
list.add("Mumbai");

request.setAttribute("language_list", list);
session.setAttribute("language_list", list);
%>

<a href="cities.jsp">City List</a><br>

<h2>Cities are:</h2>
<c:forEach items="${language_list}" var="city">
	<c:out value="${city}"></c:out><br>
</c:forEach>

</body>
</html>