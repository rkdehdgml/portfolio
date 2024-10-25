<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<header class="admin-header">
	<div class="logo-subject">
		<h3>포트폴리오</h3>
		<h1><a href="/admin.do">관리자페이지</a></h1>
	</div>
	<nav>
		<ul>
			<li class="menu-item"><a href="#">회원 관리</a> <!-- 1차 메뉴 -->
				<ul class="submenu">
					<li class="submenu-item"><a href="/admin/mberList.do">- 회원 정보</a></li>
				</ul>
			</li>
			<li class="menu-item"><a href="#">메뉴 관리</a>
				<ul class="submenu">
					<li class="submenu-item"><a href="#">- 메뉴 정보</a>
						<ul class="sub-submenu">
							<li><a href="/admin/adminMenuList.do">- 관리자페이지 메뉴 정보</a></li>
							<li><a href="/admin/userMenuList.do">- 사용자화면 메뉴 정보</a></li>
						</ul>
					</li>
				</ul>
			</li>
			<li class="menu-item"><a href="#">게시판/게시물 관리</a>
				<ul class="submenu">
					<li class="submenu-item"><a href="/admin/boardListPage.do">- 게시판 정보</a></li>
					<li class="submenu-item"><a href="#">- 게시물 정보</a></li>
				</ul>
			</li>
			<li class="menu-item"><a href="#">푸터 관리</a></li>
		</ul>
	</nav>
	<div class="logout">
		<a href="/logout.do">로그아웃</a>
	</div>
</header>

<script>
	$(document).ready(function() {
		// 서브 메뉴 숨기기
		$(".submenu, .sub-submenu").hide();

		// 1차 메뉴 클릭 시 2차 메뉴 토글
		$(".menu-item > a").click(function() {
// 			event.preventDefault();
			$(this).next(".submenu").slideToggle();
		});

		// 2차 메뉴 클릭 시 3차 메뉴 토글
		$(".submenu-item > a").click(function() {
// 			event.preventDefault();so
			$(this).next(".sub-submenu").slideToggle();
		});
	});
</script>