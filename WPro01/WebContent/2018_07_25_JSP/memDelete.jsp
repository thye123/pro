<%@page import="DBCONNECT.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String userId = request.getParameter("uid");
	MemberDAO dao = new MemberDAO();
	dao.delMember(userId);
	dao.close();
	
	response.sendRedirect("memlist.jsp");
%>