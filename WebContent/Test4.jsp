<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="UserData.jsp">
	<label>Enter Id</label>
	<input name="id"><br>
	
	<label>Enter Name</label>
	<input name="name"><br>
	
	<label>Select Hobbies</label>
		<input type="checkbox" value="swimming" name="hobby">Swimming
		<input type="checkbox" value="reading" name="hobby">Reading
		<input type="checkbox" value="playing" name="hobby">Playing
		<input type="checkbox" value="singing" name="hobby">Singing
	<br>
	<input type="submit" value="Login">
</form>

</body>
</html>