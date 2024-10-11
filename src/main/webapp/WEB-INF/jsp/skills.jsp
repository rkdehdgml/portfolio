<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Skills</title>
<link rel="stylesheet" type="text/css" href="/css/skills.css">
</head>
<body>
	<div class="container">
		<h1 class="subject">Skills</h1>

		<!-- 프론트엔드 기술 -->
		<div class="category">
			<h2 class="category-title">Front-End</h2>
			<div class="skills-container">
				<div class="skill skill-blue">
					<p class="skill-name">HTML</p>
					<div class="skill-circle" data-percentage="90">
						<span class="percentage-text">90%</span>
					</div>
				</div>
				<div class="skill skill-green">
					<p class="skill-name">CSS</p>
					<div class="skill-circle" data-percentage="100">
						<span class="percentage-text">100%</span>
					</div>
				</div>
				<div class="skill skill-orange">
					<p class="skill-name">JavaScript</p>
					<div class="skill-circle" data-percentage="80">
						<span class="percentage-text">80%</span>
					</div>
				</div>
			</div>
		</div>

		<!-- 백엔드 기술 -->
		<div class="category">
			<h2 class="category-title">Back-End</h2>
			<div class="skills-container">
				<div class="skill skill-red">
					<p class="skill-name">Java</p>
					<div class="skill-circle" data-percentage="75">
						<span class="percentage-text">75%</span>
					</div>
				</div>
				<div class="skill skill-purple">
					<p class="skill-name">Spring Framework</p>
					<div class="skill-circle" data-percentage="70">
						<span class="percentage-text">70%</span>
					</div>
				</div>
			</div>
		</div>

		<!-- 기타 기술 -->
		<div class="category">
			<h2 class="category-title">Other Skills</h2>
			<div class="skills-container">
				<div class="skill skill-yellow">
					<p class="skill-name">Git</p>
					<div class="skill-circle" data-percentage="85">
						<span class="percentage-text">85%</span>
					</div>
				</div>
				<div class="skill skill-teal">
					<p class="skill-name">SQL</p>
					<div class="skill-circle" data-percentage="70">
						<span class="percentage-text">70%</span>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script>
        document.querySelectorAll('.skill-circle').forEach(circle => {
            const percentage = circle.getAttribute('data-percentage');
            circle.style.setProperty('--percentage', percentage / 100); // 0~1 범위로 변환
        });
    </script>
</body>
</html>
