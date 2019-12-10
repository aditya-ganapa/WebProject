<h1>Student Detail</h1>
<%--
<jsp:useBean id="st" class="org.com.bean.Student" scope="session"/>

Roll is <jsp:getProperty name="st" property="roll"/>
Name is <jsp:getProperty name="st" property="name"/>
Subject is <jsp:getProperty name="st" property="subject"/>
--%>
 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:useBean id="st" class="org.com.bean.Student" scope="session"/>

Roll is <c:out value="${st.roll}"></c:out><br>
Name is <c:out value="${st.name}"></c:out><br>
Subject is <c:out value="${st.subject}"></c:out>