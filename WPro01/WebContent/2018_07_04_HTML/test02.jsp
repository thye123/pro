<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<style>
			#main{
				width:306px;
				height:306px;
				overflow:hidden;
				border: 1px solid black;
			}
		
			#div1, #div2, #div3, #div4, #div5, #div6, #div7, #div8, #div9{
				width: 100px;
				height: 100px;
				border: 1px solid black;
				float: left;
				display:inline-block;
			}
		</style>
		<script>
			window.onload = function (){
				var btn = document.getElementById("btn");
				var i = 1;
				btn.onclick = function(){
					var div1 = document.getElementById("div1");
					var div2 = document.getElementById("div2");
					var div3 = document.getElementById("div3");
					var div4 = document.getElementById("div4");
					var div5 = document.getElementById("div5");
					var div6 = document.getElementById("div6");
					var div7 = document.getElementById("div7");
					var div8 = document.getElementById("div8");
					var div9 = document.getElementById("div9");
					if(i%2==0){
						div1.style.backgroundColor = "blue";
						div2.style.backgroundColor = "hsl(39, 100%, 50%)";
						div3.style.backgroundColor = "hsl(248, 53%, 58%)";
						div4.style.backgroundColor = "#ee82ee";
						div5.style.backgroundColor = "#3cb371";
						div6.style.backgroundColor = "#ff0000";
						div7.style.backgroundColor = "hsl(0, 100%, 90%)";
						div8.style.backgroundColor = "hsl(0, 100%, 75%)";
						div9.style.backgroundColor = "hsl(0, 0%, 71%)";
					}else{
						div1.style.backgroundColor = "yellow";						
						div2.style.backgroundColor = "hsl(300, 76%, 72%)";						
						div3.style.backgroundColor = "hsl(147, 50%, 47%)";						
						div4.style.backgroundColor = "rgba(255, 99, 71, 0.6)";						
						div5.style.backgroundColor = "hsl(0, 100%, 50%)";						
						div6.style.backgroundColor = "hsla(9, 100%, 64%, 0.4)";						
						div7.style.backgroundColor = "hsl(0, 20%, 50%)";						
						div8.style.backgroundColor = "#0000ff";						
						div9.style.backgroundColor = "rgb(255, 99, 71)";						
					}
					i++;
				}
			}
		</script>
	</head>
	<body>
		<button id="btn">눌리라</button>
		<div id = "main">
			<div id="div1"></div>
			<div id="div2"></div>
			<div id="div3"></div>
			<div id="div4"></div>
			<div id="div5"></div>
			<div id="div6"></div>
			<div id="div7"></div>
			<div id="div8"></div>
			<div id="div9"></div>
		</div>
	</body>
</html>