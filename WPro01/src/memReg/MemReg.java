/*package memReg;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/memreg")
public class MemReg extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//넘어오는 요청 처리 (client -> server)
		request.setCharacterEncoding("UTF-8");
		String uId 	 = request.getParameter("userid");
		String uPass = request.getParameter("userpass");
		String uName = request.getParameter("username");
		String uMail = request.getParameter("usermail");
	
		
		//결과 처리 response (server -> client)
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		String msg = "<!doctype html>";
		msg		  += "<html>";
		msg		  += "<head><meta charset='UTF-8'></head>";
		msg		  += "<body>";
		msg		  += "<h1>결론</h1>";
		msg		  += "<h2>아이디: "+ uId +"</h2>";
		msg		  += "<h2>비밀번호: "+ uPass +"</h2>";
		msg		  += "<h2>이름: "+ uName +"</h2>";
		msg		  += "<h2>이메일: "+ uMail +"</h2>";
		msg		  += "</body>";
		msg		  += "</html>";

		out.print(msg);
		out.flush();
		out.close();
 			
		
		boolean ok = true;
		
		if(ok) {
			response.sendRedirect("2018_07_19_JSP/regOK.html");
		}else {
			response.sendRedirect("2018_07_19_JSP/regFail.html");
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/memreg")
public class MemReg extends HttpServlet {
   private static final long serialVersionUID = 1L;

   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
      //넘어오는 request 요청 정보처리(client ----- > server)
      request.setCharacterEncoding("UTF-8");
      String uName 	 = request.getParameter("username");
      
      //결과처리 (Server---->client)
      //response.setCharacterEncoding //컨텐트 타입 캐릭터 인코딩 같이 저ㅏㅇ해야 함 
      response.setContentType("text/html; charset=UTF-8"); 
      String newUName = java.net.URLEncoder.encode(uName);
      PrintWriter out = response.getWriter();
      String msg = "<!doctype html>";
      msg       += "<html>";
      msg		+= "<head><meta charset='UTF-8'></head>";
      msg		+= "<body>";
      msg		+= "<h1>결론</h1>";	
      msg		+= "<h1>"+"아이디:"+newUName+"</h1>";
      msg		+= "</body>";
      msg		+= "</html>";
      
      boolean ok=true;
      if(!uName.equals("")) {
         response.sendRedirect("2018_07_19_JSP/regMember.jsp?uName="+newUName);
      }else {
         response.sendRedirect("joinfailed.html");
      }
      out.flush();
      out.close();
   }

   
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
      doGet(request, response);
   }

}
*/