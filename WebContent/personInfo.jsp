Id is <%=request.getParameter("id")%><br>
Id is ${param.id}<br>

Name is ${param.name}<br>

Locations are<br>
<%
	String city[] = request.getParameterValues("location");
	for(String c : city)
		out.print(c+" ");
%>
<br>
${paramValues.location[0]}<br>
${paramValues.location[1]}<br>
${paramValues.location[2]}<br>


Salary is ${salary}<br>
Country is ${country}<br>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:if test="${salary>=2000}">
	<font color='blue' size=20px>Salary is good salary<br>
	It is ${salary}</font><br>
</c:if>

<c:if test="${salary<2000}">
	<font color='red' size=20px>Salary is bad salary<br>
	It is ${salary}</font><br>
</c:if>