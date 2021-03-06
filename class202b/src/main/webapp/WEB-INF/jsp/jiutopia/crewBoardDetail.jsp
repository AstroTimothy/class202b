<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ include file="/WEB-INF/jsp/inc/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<!-- 미완 미완 미완 미완 미완 수정 수정 수정 수정 예정 예정 예정 -->
<meta charset="utf-8">
<title>A클럽</title>

<link rel="StyleSheet" type="text/css" href="/class202b/css/main2_header.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>

<style>
#wrapper{
	padding-top: 15px;
	padding-right: 10px;
	padding-bottom: 0px;
	padding-left: 0px;
}

#crewNavigator{
	width: 20%;
	float: left;
}
#crewBoardContents {
	width: 80%;
	float: left;
	border-width: 1px;
	border-top-style: none;
	border-right-style: none;
	border-bottom-style: none;
	border-left-style: solid;
	border-color: gray;
	padding-top: 0px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 15px;
}
#contentsContext{
width:100%;
height : 50%;
}
</style>
</head>
<body>
	<div id="search">
		<a href=""><img src="img/search.png" width="28" alt="검색" /></a>
	</div>
	<div id="myPage">
		<a href=""><img src="img/mypage.png" width="28" alt="My" /></a>
	</div>
	<header id="topMain">

		<a class="homeName">
		<font color="white">
		<h1>주토피아</h1></font></a>

	</header>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
	
	<div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto mr-auto">
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          주짓수 정보
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">유래</a>
          <a class="dropdown-item" href="#">띠</a>
          <a class="dropdown-item" href="#">체급</a>
        </div>
        </li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          주짓수 소식
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="month1.html">대회/세니마 정보</a>
        </div>
        </li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          커뮤니티
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="Movie.html">주짓수 배우기</a>
          <a class="dropdown-item" href="Gym.html">체육관 정보</a>
          <a class="dropdown-item" href="Club.html">동호회 정보</a>
        </div>
      </li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     
    </ul>


  </div>
</nav>

<div id = "wrapper">
	<div id = "crewNavigator">
		<img src ="" alt="crewImg" class = "crewImg">
		<ul id = "crewIntro">
			<li>동호회 이름 : <span>A</span></li>
			<li>동호회 지역 : <span>Seoul</span></li>			
			<li>동호회 인원 : <span>12</span></li>			
			<li>동호회 소개 : <br/><span>주짓수매트제작</span></li>			
		</ul>
	</div>
	<div id = "crewBoardContents">
		<table id = "contentsHeader">
			<tr>
				<th>글번호<th>
				<th>제목<th>
				<th>작성자<th>
				<th>작성시간<th>
			</tr>
		</table>
		<div id = "contentsContext">
			<p>gg</p>
		</div>
		<div id = "contentsComment">
			<input type="text" id="comments" name ="comments">
			<input type="button" id="commentsSubmit" name="commentsSubmit" value ="확인">
			<input type="button" id="commentsCancel" name="commentsCancel" value ="취소">
			<input type="button" id="contentsLike" name="contentsLike" value ="추천">
		</div>
		<table id = "contentsCommentsArea">
			<tr>
				<td>댓글내용</td>
				<td>작성자</td>
				<td>작성시간</td>
			</tr>
		</table>
	</div>
</div>
<div class="top">
	<input type="button" value="TOP" onclick="window.scrollTo(0,0);">
</div>
<div id = "gubun">
	<hr />
</div>
<footer> 
	<p><b>“ 주짓수는 작고 약한 사람이 자신을 보호할 수 있는 유일한 호신술이다. ” 엘리오 그레이시(1913 – 2009)</b></p>
</footer>
</body>
</html>