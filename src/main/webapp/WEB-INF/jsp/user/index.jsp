<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Portfolio</title>
<!--  css  -->
<link rel="stylesheet" type="text/css" href="/css/main.css">
<link rel="stylesheet" type="text/css" href="/css/aboutMe.css">
<link rel="stylesheet" type="text/css" href="/css/skills.css">
<link rel="stylesheet" type="text/css" href="/css/timeline.css">
<link rel="stylesheet" type="text/css" href="/css/project.css">
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css" />

<!-- script -->
<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/fullPage.js/2.9.7/vendors/scrolloverflow.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/fullPage.js/2.9.7/jquery.fullpage.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/typeit@8.6.1/dist/index.umd.js"></script>
<script src="/js/main.js"></script>
</head>
<body>
	<div id="wrap">
		<!-- 헤더 -->
		<header id="header">
			<ul id="fullmenu">
				<li data-menuanchor="page2"><a href="#page2">About Me</a></li>
				<li data-menuanchor="page3"><a href="#page3">Skills</a></li>
				<li data-menuanchor="page4"><a href="#page4">Project</a></li>
				<li data-menuanchor="page5"><a href="#page5">Timeline</a></li>
			</ul>
		</header>
		<!-- 전체 페이지를 감싸는 컨테이너 -->
		<div id="container">
			<div id="fullpage">
				<!-- 섹션 1 -->
				<section class="section sec1">
					<div class="motion m1">
						<div class="main-text"></div>
					</div>
					<div class="scroll-container">
						<div class="mouse"></div>
						<div class="scroll-down">Scroll Down</div>
					</div>
				</section>
				<!-- 두번째 세션 -->
				<section class="section sec2">
					<c:import url="/WEB-INF/jsp/user/aboutMe.jsp"></c:import>
				</section>
				<!-- 세번째 세션 -->
				<section class="section sec3">
					<c:import url="/WEB-INF/jsp/user/skills.jsp"></c:import>
				</section>
				<!-- 네번째 세션 -->
				<section class="section sec4">
					<c:import url="/WEB-INF/jsp/user/project.jsp"></c:import>
				</section>
				<!-- 다섯번째 세션 -->
				<section class="section sec5">
					<c:import url="/WEB-INF/jsp/user/timeline.jsp"></c:import>
				</section>
				<footer class="section footer">
					<p>강동희</p>
					<p>강동희</p>
					<p>강동희</p>
				</footer>
			</div>
		</div>
	</div>
</body>
</html>
