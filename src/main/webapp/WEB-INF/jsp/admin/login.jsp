<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" type="text/css" href="/css/admin/login.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
	<div class="login-box">
		<h2>로그인</h2>
		<form method="post" id="loginForm">
			<input type="text" name="mberId" placeholder="아이디" required>
			<input type="password" name="mberPw" placeholder="비밀번호" required>
			<button type="submit" onclick="loginSubmit();" id="logBtn">로그인</button>
		</form>
	</div>
</body>

<script>
	$(document).ready(function() {
		$('#logBtn').click(function(e) {
			// 아이디 입력값 체크
			if ($('input[name=mberId]').val() == '') {
				alert("아이디를 입력하세요");
				e.preventDefault(); // 폼 제출 막기
				return false;
			}
			// 비밀번호 입력값 체크
			if ($('input[name=mberPw]').val() == '') {
				alert("비밀번호를 입력하세요");
				e.preventDefault(); // 폼 제출 막기
				return false;
			}
		});
		//로그인 폼 전송
		function loginSubmit () {
			$('#loginForm').attr('action', '/admin/login.do').submit();
		}
	});
</script>
</html>
