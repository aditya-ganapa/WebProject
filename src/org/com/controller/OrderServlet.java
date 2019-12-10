package org.com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class OrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String type = request.getParameter("type");
		RequestDispatcher dispatcher = null;
		if(type.equals("veg")) {
			request.setAttribute("location", "bangalore manyata");
			

			
			dispatcher = request.getRequestDispatcher("VegItem");
			dispatcher.include(request, response);
			
			dispatcher = request.getRequestDispatcher("Restaurant_Header.html");
			dispatcher.include(request, response);
		}
		else if (type.equals("nonveg")) {
			request.setAttribute("location", "bangalore hebbal");
			dispatcher = request.getRequestDispatcher("NonVegItem");
			dispatcher.forward(request, response);
			
			dispatcher = request.getRequestDispatcher("Restaurant_Header.html");
			dispatcher.include(request, response);
		}
		else if (type.equals("chinese")) {
			request.setAttribute("location", "bangalore nagavara");
			dispatcher = request.getRequestDispatcher("ChineseItem");
			dispatcher.forward(request, response);
			
			dispatcher = request.getRequestDispatcher("Restaurant_Header.html");
			dispatcher.include(request, response);
		}
	}
}