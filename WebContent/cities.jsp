<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h2>Cities are:</h2>
<c:forEach items="${language_list}" var="city">
	<c:out value="${city}"></c:out><br>
</c:forEach>