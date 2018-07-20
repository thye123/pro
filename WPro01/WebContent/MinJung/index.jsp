	<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" type="text/css" href="index.css">
<title>Insert title here</title>
<script> 

	window.onload = function() {
		var liTag = document.getElementsByTagName('li');
		var pViewer = document.getElementsByClassName('pViewer');
		var contents = document.getElementsByClassName('abx');
		this.onclick = function(){
			for(var i = 0; i < liTag.length; i++){
				liTag[i].onclick = function(){
					switch(this.textContent){
						case liTag[0].textContent:
							for(var j = 0; j < contents.length; j++){
								if(contents[0].textContent != contents[j].textContent){
									contents[j].style.display = "none";
								}
							}
							contents[0].style.display = "block";
							break;
						case liTag[1].textContent:
							for(var j = 0; j < contents.length; j++){
								if(contents[1].textContent != contents[j].textContent){
									contents[j].style.display = "none";
								}
							}
							contents[1].style.display = "block";
							break;
						case liTag[2].textContent:
							for(var j = 0; j < contents.length; j++){
								if(contents[2].textContent != contents[j].textContent){
									contents[j].style.display = "none";
								}
							}
							contents[2].style.display = "block";
							break;
						case liTag[3].textContent:
							for(var j = 0; j < contents.length; j++){
								if(contents[3].textContent != contents[j].textContent){
									contents[j].style.display = "none";
								}
							}
							contents[3].style.display = "block";
							break;
					}
				}			
			}
		}
	}
			/* for(var i = 0; i < liTag.length; i++){
				liTag[i].onclick = function(){
					alert(this.textContent);
					//var find = pViewer[0].childNodes;
					//find[i+1].style.display = "block";
					for(var j = 0; j < liTag.length; j++){
						alert(contents[i]);
						if(i != j){
							alert("i는 " + i);
							alert("j는 " + j);
							alert("contents는 " + contents[j].textContent);
							contents[j].style.display = "none";
						}
					}
				}	
			} */
		
		//var idx = 0;

		/* this.onclick = function() {
			var cnt = pViewer[0].childElementCount;
		    for(var i = 0; i<liTag.length; i++){
		    	liTag[i].onclick = function(){
		    		var div = document.createElement('div');
				    div.setAttribute("class","abx")
		    		if(cnt == 1){
					    pViewer[0].appendChild(div);
					}else{
						var deldiv = document.getElementsByClassName("abx");
						pViewer[0].removeChild(deldiv[0]);
						
						pViewer[0].appendChild(div);
					}
		    	}
		    }
		}*/
		    
		    /*   idx++;
		    	if(idx>1){
		    		alert(idx);
		    		var abx = document.getElementsByClassName('div');
		    		abx[idx-1].remove();
		    	} */
		
		/*     var abx = document.getElementsByClassName('div');
		    pViewer[0].classList.remove("abx");
			if (idx<dz) {
				   var abx = document.getElementsByClassName('div');
				   pViewer[0].abx[abx.length].remove();		
			}
		  */
</script>

</head>
<body>
	<div class="wrap">
		<div class="TopBox">
			<div class="pimage"></div>
			<div class="psearch"></div>
			<div class="plogBox"></div>
		</div>

		<div class="MildBox">
			<div class="pMenuBar"></div>
			<div class="pShowBox"></div>
			<div class="pViewer">
				<ul class="TopViewer">
					<li>경찰</li>
					<li>국가직</li>
					<li>지방직</li>
					<li>군무원</li>
				</ul>
				<div class="abx">1</div>
				<div class="abx">2</div>
				<div class="abx">3</div>
				<div class="abx">4</div>
			</div>
			<div class="pTopicBox"></div>
		</div>

		<div class="BottonBox">
			<div class="coperBox"></div>
			<div class="pFooter"></div>
		</div>
	</div>
</body>
</html>