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
		<h2>관리자 로그인</h2>
		<form method="post" id="loginForm">
			<input type="text" name="mberId" placeholder="아이디" required>
			<input type="password" name="mberPw" placeholder="비밀번호" required>
			<button type="submit" id="logBtn">로그인</button>
		</form>
	</div>
</body>

<script>
	$(document).ready(function() {
		$('#loginForm').submit(function(e) {
			e.preventDefault(); // 기본 제출 이벤트 막기
			// 아이디 입력값 체크
			if ($('input[name=mberId]').val() === '') {
				alert("아이디를 입력하세요");
				return false;
			}
			// 비밀번호 입력값 체크
			if ($('input[name=mberPw]').val() === '') {
				alert("비밀번호를 입력하세요");
				return false;
			}

			// 로그인 폼 전송
			loginSubmit();
		});

		//로그인 체크
		function loginSubmit() {
			$.ajax({
				type : "POST",
				url : "/loginCheck.do",
				data : $("#loginForm").serialize(),
				dataType : "json",
				success : function(data) {
					if (data.result == 'Y') { // 로그인 성공 후 처리
						window.location.href = "/admin.do";
// 						$("#loginForm").attr("action","/admin.do");
					} else if (data.result == 'N') {
						alert("관리자 정보가 일치하지 않습니다.");
					} else if (data.result == 'A') {
						alert("관리자 정보가 없습니다.");
					}
				},
				error : function(response) {
					alert("오류가 발생했습니다.");
				}
			});
		}
	});
</script>
</html>
