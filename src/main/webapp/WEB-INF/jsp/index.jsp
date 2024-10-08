<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Portfolio</title>
<link rel="stylesheet" type="text/css" href="/css/textAnimation.css">
<link rel="stylesheet" type="text/css" href="/css/aboutMe.css">
<link rel="stylesheet" type="text/css" href="/css/main.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.11.4/gsap.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.11.4/ScrollTrigger.min.js"></script>
<script src="/js/typeWriter.js"></script>
</head>
<body>
	<header class="header" id="mainHeader">
		<nav>
			<ul id="fullmenu">
				<li><a href="#page2">ABOUT ME</a></li>
				<li><a href="#page3">SKILLS</a></li>
				<li><a href="#page4">CAREER</a></li>
				<li><a href="#page5">PROJECT</a></li>
			</ul>
		</nav>
	</header>

	<section class="section sec1">
		<p>저는</p>
		<b><span class="span1">풀스택 개발자 강동희<br>책임감 있는 개발자<br>발전을
				위해 노력하는 개발자<br>미래를 꿈꾸는 개발자<br></span></b>
		<p>입니다.</p>
		<div class="scroll-down">
			Scroll down
			<div class="arrow">↓</div>
			<!-- 아래 방향 화살표 추가 -->
		</div>
	</section>

	<section id="page2" class="section sec2">
		<div class="motion m1">
			<c:import url="/WEB-INF/jsp/aboutMe.jsp" />
		</div>
	</section>

	<section id="page3" class="section sec3">
		<div class="motion m1">
			<c:import url="/WEB-INF/jsp/skills.jsp" />
		</div>
	</section>

	<section id="page4" class="section sec4">
		<div class="motion m1">CAREER</div>
	</section>

	<section id="page5" class="section sec5">
		<div class="motion m1">PROJECT</div>
	</section>

</body>
<script src="/js/main.js"></script>
</html>
