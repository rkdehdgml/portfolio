<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>포트폴리오</title>
	<!-- css -->
	<link rel="stylesheet" href="/css/library/jquery.fullPage.css">
	<link rel="stylesheet" href="/css/common/common.css">
	<link rel="stylesheet" href="/css/user/main.css">
	<link rel="stylesheet" href="/css/user/header.css">
	<!-- javascript -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="/js/library/jquery.fullPage.js"></script>
	<script src="/js/user/main.js"></script>

<style>
	/*메인페이지*/
	#fullpage {
		width: 100%;
	}
	section {
		text-align: center;
		font-size: 24px;
	}
	
	/*푸터*/
	.footer {
		display: flex;
		height: 100px !important;
		background-color: #ddd;
		justify-content: center;
		align-items: center;
	}
</style>
</head>
<body>
	<header>
		<c:import url="/WEB-INF/jsp/user/header.jsp"/>
	</header>

	<main id="fullpage">
		<c:import url="/WEB-INF/jsp/user/main.jsp"/>
		<footer class="section fp-auto-height">
			<div class="footer">
				<p>© 2025 My Portfolio</p>
			</div>
		</footer>
	</main>
</body>
</html>
