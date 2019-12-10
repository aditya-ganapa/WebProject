package nov28;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.stream.Stream;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CookieRetrieve extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		Cookie cookie[] = request.getCookies();
		/*for (Cookie cookie2 : cookie) {
			out.print(cookie2.getName()+" "+cookie2.getValue()+"<br>");
		}*/
		Stream.of(cookie).forEach(a->out.print(a.getName()+" "+a.getValue()+"<br>"));
		out.print("<hr>");
		Stream.of(cookie).limit(2).forEach(a->out.print(a.getName()+" "+a.getValue()+"<br>"));
	}
}