/*package servletTest;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/test")
public class test extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public test() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		String name = "아오신발";
		
		out.print("<!doctype html>");
		out.print("<html>");
		out.print("<head>");
		out.print("<meta charset='utf-8'>");
		out.print("<title>연습장</title>");
		out.print("</head>");
		out.print("<body>");
		out.print("<h1>" + name + "</h1>");
		out.print("<h2>" + name + "</h2>");
		out.print("<h3>" + name + "</h3>");
		out.print("<h4>" + name + "</h4>");
		out.print("<h5>" + name + "</h5>");
		out.print("<h6>" + name + "</h6>");
		out.print("</body>");
		out.print("</html>");
		
		out.flush();
		out.close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
*/