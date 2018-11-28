
import javax.servlet.ServletContext;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * Application Lifecycle Listener implementation class CountUserListener
 *
 */
@WebListener
public class CountUserListener implements HttpSessionListener {

	ServletContext ctx = null;
	static int total = 0, current = 0;

	public void sessionCreated(HttpSessionEvent e) {
		total++;
		current++;

		ctx = e.getSession().getServletContext();
		ctx.setAttribute("totalusers", total);
		ctx.setAttribute("currentusers", current);
		// System.out.println("Session Created");

	}

	public void sessionDestroyed(HttpSessionEvent e) {
		current--;
		ctx.setAttribute("currentusers", current);
		System.out.println("Session Destroyed");
	}

}
