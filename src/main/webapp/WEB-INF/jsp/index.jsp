<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Portfolio</title>
<link rel="stylesheet" type="text/css" href="/css/main.css">
<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/fullPage.js/2.9.7/jquery.fullpage.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/typed.js/2.0.12/typed.min.js"></script>
<style>
body {
	margin: 0;
	background-color: #000; /* 배경색 검정 */
	color: #00FF00; /* 글자 색상 */
	font-family: 'Consolas', 'Courier New', monospace; /* 고정폭 글꼴 사용 */
}

.terminal-box {
	background-color: #000; /* 터미널 배경색 검정 */
	color: #00FF00; /* 글자 색상 */
	padding: 20px; /* 안쪽 여백 */
	border-radius: 5px; /* 모서리 둥글게 */
	white-space: pre; /* 줄바꿈을 유지 */
	overflow-y: auto; /* 세로 방향 스크롤 가능 */
	width: 80%; /* 너비 설정 */
	height: 400px; /* 높이 설정 */
	margin: 20px auto; /* 중앙 정렬 */
	box-shadow: 0 0 10px rgba(0, 255, 0, 0.5); /* 그림자 효과 */
}

.sec1 {
	height: 100vh; /* 화면 전체 높이 */
	display: flex;
	justify-content: center;
	align-items: center; /* 내용의 정렬을 중앙으로 설정 */
	flex-direction: column; /* 세로 방향으로 정렬 */
}
</style>
</head>
<body>
	<div id="wrap">
		<div id="container">
			<ul id="fullmenu">
				<li data-menuanchor="page1"><a href="#page1">첫번째 페이지</a></li>
				<li data-menuanchor="page2"><a href="#page2">두번째 페이지</a></li>
				<li data-menuanchor="page3"><a href="#page3">세번째 페이지</a></li>
				<li data-menuanchor="page4"><a href="#page4">네번째 페이지</a></li>
				<li data-menuanchor="page5"><a href="#page5">다섯번째 페이지</a></li>
				<li data-menuanchor="footer"><a href="#footer">FOOTER</a></li>
			</ul>

			<div id="fullpage">
				<div class="section sec1">
					<div class="terminal-box" id="terminal"></div>
				</div>
				<div class="section sec2">
					<h2 class="motion m1">2번 타이틀입니다</h2>
					<h2 class="motion m2">2번 타이틀입니다</h2>
					<h2 class="motion m3">2번 타이틀입니다</h2>
					<h2 class="motion m4">2번 타이틀입니다</h2>
					<h2 class="motion m5">2번 타이틀입니다</h2>
				</div>
				<div class="section sec3">
					<h2 class="motion m1">3번 타이틀입니다</h2>
					<h2 class="motion m2">3번 타이틀입니다</h2>
				</div>
				<div class="section sec4">
					<h2 class="motion m1">4번 타이틀입니다</h2>
					<h2 class="motion m2">4번 타이틀입니다</h2>
				</div>
				<div class="section sec5">
					<h2 class="motion m1">5번 타이틀입니다</h2>
					<h2 class="motion m2">5번 타이틀입니다</h2>
					<h2 class="motion m3">5번 타이틀입니다</h2>
				</div>
				<div class="section footer">FOOTER</div>
			</div>
		</div>
	</div>

	<script>
		const commands = [
				"C:\\Users\\User> dir\n",
				" Volume in drive C is OS\n",
				" Volume Serial Number is XXXX-XXXX\n",
				"\n",
				" Directory of C:\\Users\\User\n",
				"\n",
				"08/10/2024  10:00 AM    <DIR>          Documents\n",
				"08/10/2024  10:00 AM    <DIR>          Downloads\n",
				"08/10/2024  10:00 AM    <DIR>          Music\n",
				"08/10/2024  10:00 AM    <DIR>          Pictures\n",
				"08/10/2024  10:00 AM    <DIR>          Videos\n",
				"\n",
				"C:\\Users\\User> echo Welcome to my CMD!\n",
				"Welcome to my CMD!\n",
				"C:\\Users\\User> cd Projects\n",
				"C:\\Users\\User\\Projects> git clone https://github.com/example/repo.git\n",
				"Cloning into 'repo'...\n", "C:\\Users\\User\\Projects> dir\n",
				" Volume in drive C is OS\n",
				" Volume Serial Number is XXXX-XXXX\n", "\n",
				" Directory of C:\\Users\\User\\Projects\n", "\n",
				"08/10/2024  10:00 AM    <DIR>          repo\n" ];

		const options = {
			strings : commands,
			typeSpeed : 50, // 입력 속도
			backSpeed : 25, // 지우는 속도
			backDelay : 1000, // 이전 텍스트 지우기 후 대기 시간
			startDelay : 500, // 시작하기 전에 대기 시간
			loop : true, // 반복 여부
			cursorChar : '|', // 커서 모양
		};

		const typed = new Typed('#terminal', options);
	</script>
</body>
</html>
