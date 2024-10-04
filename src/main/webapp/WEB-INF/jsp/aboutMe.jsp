<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ABOUT ME</title>
<link rel="stylesheet" type="text/css" href="/css/aboutMe.css">
<style>
	.container {
		display: grid;
		grid-template-rows: repeat(4, 1fr); /* 4개의 행으로 배열 */
		gap: 20px; /* 각 박스 간의 간격 */
		padding: 20px;
	}

	.box {
		background-color: #f0f0f0; /* 박스 배경색 */
		padding: 20px;
		border-radius: 8px; /* 모서리 둥글게 */
		text-align: center; /* 텍스트 가운데 정렬 */
		box-shadow: 0 2px 5px rgba(0,0,0,0.1); /* 그림자 효과 */
		width: 150%; /* 너비 100% */
		height: 80px; /* 높이를 200px로 설정 */
	}

	.box h3 {
		text-align: left;
		margin-bottom: 10px; /* 제목과 내용 간격 */
	}

	.box p {
		color: #333; /* 내용 텍스트 색상 */
	}
</style>

</head>
<body>
	<div class="container">
		<div class="box">
			<h3>Box 1</h3>
			<p>이곳은 첫 번째 박스의 내용입니다.</p>
		</div>
		<div class="box">
			<h3>Box 2</h3>
			<p>이곳은 두 번째 박스의 내용입니다.</p>
		</div>
		<div class="box">
			<h3>Box 3</h3>
			<p>이곳은 세 번째 박스의 내용입니다.</p>
		</div>
		<div class="box">
			<h3>Box 4</h3>
			<p>이곳은 네 번째 박스의 내용입니다.</p>
		</div>
	</div>
</body>
</html>
