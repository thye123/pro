<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<style type="text/css">
			
			div{
				margin-top:5px;
			}
		
			.all{
				width: 400px;
				height: 500px;
				border: 1px solid black;
			}
			
			.top{
				width: 400px;
				height: 200px;
			}
			
			.top img{
				width: 398px;
				height: 198px;
			}
			
			.board{
				width: 400px;
			}
			
			.idArea p{
			    text-align: right;
			    width: 80px;
			    margin: 0px;
			    display: inline-block;
			}
			
			.passArea p{
				text-align: right;
			    width: 80px;
			    margin: 0px;
			    display: inline-block;
			}
			
			.nameArea p{
				text-align: right;
			    width: 80px;
			    margin: 0px;
			    display: inline-block;
			}
			
			.telArea{
				height: 27px;
				overflow:hidden;
			}
			
			.telArea p{
				text-align: right;
			    width: 80px;
			    margin: 0px;
			    display: inline-block;
			}
			
			.buttonArea{
				display: inline-block;
   				margin-left: 71px;
			}
		</style>
	</head>
	<body>
		<div class = "all">
			<div class ="top">
				<img src="./1530079292.png"/>
			</div>
			<div class = "board">
				<div class ="idArea">
					<p>아이디: </p>
					<input type = "text" class = "userId" name = "id"/>
				</div>
				<div class = "passArea">
					<p>비밀번호: </p>
					<input type = "password" class = "userPass" name = "pass"/>
				</div>
				<div class = "nameArea">
					<p>이름: </p>
					<input type = "text" class = "userName" name = "name"/>
				</div>
				<div class = "telArea">
					<p>전화번호: </p>
					<select id = "userTel">
						<option value = "">선택</option>
						<option value = "010">010</option>
						<option value = "011">011</option>
						<option value = "016">016</option>
						<option value = "017">017</option>
						<option value = "018">018</option>
						<option value = "019">019</option>
					</select>
					<span>-</span>
					<input type = "text" class = "userTel" size="4" name ="tel2">
					<span>-</span>
					<input type = "text" class = "userTel" size="4" name ="tel3">
				</div>
				<div class = "buttonArea">
					<button id = "ok" onclick="">가입</button>
					<button id = "cancel"onclick="">취소</button>
				</div>
			</div>
		</div>
	</body>
</html>