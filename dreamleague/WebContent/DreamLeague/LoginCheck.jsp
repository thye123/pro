<%@page import="DreamLeagueDBConn.DreamLeagueDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	String id 	= request.getParameter("userid");
	String pass = request.getParameter("userpass");
	
	DreamLeagueDAO dao  = new DreamLeagueDAO();
	boolean result		= dao.LoginCheck(id, pass);

	session.setAttribute("TF", result);
	response.sendRedirect("Login.jspf");
%>