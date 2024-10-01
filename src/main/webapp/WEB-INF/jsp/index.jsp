<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>포트폴리오</title>
<link rel="stylesheet" type="text/css" href="/css/main.css">
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css" />
<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/fullPage.js/2.9.7/jquery.fullpage.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
<script src="/js/main.js"></script>
<script src="/js/typeWriter.js"></script>
</head>
<body>
	<%
	String currentUrl = request.getRequestURI(); //관리자페이지용도
	%>
	<!-- [s] wrap -->
	<div id="wrap">

		<!-- [s] container -->
		<div id="container">
			<header class="header" id="mainHeader">
				<div class="logo">
					<a href="">PORTFOLIO</a>
				</div>
				<nav>
					<ul id="fullmenu">
						<li data-menuanchor="page2"><a href="#page2">About</a></li>
						<li data-menuanchor="page3"><a href="#page3">Career</a></li>
						<li data-menuanchor="page4"><a href="#page4">네번째 페이지</a></li>
						<li data-menuanchor="page5"><a href="#page5">다섯번째 페이지</a></li>
					</ul>
				</nav>
			</header>
			<!-- //헤더 -->
			<!-- 메인 -->
			<main>
				<div id="fullpage">
					<div class="section sec1 body">
						<h1>
							<a href="" class="typewrite" data-period="2000"
								data-type='[ "DONGHEE PORTFOLIO" ]'> <span class="wrap"></span>
							</a>
						</h1>
						<div class="scroll-down">
							Scroll down
							<div class="arrow">
								<svg width="28" height="28" viewBox="0 0 24 24">
									<path fill="white" d="M12 16l-6-6h12z" />
								</svg>
							</div>
						</div>
					</div>
					<div class="section sec2">
						<div class="motion m1">
							<c:import url="/WEB-INF/jsp/aboutMe.jsp" />
						</div>
					</div>
					<div class="section sec3">
						<h2 class="motion m1">3번 타이틀입니다</h2>
						<h2 class="motion m2">3번 타이틀입니다</h2>
					</div>
					<div class="section sec4">
						<div class="slide">
							<h2>슬라이드 1</h2>
						</div>
						<div class="slide">
							<h2>슬라이드 2</h2>
						</div>
						<div class="slide">
							<h2>슬라이드 3</h2>
						</div>
					</div>

					<div class="section sec5">
						<h2 class="motion m1">5번 타이틀입니다</h2>
						<h2 class="motion m2">5번 타이틀입니다</h2>
						<h2 class="motion m3">5번 타이틀입니다</h2>
					</div>
					<div class="section footer">FOOTER</div>
				</div>
			</main>
			<!-- //메인 -->
		</div>
	</div>
</body>
</html>
