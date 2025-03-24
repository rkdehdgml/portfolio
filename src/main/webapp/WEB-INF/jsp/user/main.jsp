<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Portfolio</title>

<link rel="icon" type="image/x-icon" href="/img/assets/favicon.ico" />
<!--  css  -->
<link rel="stylesheet" type="text/css" href="/css/main.css">
<link rel="stylesheet" type="text/css" href="/css/aboutMe.css">
<link rel="stylesheet" type="text/css" href="/css/skills.css">
<link rel="stylesheet" type="text/css" href="/css/timeline.css">
<link rel="stylesheet" type="text/css" href="/css/project.css">
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css" />
<link href="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.css" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
<!-- script -->
<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/typeit@8.6.1/dist/index.umd.js"></script>
<script src="/js/main.js"></script>
</head>
	<body id="page-top">
		<!-- Navigation-->
		<nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
			<div class="container px-4 px-lg-5">
				<a class="navbar-brand" href="#page-top">Start Bootstrap</a>
				<button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
				<div class="collapse navbar-collapse" id="navbarResponsive">
					<ul class="navbar-nav ms-auto my-2 my-lg-0">
						<li class="nav-item"><a class="nav-link" href="#about">About</a></li>
						<li class="nav-item"><a class="nav-link" href="#services">Services</a></li>
						<li class="nav-item"><a class="nav-link" href="#portfolio">Portfolio</a></li>
						<li class="nav-item"><a class="nav-link" href="#contact">Contact</a></li>
					</ul>
				</div>
			</div>
		</nav>
		<!-- Masthead-->
		<section class="masthead">
			<c:import url="/WEB-INF/jsp/user/section1.jsp"></c:import>
		</section>
		<!-- About-->
		<section class="page-section bg-primary" id="about">
			<c:import url="/WEB-INF/jsp/user/section2.jsp"></c:import>
		</section>
		<!-- Services-->
		<section class="page-section" id="services">
			<c:import url="/WEB-INF/jsp/user/section3.jsp"></c:import>
		</section>
		<!-- Portfolio-->
		<section id="portfolio">
			<c:import url="/WEB-INF/jsp/user/section4.jsp"></c:import>
		</section>
		<!-- Call to action-->
		<section class="page-section bg-dark text-white">
			<div class="container px-4 px-lg-5 text-center">
				<h2 class="mb-4">Free Download at Start Bootstrap!</h2>
				<a class="btn btn-light btn-xl" href="https://startbootstrap.com/theme/creative/">Download Now!</a>
			</div>
		</section>
		<!-- Contact-->
		
		<!-- Footer-->
		<footer class="bg-light py-5">
			<div class="container px-4 px-lg-5"><div class="small text-center text-muted">Copyright &copy; 2023 - Company Name</div></div>
		</footer>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.js"></script>
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>
</html>
