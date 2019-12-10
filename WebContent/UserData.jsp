<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@page errorPage="error1.jsp" %>

<%
	int id=Integer.parseInt(request.getParameter("id"));
	String name=request.getParameter("name");
	String hb[]=request.getParameterValues("hobby");
	out.print("Id is "+id);
%>
<br>
Id is <%=id %><br>
Name is <%=name %><br>
Hobbies are <%
	out.print("<ul>");
	for(String h:hb){
		out.print("<li>"+h);
	}
	out.print("</ul>");
	%>
</body>
</html>