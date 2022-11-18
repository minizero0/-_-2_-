<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="mainTest.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript">
$(function(){
	var width = $("[data-role='slider']").attr("data-width");
	var height = $("[data-role='slider']").attr("data-height");
	var count = $("[data-role='slider'] div.item").length;
		
	$("[data-role='slider']").css({
		position:"relative",
		overflow:'hidden',
		width:width,
		height:height		
	}).find(".container").css({
		position:'absolute',
		width:count*width,
		overflow:'hidden'
	}).find(".item").css({
		width:width,
		height:height,
		float:'left'
	});
	
	var currentPage = 0;
	var changePage = function(){
		$("[data-role='slider'] > .container").animate({
			left:-currentPage * width
		},500);
	}
	
	$("#left_button").click(function(){
		if(currentPage>0){
			currentPage = currentPage - 1;
			changePage();
		}
	});
	
	$("#right_button").click(function(){
		if(currentPage < count-1  ){
			currentPage = currentPage + 1;
			changePage();
		}
	});
});
</script>
</head>
<body class="main_layout">
 		<img src="./image/logo.png" id="logo">
 		<div class="main_user">
 				<a href="loginTest.html" id="login"><img src="./image/loginicon.png">로그인</a>
 				<a href="signupTest.html"><img src="./image/signupicon.png">회원가입</a>
 				<a href="mypage_Info.html"><img src="./image/mypageicon.png">마이페이지</a>
 		</div>
 	    <nav id="navigation">
              <form action="" method="post" class="search">
				   <input class="search_txt" type="search" placeholder="검색어 입력...">
				   <a class="search_btn" href="example.html"><img  src="./image/searchicon.png" width="35" height="35"></a>
			  </form>
              <ul>
                  <li class="home"><a href="mainTest.html">홈</a></li>
                  <li><a href="#">시사회</a></li>	
                  <li><a href="#">연극</a></li>
                  <li><a href="#">뮤지컬</a></li>
                  <li><a href="#">콘서트</a></li>
             </ul>
        </nav>
     <div id="main-header">
     <div id="left_button">&lt;</div>
	 		<div class="slider" data-role="slider" data-width="1380" data-height="600" style="position: relative; overflow: hidden; width: 500px; height: 500px;">
				<div class="container" style="position: absolute; overflow: hidden;">
					<div class="item" style="float: left;">
						<img src="./image/monster.jpg" class="poster">				
					</div>
					<div class="item" style="float: left;">				
						<img src="./image/monster2.jpg" class="poster">
					</div>
					<div class="item" style="float: left;">
						<img src="./image/upposter.jpg" class="poster">
					</div>
				</div>
			</div>
			
            <div id="right_button">&gt;</div>
     </div>
     <br>
     <hr>
     <div id="main-content">
     	<div>
     	<h2>장르별랭킹</h2>
	     	<ul>
	               	<li><a href="#">시사회</a></li>	
	                <li><a href="#">연극</a></li>
	                <li><a href="#">뮤지컬</a></li>
	                <li><a href="#">콘서트</a></li>
	     	</ul>
	     	<br>
	    </div>	
	     	<a class="img"><img src="./image/ART.png" width="300" height="410"></a>
	     	<a class="img"><img src="./image/가면산장 살인사건.png" width="300" height="410"></a>
	     	<a class="img"><img src="./image/서툰 사람들.png" width="300" height="410"></a>
		<br>
		<div>
     	<h2>현재상영작 </h2>
	     	<ul>
	               	<li><a href="#">시사회</a></li>	
	                <li><a href="#">연극</a></li>
	                <li><a href="#">뮤지컬</a></li>
	                <li><a href="#">콘서트</a></li>
	     	</ul>
	     	<br>
     	</div>
     		<a class="img"><img src="./image/image.png" width="300" height="410"></a>
	     	<a class="img"><img src="./image/image.png" width="300" height="410"></a>
	     	<a class="img"><img src="./image/image.png" width="300" height="410"></a>
     	<br>
     	  	<div>
     	<h2>개봉예정작</h2>
	     	<ul>
	               	<li><a href="#">시사회</a></li>	
	                <li><a href="#">연극</a></li>
	                <li><a href="#">뮤지컬</a></li>
	                <li><a href="#">콘서트</a></li>
	     	</ul>
	     	<br>
	    </div>	
	     	<a class="img"><img src="./image/image.png" width="300" height="410"></a>
	     	<a class="img"><img src="./image/image.png" width="300" height="410"></a>
	     	<a class="img"><img src="./image/image.png" width="300" height="410"></a>
     </div>
     <div id="main-footer">
		<footer>
			<div>Footer</div>
		</footer>
	</div>	  
</body>
</html>