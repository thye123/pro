<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	
	out.print("<!doctype html>");
	out.print("<html>");
	out.print("<head>");
	out.print("<meta charset='utf-8'/>");
	out.print("</head>");
	out.print("<body>");
	out.print("<h1>JSP다.</h1><br>");
	out.print("id는 " + id + "<br>");
	out.print("pass는 " + pass);
	out.print("</body>");
	out.print("</html>");
%>