<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<style>
			.main {
				width: 550px;
				height: 400px;
				border: 1px solid black;
				overflow:hidden;
				float:left;
				margin-left: 350px;
				margin-top: 100px;
			}
			
			.addArea{
				width: 200px;
				overflow:hidden;
				float:left;
				margin-left:20px;
				margin-top:150px;
			}
			
			.addArea p{
				display: inline-block;
			}
			
			#inText{
				width: 150px;
			}
			
			.buttonArea{
				width: 100px;
				overflow:hidden;
				float:left;
				margin-top:135px;
			}
			
			.buttonArea button{
				margin-left:20px;
				margin-top:6px;
			}
			
			#delArea{
				width:200px;
				margin-top:30px;	
			}
			
			#add, #del{
				margin-left:33px;
			}
		</style>
		<script>
			window.onload=function(){
				var inText = document.getElementById("inText");
				var addBtn = document.getElementById("add");
				var delBtn = document.getElementById("del");
				var outPutArea = document.getElementById("delArea");
				var allDell = document.getElementById("delAll");
						
				addBtn.onclick = function(){
					var add = document.createElement("option");
					var text = document.createTextNode(inText.value);
					add.setAttribute("value", inText.value);
					add.appendChild(text);
					outPutArea.appendChild(add);
				}
				
				delBtn.onclick = function(){
					//outPutArea.removeChild(outPutArea.childNodes[outPutArea.length]);
					outPutArea.remove(outPutArea.selectedIndex);
				}
				
				allDell.onclick = function(){
					while(true){
						if(outPutArea.length != 0){
							outPutArea.remove(0); 
						}else{
							break;
						}			
					}
					//outPutArea.removeChild(outPutArea.childNodes[0]);						
				}
			}
		</script>
	</head>
	<body>
		<div class = "main">
			<div class ="addArea">
				<p>입력: </p>
				<input type = "text" id = "inText" value = "">
			</div>
			<div class ="buttonArea">
				<button id = "add">→</button>
				<button id = "del">←</button>
				<button id = "delAll">AllDell</button>
			</div>
			<select id ="delArea" size="20">
				
			</select>
		</div>
	</body>
</html>