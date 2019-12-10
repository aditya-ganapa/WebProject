package org.com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletApp1
 */
public class ServletApp1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	int count;
	
	@Override
	public void init() throws ServletException {
		System.out.println("Init called");
		count=1;
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int c=1;
		System.out.println("doGet service called   ");
		PrintWriter out=response.getWriter();
		out.print("<h1> My First Servlet </h1>");
		out.print("<h1> User Hits "+count+++"</h1>");
		out.print("<h1> User Hits "+c+++"</h1>");
	}

	@Override
	public void destroy() {
		System.out.println("Destroy called");
	}

}