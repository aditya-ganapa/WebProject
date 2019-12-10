<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<%
	request.setAttribute("date", new Date());
%>
Long date <f:formatDate value="${date}" dateStyle="long"/><br>
Custom date1 <f:formatDate value="${date}" pattern="dd/MM/yyyy"/><br>
Custom date2 <f:formatDate value="${date}" pattern="EEEE dd/MM/yyyy"/><br>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="n1" value="55665.34567321"></c:set><br>
Salary is <f:formatNumber type="currency" currencySymbol="$" value="${n1 }"></f:formatNumber><br>
Salary is <f:formatNumber type="currency" currencySymbol="Rs." value="${n1 }"></f:formatNumber><br>
Salary is <f:formatNumber type="number" value="${n1 }"></f:formatNumber><br>
Salary is <f:formatNumber type="number" minFractionDigits="2" value="${n1 }"></f:formatNumber><br>
</body>
</html>