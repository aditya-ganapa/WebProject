package nov28;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SessionDemo1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter writer = response.getWriter();
		HttpSession session = request.getSession();
		
		response.setContentType("text/html");
		
		session.setMaxInactiveInterval(5);
		
		writer.print("Session id "+session.getId());
		writer.print("<br>Max inactive interval "+session.getMaxInactiveInterval());
		writer.print("<br>Session created at "+new Date(session.getCreationTime()));
		
		
		session.setAttribute("prd1", "head first servlet and jsp");
		session.setAttribute("prd2", "head first java");
		session.setAttribute("prd3", "sql begineer");
		
		writer.print("<br><a href='ProductDetail'>ProductDetail</a>");
	}
}