<%@page contentType="text/html; charset=ISO-8859-1" %>
<%@page import="java.time.LocalTime,java.time.LocalDate"%>
<div style="color:white;background-color:red">
date is <%= LocalDate.now() %> <br>
<%@page import="java.util.Date"%>
date and time is <%=new Date() %><br>
time is <%=LocalTime.now() %><br>
</div>