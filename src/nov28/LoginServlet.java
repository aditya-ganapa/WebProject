package nov28;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		RequestDispatcher dispatcher = null;
		if (username.equals("jack") && password.equals("rose")) {
			dispatcher = request.getRequestDispatcher("Home");
			dispatcher.forward(request, response);
		}
		else {
			dispatcher = request.getRequestDispatcher("Login.html");
			dispatcher.forward(request, response);
		}
	}
}