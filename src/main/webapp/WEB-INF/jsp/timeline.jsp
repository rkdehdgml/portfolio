<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>timeline</title>
<style type="text/css">
.timeline-container {
	width: 800px; /* 원하는 넓이 유지 */
	margin: auto;
	padding: 20px;
	background: none; /* 배경색 제거 */
	box-shadow: none; /* 그림자 제거 */
	border-radius: 0; /* 모서리 둥글기 제거 */
	margin-bottom: 50px; /* 타임라인과 다음 섹션 사이의 간격 추가 */
}

.timeline-title {
	text-align: center;
	font-size: 2rem; /* 글자 크기를 조금 더 작게 수정 */
	margin-bottom: 20px;
}

.timeline {
	position: relative;
	padding: 20px 0;
}

.timeline::before {
	content: '';
	position: absolute;
	left: 50%;
	top: 0;
	bottom: 0;
	width: 2px;
	background-color: #008fdb; /* 타임라인 중앙선 색상 */
	transform: translateX(-50%);
}

.timeline-event {
	position: relative;
	width: 50%;
	padding: 20px;
	box-sizing: border-box;
	margin-bottom: 40px; /* 이벤트 간의 간격 추가 */
}

.timeline-event.left {
	left: 0;
	text-align: right;
	padding-right: 30px;
}

.timeline-event.right {
	left: 50%;
	text-align: left;
	padding-left: 30px;
}

.timeline-content {
	background-color: #e6f7ff; /* 이벤트 내용의 배경색 */
	border-radius: 5px;
	padding: 15px;
	position: relative;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
	font-size: 0.9rem; /* 이벤트 콘텐츠의 글자 크기를 작게 수정 */
}

.timeline-event.left::before, .timeline-event.right::before {
	content: '';
	position: absolute;
	width: 12px;
	height: 12px;
	background-color: #008fdb;
	border-radius: 50%;
	top: 25px;
}

.timeline-event.left::before {
	right: -6px;
}

.timeline-event.right::before {
	left: -6px;
}

.timeline-date {
	font-size: 1rem; /* 날짜 글자 크기를 조금 더 작게 수정 */
	color: #555;
	display: block;
	margin-top: 10px;
	text-align: inherit; /* 이벤트 위치에 맞게 정렬 */
}
</style>
</head>
<body>
	<div class="timeline-container">
		<h1 class="subject">Skills</h1>
		<h1 class="timeline-title">Timeline</h1>
		<div class="timeline">
			<div class="timeline-event left">
				<div class="timeline-content">
					<h2>이벤트 1</h2>
					<p>이벤트 1의 내용이 여기에 들어갑니다.</p>
					<span class="timeline-date">2024-01-01</span>
				</div>
			</div>
			<div class="timeline-event right">
				<div class="timeline-content">
					<h2>이벤트 2</h2>
					<p>이벤트 2의 내용이 여기에 들어갑니다.</p>
					<span class="timeline-date">2024-02-15</span>
				</div>
			</div>
			<div class="timeline-event left">
				<div class="timeline-content">
					<h2>이벤트 3</h2>
					<p>이벤트 3의 내용이 여기에 들어갑니다.</p>
					<span class="timeline-date">2024-03-10</span>
				</div>
			</div>
			<div class="timeline-event right">
				<div class="timeline-content">
					<h2>이벤트 4</h2>
					<p>이벤트 4의 내용이 여기에 들어갑니다.</p>
					<span class="timeline-date">2024-04-25</span>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
