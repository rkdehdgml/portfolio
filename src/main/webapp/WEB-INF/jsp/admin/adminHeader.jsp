<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<header class="admin-header">
	<div class="logo-subject">
		<h3>포트폴리오</h3>
		<h1>관리자페이지</h1>
	</div>
	<nav>
		<ul>
			<li class="menu-item"><a href="#">회원 관리</a> <!-- 1차 메뉴 -->
				<ul class="submenu">
					<li class="submenu-item"><a href="#">- 회원 목록</a> <!-- 2차메뉴 -->
						<ul class="sub-submenu">
							<li><a href="#">- 회원 상세보기</a></li> <!-- 3차메뉴 -->
							<li><a href="#">- 회원 수정</a></li>
						</ul>
					</li>
					<li class="submenu-item"><a href="#">- 회원 추가</a></li>
				</ul>
			</li>
			<li class="menu-item"><a href="#">메뉴 관리</a>
				<ul class="submenu">
					<li class="submenu-item"><a href="#">- 메뉴 추가</a>
						<ul class="sub-submenu">
							<li><a href="#">- 관리자페이지 메뉴 추가</a></li> <!-- 3차메뉴 -->
							<li><a href="#">- 사용자화면 메뉴 추가</a></li>
						</ul>
					</li>
					<li class="submenu-item"><a href="#">- 메뉴 수정</a>
						<ul class="sub-submenu">
							<li><a href="#">- 관리자페이지 메뉴 수정</a></li> <!-- 3차메뉴 -->
							<li><a href="#">- 사용자화면 메뉴 수정</a></li>
						</ul>
					</li>
				</ul>
			</li>
			<li class="menu-item"><a href="#">게시판 관리</a>
				<ul class="submenu">
					<li class="submenu-item"><a href="#">- 게시판 추가</a></li>
					<li class="submenu-item"><a href="#">- 게시물 수정</a></li>
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
		$(".menu-item > a").click(function(event) {
			event.preventDefault();
			$(this).next(".submenu").slideToggle();
		});

		// 2차 메뉴 클릭 시 3차 메뉴 토글
		$(".submenu-item > a").click(function(event) {
			event.preventDefault();
			$(this).next(".sub-submenu").slideToggle();
		});
	});
	
	//로그아웃
	
</script>
