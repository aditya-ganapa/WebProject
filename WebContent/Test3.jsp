<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%!
	java.util.Date date = new java.util.Date();
	int hour = date.getHours();
	String time = date.getHours() + ":" + date.getMinutes() + ":" +date.getSeconds();
%>

<%
	if(hour < 12){
%>		
	<h1>Good Morning</h1>
	Time is
	<%=time %>
<% 
	}
	else if (hour >12){
%>
	<h1>Good Afternoon</h1>
	Time is
	<%=time %>
<%
	}
%>

</body>
</html>