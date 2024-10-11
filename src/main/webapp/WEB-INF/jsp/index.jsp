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
	src="https://cdnjs.cloudflare.com/ajax/libs/animejs/3.2.1/anime.min.js"></script>
<script src="/js/main.js"></script>
<style>
body {
	margin: 0; /* 기본 margin 제거 */
	overflow: hidden; /* 스크롤바 숨기기 */
}

.moving-box {
	position: absolute;
	width: 50px;
	height: 50px;
	border-radius: 50%; /* 동그라미로 만들기 */
	margin-bottom: 250px;
	display: flex;
	justify-content: center;
	align-items: center;
	font-size: 0; /* 초기 상태에서 글자 숨기기 */
	color: white; /* 글자 색상 */
	font-weight: bold; /* 글자 두껍게 */
	transition: font-size 0.5s; /* 글자 크기 전환 애니메이션 */
}

.sec1 {
	position: relative; /* 자식 박스들이 sec1 안에서 위치하게 함 */
	height: 100vh; /* 화면 전체 높이 */
	display: flex;
	justify-content: center;
	align-items: center; /* 내용의 정렬을 중앙으로 설정 */
	flex-direction: column; /* 세로 방향으로 정렬 */
}

h2 {
	z-index: 10; /* 텍스트가 박스 위에 보이도록 설정 */
	position: relative;
	margin: 20px 0 0 0; /* 위쪽 간격 조정 */
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
					<h2 class="motion m1">안녕하세요,</h2>
					<h2 class="motion m2">풀스택 개발자 강동희입니다.</h2>
					<div class="moving-box" style="background-color: rgb(255, 0, 0);">hello</div>
					<div class="moving-box" style="background-color: rgb(0, 255, 0);">hello</div>
					<div class="moving-box" style="background-color: rgb(0, 0, 255);">hello</div>
					<div class="moving-box" style="background-color: rgb(255, 255, 0);">hello</div>
					<div class="moving-box" style="background-color: rgb(255, 0, 255);">hello</div>
					<div class="moving-box" style="background-color: rgb(0, 255, 255);">hello</div>
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
        // Anime.js를 사용하여 박스 애니메이션 설정
        const boxes = document.querySelectorAll('.moving-box');

        boxes.forEach(box => {
            anime({
                targets: box,
                translateX: [
                    { value: Math.random() * 500 - 250, duration: 2000 },
                    { value: Math.random() * 500 - 250, duration: 2000 }
                ],
                translateY: [
                    { value: Math.random() * 100 - 50, duration: 2000 }, // 문장 위에서만 움직임
                    { value: Math.random() * 100 - 50, duration: 2000 }
                ],
                loop: true,
                easing: 'easeInOutQuad',
                delay: anime.stagger(200), // 각 박스에 200ms 지연
                complete: () => {
                    // 박스가 이동한 후 글자 크기를 조정하여 나타나게 함
                    box.style.fontSize = '24px'; // 글자 크기를 24px로 조정
                }
            });
        });
    </script>
</body>
</html>
