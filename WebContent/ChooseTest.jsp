<%
	request.setAttribute("number", 5);
%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:choose>
	<c:when test="${number==3}">
		Number is 3
	</c:when>
		<c:when test="${number==5}">
		Number is 5
	</c:when>
	<c:otherwise>
		Number is not 3 or 5
	</c:otherwise>
</c:choose>