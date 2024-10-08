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
<script src="/js/main.js"></script>
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
		<div class="motion m1">SKILLS</div>
	</section>

	<section id="page4" class="section sec4">
		<div class="motion m1">CAREER</div>
	</section>

	<section id="page5" class="section sec5">
		<div class="motion m1">PROJECT</div>
	</section>

</body>
<script>
	// GSAP & ScrollTrigger를 활용한 애니메이션 설정
	gsap.registerPlugin(ScrollTrigger);

	// 첫 번째 섹션 애니메이션
	gsap.from(".sec1 .span1", {
		y : 100,
		opacity : 0,
		duration : 1.5,
		ease : "power3.out"
	});

	// 두 번째 섹션 애니메이션
	gsap.from(".sec2 .motion", {
		scrollTrigger : {
			trigger : ".motion",
			start : "top center", // 스크롤 시 화면 중앙에서 시작
			toggleActions : "play none none reverse" // 재생 및 반전 설정
		},
		y : 100,
		opacity : 0,
		duration : 3,
		ease : "power3.out"
	});

	// 세 번째 섹션 애니메이션
	gsap.from(".sec3 .motion", {
		scrollTrigger : {
			trigger : ".sec3",
			start : "top center",
			toggleActions : "play none none reverse"
		},
		y : 100,
		opacity : 0,
		duration : 1.5,
		ease : "power3.out"
	});

	// 네 번째 섹션 애니메이션
	gsap.from(".sec4 .motion", {
		scrollTrigger : {
			trigger : ".sec4",
			start : "top center",
			toggleActions : "play none none reverse"
		},
		y : 100,
		opacity : 0,
		duration : 1.5,
		ease : "power3.out"
	});

	// 다섯 번째 섹션 애니메이션
	gsap.from(".sec5 .motion", {
		scrollTrigger : {
			trigger : ".sec5",
			start : "top center",
			toggleActions : "play none none reverse"
		},
		y : 100,
		opacity : 0,
		duration : 1.5,
		ease : "power3.out"
	});

	// 페이지가 스크롤될 때마다 헤더의 가시성을 조정
	window.addEventListener('scroll', function() {
		const header = document.getElementById('mainHeader');
		const scrollPosition = window.scrollY;

		// 첫 번째 섹션의 높이(100vh)
		const firstSectionHeight = window.innerHeight; // 첫 번째 섹션 높이를 100vh로 가정

		// 첫 번째 섹션의 끝나는 위치 이후로 헤더를 보이도록 설정
		if (scrollPosition > firstSectionHeight) {
			header.style.transition = 'transform 1s ease, opacity 1s ease'; // 전환 시간 늘리기
			header.style.transform = 'translateY(0)'; // 헤더 보이기
			header.style.opacity = '1';
		} else {
			header.style.transition = 'transform 0.5s ease, opacity 0.5s ease'; // 전환 시간
			header.style.transform = 'translateY(-100%)'; // 헤더 숨기기
			header.style.opacity = '0';
		}
	});



</script>
</html>
