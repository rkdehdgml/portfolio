<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
<link rel="stylesheet" type="text/css" href="/css/admin/admin.css">
<link rel="stylesheet" type="text/css" href="/css/common/admin_common.css">
<link rel="stylesheet" type="text/css" href="/css/common/popup.css">

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
<body>
	<div class="admin-container">
		<!-- 왼쪽 메뉴 -->
		<c:import url="/WEB-INF/jsp/admin/adminHeader.jsp"></c:import>
		<!-- 메인 콘텐츠 영역 -->
		<main class="admin-content">
<!-- 			<h1>관리자 페이지</h1> -->
			<c:import url="/WEB-INF/jsp/${content}"></c:import>
		</main>
	</div>
</body>
</html>
