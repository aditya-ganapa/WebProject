<form action="personInfo.jsp">
	Enter Id <input name="id"><br>
	Enter Name <input name="name"><br>
	Select Location<br>
	<%
		session.setAttribute("salary", 20000);
		session.setAttribute("country", "india");
	%>
	<input type="checkbox" name="location" value="hyderabad">Hyderabad<br>
	<input type="checkbox" name="location" value="bangalore">Bangalore<br>
	<input type="checkbox" name="location" value="chennai">Chennai<br>
	<input type="checkbox" name="location" value="mumbai">Mumbai<br>
	<input type="checkbox" name="location" value="kolkata">Kolkata<br>
	<input type="submit" value="reset">
</form>