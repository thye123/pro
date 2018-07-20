<%@page import="DreamLeagueDBConn.DreamLeagueDAO"%>
<%@page import="DreamLeagueDBConn.DreamLeagueVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("UTF-8");
	DreamLeagueDAO dao 	= new DreamLeagueDAO();
	String id 		= request.getParameter("uid");
	String pass 	= request.getParameter("upass");
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
	
	dao.insertMem(id, pass, name, birth, gender, phone, email, zipcode, address);
	dao.close();
	
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
		<style>

		</style>		
		<script src="//code.jquery.com/jquery-1.12.4.js"></script>
		<script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		<script>
			$(function(){
			
			});
		</script>
	</head>
	<body>
		
	</body>
</html>