package DreamLeagueDBConn;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lc")
public class LoginCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id 	= request.getParameter("userid");		
		String pass = request.getParameter("userpass");
		DreamLeagueDAO dao = new DreamLeagueDAO();
		boolean TF = dao.LoginCheck(id, pass);
		/*response.sendRedirect("./DreamLeague/Login.jsp");*/
		request.setAttribute("TF", TF);
		request.getRequestDispatcher("./DreamLeague/Login.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
