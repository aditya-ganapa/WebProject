<%@page import="java.time.LocalTime"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
	.col{
		color:blue;
		background-color: yellow;
		text-align: center;
	}
</style>
</head>
<body>

<div class="col">
	Date is <%=LocalDate.now()%>
</div>

<div class="col">
	Time is <%=LocalTime.now()%>
</div>

</body>
</html>