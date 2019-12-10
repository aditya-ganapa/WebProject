<%--
<jsp:useBean id="st" class="org.com.bean.Student" scope="session">

<jsp:setProperty name="st" property="roll"/>
<jsp:setProperty name="st" property="name"/>
<jsp:setProperty name="st" property="subject"/>

</jsp:useBean>
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:useBean id="st" class="org.com.bean.Student" scope="session">
	<c:set target="${st}" property="roll" value="${param.roll}"/>
	<c:set target="${st}" property="name" value="${param.name}"/>
	<c:set target="${st}" property="subject" value="${param.subject}"/>
</jsp:useBean>
<c:remove var="roll" scope="session"/>

<br>

<a href="StudentInfo.jsp">Student Detail</a>