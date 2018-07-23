<%@page import="DreamLeagueDBConn.DreamLeagueDAO"%>
<%@page import="DreamLeagueDBConn.DreamLeagueVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("UTF-8");
	DreamLeagueDAO dao 	= new DreamLeagueDAO();
	//값 받아온거 변수에 담기
	String id 		= request.getParameter("userid");
	String pass 	= request.getParameter("userpass");
	String name 	= request.getParameter("uname");
	String birth 	= request.getParameter("ubirth");
	String gender 	= request.getParameter("gender");
	
	String uphone1 	= request.getParameter("uphone1");
	String uphone2 	= request.getParameter("uphone2");
	String uphone3	= request.getParameter("uphone3");
	String phone 	= uphone1+"-"+uphone2+"-"+uphone3;
	
	String uemail	= request.getParameter("uemail");
	String lemail 	= request.getParameter("lemail");
	String email  	= uemail + "@" + lemail;
	
	String zipcode  = request.getParameter("uzipcode");
	String uaddress = request.getParameter("adress");
	String daddress = request.getParameter("dadress");
	String baddress = uaddress + " " + daddress; 
	String address  = new String( baddress.getBytes("UTF-8"));
	
	//DB에 담기
	dao.insertMem(id, pass, name, birth, gender, phone, email, zipcode, address);
	dao.close();
	
	//메인으로 돌아가기
	response.sendRedirect("Home.html");
%>