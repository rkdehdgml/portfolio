<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>포트폴리오</title>
<link rel="stylesheet" type="text/css" href="/css/main.css">
<link rel="stylesheet" type="text/css" href="/css/aboutMe.css">
<!-- aboutMe.css 추가 -->
<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/fullPage.js/2.9.7/jquery.fullpage.min.js"></script>
<script src="/js/main.js"></script>
<script src="/js/typeWriter.js"></script>
</head>
<body>
	<%
	String currentUrl = request.getRequestURI(); //관리자페이지용도
	%>
	<div id="wrap">
		<div id="container">
			<header class="header" id="mainHeader">
				<nav>
					<ul id="fullmenu">
						<li data-menuanchor="page2"><a href="#page2">ABOUT ME</a></li>
						<li data-menuanchor="page3"><a href="#page3">SKILS</a></li>
						<li data-menuanchor="page4"><a href="#page4">CAREER</a></li>
						<li data-menuanchor="page5"><a href="#page5">PROJECT</a></li>
					</ul>
				</nav>
			</header>
			<main>
				<div id="fullpage">
					<div class="section sec1 body">
						<h1>
							<a href="" class="typewrite" data-period="1500"
								data-type='["WELCOME TO","DONGHEE PORTFOLIO" ]'> <span class="wrap"></span>
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
							<h2 class="subject">ABOUT ME</h2>
						</div>
						<div class="motion m2">
							<c:import url="/WEB-INF/jsp/aboutMe.jsp" />
						</div>
					</div>
					<div class="section sec3">
						<h2 class="motion m1">SKILS</h2>
					</div>
					<div class="section sec4">
						<h2 class="motion m1">CAREER</h2>
					</div>
					<div class="section sec5">
						<h2 class="motion m1">PROJECT</h2>
					</div>
					<div class="section footer">FOOTER</div>
				</div>
			</main>
		</div>
	</div>
</body>
</html>
