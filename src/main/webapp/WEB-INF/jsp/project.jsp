<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Project</title>
<!-- Slick CSS -->
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css" />
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css" />
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 20px;
}

.subject {
	text-align: center;
	margin-bottom: 20px;
}

.slider {
	width: 80%;
	margin: auto;
}

.card {
	background: white;
	border-radius: 8px;
	padding: 20px;
	box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
	text-align: center;
}

.card img {
	width: 100%;
	height: auto;
	border-radius: 8px 8px 0 0; /* 카드 상단 모서리 둥글기 */
}

.card-title {
	font-size: 1.2rem;
	margin: 10px 0;
}

.card-description {
	font-size: 0.9rem;
	color: #555;
}
</style>
</head>
<body>
	<h1 class="subject">Project</h1>
	<div class="slider">
		<div class="card">
			<img src="image1.jpg" alt="Card 1">
			<div class="card-title">Card Title 1</div>
			<div class="card-description">Description for Card 1.</div>
		</div>
		<div class="card">
			<img src="image2.jpg" alt="Card 2">
			<div class="card-title">Card Title 2</div>
			<div class="card-description">Description for Card 2.</div>
		</div>
		<div class="card">
			<img src="image3.jpg" alt="Card 3">
			<div class="card-title">Card Title 3</div>
			<div class="card-description">Description for Card 3.</div>
		</div>
		<!-- 필요한 만큼 카드 추가 -->
	</div>

	<!-- jQuery -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<!-- Slick JS -->
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
	<script>
		$(document).ready(function() {
			$('.slider').slick({
				dots : true, // 하단 점 표시
				infinite : true, // 무한 스크롤
				speed : 500, // 슬라이드 전환 속도
				slidesToShow : 1, // 한 번에 보여줄 카드 수
				slidesToScroll : 1, // 한 번에 스크롤할 카드 수
			});
		});
	</script>
</body>
</html>
