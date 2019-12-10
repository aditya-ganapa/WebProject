package nov28;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

/**
 * Servlet Filter implementation class NameFilter
 */
@WebFilter("/userinfo.jsp")
public class NameFilter implements Filter {

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		System.out.println("Before request filter");
		String name = request.getParameter("name");
		String ip=request.getRemoteAddr();
		System.out.println(ip);
		if(name.equals("Aditya"))
			response.getWriter().print("<font color='red' size='30'>You are blocked.</font>");
		else if(ip.equals("0:0:0:0:0:0:0:1"))
			response.getWriter().print("<font color='red' size='30'>This ip is blocked.</font>");
		else
			chain.doFilter(request, response);
		System.out.println("After filter");
	}

	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
