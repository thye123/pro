<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	.main{
		width: 100px;
		height: 100px;
		border: 1px solid black;
	}
	
	.main img{
		width: 100px;
		height: 100px;
	}
	
	.slide{
		display: none;
	}
</style>
</head>
<body>
	<div class="main">
		<img class = "slide" src ="./img01.jpg">
		<img class = "slide" src ="./img02.jpg">
		<img class = "slide" src ="./img03.png">
	</div>
	<script>
		var cnt = 0;
		slide();
		
		function slide(){
			var i;
			var image = document.getElementsByClassName("slide");
			for (i = 0; i < image.length; i++) {
				image[i].style.display="none";
			}
			cnt++;
			if(cnt>image.length){cnt=1}			
			image[cnt-1].style.display = "block";
			setTimeout(slide, 2000);
		}
		
	</script>
</body>
</html>