<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="name" value="aditya" scope="session"></c:set>
<c:set var="location" value="hyderabad" scope="session"></c:set>
<c:set var="state" value="telangana" scope="session"></c:set>
<c:remove var="name" scope="session"/>
<a href="EmpDetail.jsp">Employee Detail</a>
</body>
</html>