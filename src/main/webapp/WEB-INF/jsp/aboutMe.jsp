<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="motion m1">
	<div class="picture">
		<img alt="사진" src="/img/JSimage.png">
		<!-- 해시태그 추가 -->
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
			<span id="typed-about"></span>
		</div>
	</div>
</div>

<script>
	var options2 = {
		strings : [ "이름 : 홍길동", "주소 : 서울특별시 서구 둔산동", "전화번호 : 010-0000-0000",
				"이메일 : example@example.com" ],
		smartBackspace : false,
		typeSpeed : 50,
		loop : false, // 반복하도록 설정
		cursorChar : '|', // 커서 모양
		showCursor : true
	};
	var typed2 = new Typed("#typed-about", options2);
</script>
