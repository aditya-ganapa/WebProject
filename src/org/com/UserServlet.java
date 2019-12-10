package org.com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UserServlet
 */
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String id=request.getParameter("id");
		String name=request.getParameter("name");
		out.print("<h1>User Information</h1>");
		out.print("<br>User id:</h1>"+id);
		out.print("<br>User name:</h1>"+name);
		String qstring=request.getQueryString();
		out.print("<br>Query string is:"+qstring);
	}


}