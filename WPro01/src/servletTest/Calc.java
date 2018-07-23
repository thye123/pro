/*package servletTest;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/calc")
public class Calc extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//넘어온 데이터 (인자) 처리
		String pv1 = request.getParameter("v1");
		String pv2 = request.getParameter("v2");
		String pv3 = request.getParameter("calc");

		int v1 = Integer.parseInt(pv1);
		int v2 = Integer.parseInt(pv2);
		int v  = 0;
		
		switch (pv3) {
		case "+":
			v = v1 + v2;
			break;
		case "-":
			v = v1 - v2;
			break;
		case "*":
			v = v1 * v2;
			break;
		case "/":
			v = v1 / v2;
			break;
		}
		
		//출력 처리
		response.setContentType("text/html; charset=UTF-8"); 
		PrintWriter out = response.getWriter();
		
		String fmt = "<h1>계산결과</h1>";
		fmt 	  += "<h2>v1= " + v1 + "</h2>";
		fmt 	  += "<h2>v2= " + v2 + "</h2>";
		fmt 	  += "<h2>v1 "+ pv3 +" v2 = " + v + "</h2>";
		String msg = String.format(fmt, v1, v2, v);
		
		out.print(msg);
		out.close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
*/