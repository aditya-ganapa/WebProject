package org.com.result;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class NonVegItem
 */
public class NonVegItem extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		out.print("<h1>Welcome to Non Veg Item</h1>");
		out.print("Your id is:"+id);
		out.print("<br>Your name is:"+name);
		Object location = request.getAttribute("location");
		out.print("<br>Location is:"+location);
	}
}