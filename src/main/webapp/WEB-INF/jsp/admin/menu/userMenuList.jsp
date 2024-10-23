<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" type="text/css" href="/css/admin/menuMange.css">
<h2 style="font-size: 40px; font-weight: bold;">사용자페이지 메뉴 정보</h2>
<div class="button-container">
	<button class="btn register-btn">등록</button>
	<button id="saveBtn" class="btn list-btn">적용</button>
</div>
<form method="post" id="mberListForm">
	<input type="hidden" name="menuSeq" id="menuSeq" value="" />
	<ul id="sortable-menu" class="menu-list">
		<li class="menu-item" data-id="1">
			<span class="menu-title">메뉴 1</span>
			<div class="menu-buttons">
				<button class="btn edit-btn">수정</button>
				<button class="btn delete-btn">삭제</button>
			</div>
		</li>
		<li class="menu-item" data-id="2">
			<span class="menu-title">메뉴 2</span>
			<div class="menu-buttons">
				<button class="btn edit-btn">수정</button>
				<button class="btn delete-btn">삭제</button>
			</div>
		</li>
		<li class="menu-item" data-id="3">
			<span class="menu-title">메뉴 3</span>
			<div class="menu-buttons">
				<button class="btn edit-btn">수정</button>
				<button class="btn delete-btn">삭제</button>
			</div>
		</li>
		<li class="menu-item" data-id="4">
			<span class="menu-title">메뉴 4</span>
			<div class="menu-buttons">
				<button class="btn edit-btn">수정</button>
				<button class="btn delete-btn">삭제</button>
			</div>
		</li>
	</ul>
</form>

<script>
	$(function() {
		// jQuery UI의 sortable 기능 적용
		$("#sortable-menu").sortable();
		$("#sortable-menu").disableSelection();

		// 저장 버튼 클릭 시
		$("#saveBtn").click(function() {
			var order = [];

			// 현재 메뉴의 순서를 배열로 저장
			$("#sortable-menu .menu-item").each(function() {
				var id = $(this).data("id");
				order.push(id);
			});

			// AJAX로 순서 전송
			$.ajax({
				type : "POST",
				url : "/admin/adminMenuInsert.do",
				data : {
					order : order
				},
				traditional : true,
				success : function(response) {
					alert("메뉴 순서가 저장되었습니다!");
				},
				error : function(response) {
					alert("저장 실패: ");
				}
			});
		});
	});
</script>