<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String salary = request.getParameter("salary");
%>

Welcome User <%=name %><br>
Your Id is <%=id %><br>
Your salary is <%=salary %><br> 

<a href="userdetail.jsp?id=<%=id%>&name=<%=name%>&salary=<%=salary%>">userdetail</a>

</body>
</html>