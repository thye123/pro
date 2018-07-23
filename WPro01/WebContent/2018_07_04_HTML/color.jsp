<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<style>
			h1{
				display: inline-block;
			}
			select{
				height:24.3px;
			}
		</style>
		<script>
			window.onload = function (){
				var col = document.getElementsByClassName("color");
				var selop = document.getElementById("selOption");
				var btn = document.getElementById("btn");
				var op = document.getElementsByClassName("op");
				
				btn.onclick=function(){
					if(selop.value == "rainbow"){
						for (var i = 0; i < col.length; i++) {
							col[i].style.color=selop[i].value;							
						}
					}else{
						for (var i = 0; i < col.length; i++) {
							col[i].style.color=selop.value;
						}
					}
				}
			}
		</script>
	</head>
	<body>
		<div>
			<h1 class="color">RED</h1> 
			<h1 class="color">ORANGE</h1> 
			<h1 class="color">YELLOW</h1> 
			<h1 class="color">GREEN</h1> 
			<h1 class="color">BLUE</h1> 
			<h1 class="color">NAVY</h1>
			<h1 class="color">PURPLE</h1>
		</div>
		<select id = "selOption">
			<option class="op" value="red">씨뻘겅</option>
			<option class="op" value="orange">덜씨뻘겅</option>
			<option class="op" value="yellow">누리끼리</option>
			<option class="op" value="green">씨퍼렁댕댕</option>
			<option class="op" value="blue">씨퍼렁</option>
			<option class="op" value="navy">더씨퍼렁</option>
			<option class="op" value="purple">겁나맞은색</option>
			<option class="op" value="rainbow">색똥저고리</option>
		</select><button id="btn">눌리라</button>
	</body>
</html> --%>