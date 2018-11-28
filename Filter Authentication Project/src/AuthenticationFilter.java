
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

/**
 * Servlet Filter implementation class AuthenticationFilter
 */
@WebFilter(value = "/AuthenticationFilter", servletNames = { "UserServlet" })
public class AuthenticationFilter implements Filter {

	public AuthenticationFilter() {
	}

	public void destroy() {
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		PrintWriter out = response.getWriter();
		int age = Integer.parseInt(request.getParameter("num"));
		String pwd = request.getParameter("pwd");
		if (age > 18)
			chain.doFilter(request, response);
		else {
			out.println("<h3>Access Restricted!!!</h3>");
			request.getRequestDispatcher("index.html").include(request, response);
		}
	}

	public void init(FilterConfig fConfig) throws ServletException {
	}

}
