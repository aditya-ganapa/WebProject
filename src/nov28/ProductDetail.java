package nov28;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ProductDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter writer = response.getWriter();
		HttpSession session = request.getSession();
		
		response.setContentType("text/html");
		if(session.isNew())
			writer.print("<h1>Your session has expired</h1>");
		else {
		Object product1 = session.getAttribute("prd1");
		String product2 = (String)session.getAttribute("prd2");
		String product3 = session.getAttribute("prd3").toString();
		
		writer.print("<br>Products you have purchased are");
		writer.print("<ul>");
		writer.print("<li>"+product1);
		writer.print("<li>"+product2);
		writer.print("<li>"+product3);
		writer.print("</ul>");
		}
		
	}
}