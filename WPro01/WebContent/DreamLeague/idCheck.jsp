<%@page import="DreamLeagueDBConn.DreamLeagueDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String userId = request.getParameter("useridcheck");
	DreamLeagueDAO dao = new DreamLeagueDAO();
	int check = dao.checkId(userId);
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
				var chBtn 			= document.getElementById("check");
				var useridcheck		= document.getElementById("idCheck");
				var beforePage		= window.opener.document;
				var now				= window.document.getElementById('idCheck');
				useridcheck.value	= beforePage.getElementById('uId').value;

				var p	 = document.getElementsByTagName("p");
				var text = "";
				
				chBtn.addEventListener('click', function(){

					<% 
						if( check == 0){ 
					%>
							window.close();
					<%
						}else{ 
							if( check != 0){
					%>
								alert("다시 입력해 주세요.");
								now.value = "";
								now.focus();
					<%			
							}
						} 
						
					%>
					
					
				});
			});
		</script>
	</head>
	<body>
		<form id = "checkID">
			<h2>아이디 중복 확인</h2>
			<div class="checkArea">
				<label>아이디: </label><input type="text" name="useridcheck" id="idCheck">
				<input type="submit" id="check" value="중복확인">
				<% if( check == 0){ %>
					<h2>사용 가능한 아이디 입니다.</h2>
				<% }else{ 
						if(check != 0){
				%>
					<h2>사용 불가능한 아이디 입니다.</h2>
				<% 		}
					} 
				%>
			</div>
			<p></p>
		</form>
	</body>
</html>