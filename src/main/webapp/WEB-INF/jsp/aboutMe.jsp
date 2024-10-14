<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="about-me-container">
	<div class="motion m1">
		<div class="picture">
			<img alt="사진" src="/img/JSimage.png">
			<div class="hashtags">
				<span>#JavaScript</span> <span>#Programming</span> <span>#Development</span>
			</div>
		</div>
	</div>
	<div class="motion m2">
		<div class="terminal">
			<div class="terminal-header">
				<span class="btn-close"></span> <span class="btn-minimize"></span> <span
					class="btn-maximize"></span>
			</div>
			<div class="terminal-body">
				<span id="typed-about"> "이름 : 홍길동"<br> "주소 : 서울특별시 서구
					둔산동"<br> "전화번호 : 010-0000-0000"<br> "이메일 :
					example@example.com"
				</span>
			</div>
		</div>
	</div>
</div>

<script>
	// var options2 = {
	// 		strings: [
	// 			"이름 : 홍길동",
	// 			"주소 : 서울특별시 서구 둔산동",
	// 			"전화번호 : 010-0000-0000",
	// 			"이메일 : example@example.com"
	// 		],
	// 		typeSpeed: 50,
	// 		backSpeed: 0, // 지우는 속도를 0으로 설정
	// 		loop: false, // 반복하지 않도록 설정
	// 		smartBackspace: false, // 이전 문자열 지우기 설정
	// 		cursorChar: '|', // 커서 모양
	// 		showCursor: true // 커서 표시
	// 	};
	// 	var typed2 = new Typed("#typed-about", options2);
</script>
