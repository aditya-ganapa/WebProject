date is
<%=new java.util.Date()%>

<%! int x=100;
	int y=200;
	int c=1;
%>
<br>
<% 
	int p=1;
	out.print("no 1 is "+x);
	out.print("<br>no 2 is "+y);
	out.print("<br>c "+c++);
	out.print("<br>p "+p++);
%>
<hr>

<div style="color:tomato;background-color:blue">

First No is <%=x %><br>
Second No is <%=y %>

</div>