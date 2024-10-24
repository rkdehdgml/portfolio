<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" type="text/css" href="/css/admin/menuMange.css">
<h2 style="font-size: 40px; font-weight: bold;">사용자페이지 메뉴 정보</h2>
<div class="button-container">
	<button id="insert" class="btn register-btn">등록</button>
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
		
		// 등록 버튼 클릭 시 모달 열기
		$('.register-btn').click(function() {
			$.ajax({
				type: 'POST',
				url: '/admin/userMenuInsertPage.do',
				data: $('#menuListForm').serialize(),
				dataType: 'html',
				success: function(data) {
					$("#insertPopup").html(data);
					$("#insertPopup").dialog({
						modal: true,
						width: 900,
						height: 700,
						escapeClose : true,
						title : '메뉴등록',
						buttons: {
							"등록": function() {
								if($("#menuNm").val() == "") {
									alert("메뉴명을 입력하세요.");
									$("#menuNm").focus();
								} else if ($("#menuUrl").val() == "") {
									alert("메뉴url를 입력하세요");
									$("#menuUrl").focus();
								}
								//등록
								$.ajax({
									type : "POST",
									url  : "/admin/userMenuInsert.do",
									data : $('#popInsertForm').serialize(),
									dataType : "json",
									success : function(data) {
										alert("등록 되었습니다.")
										$("#insertPopup").dialog("close");
									},
									error : function (data) {
										alert("오류가 발생했습니다.")
									}
								})
							},
							"닫기": function() {
								 $("#insertPopup").dialog("close");
							}
						},
						open: function() {
							// "등록" 버튼만 스타일 적용
							$(".ui-dialog-buttonpane button:contains('등록')").css({
								"background-color": "#007bff",
								"color": "#fff"
							});
						}
					});
				},
				error: function(data) {
					alert("오류가 발생했습니다.");
				}
			});
		});
		
		// 수정 버튼 클릭 시 팝업 열기
		$('.edit-btn').click(function() {
			event.preventDefault(); // form제출로 인하여 막음
			$.ajax({
				type: 'POST',
				url: '/admin/adminMenuUpdatePage.do',
				data: $('#menuListForm').serialize(),
				dataType: 'html',
				success: function(data) {
					console.log($("#updatePopup"));
					$("#updatePopup").html(data);
					$("#updatePopup").dialog({
						modal: true,
						width: 900,
						height: 700,
						escapeClose : true,
						title : '메뉴수정',
						buttons: {
							"등록": function() {
								if($("#menuNm").val() == "") {
									alert("메뉴명을 입력하세요.");
									$("#menuNm").focus();
								} else if ($("#menuUrl").val() == "") {
									alert("메뉴url를 입력하세요");
									$("#menuUrl").focus();
								}
								//등록
								$.ajax({
									type : "POST",
									url  : "/admin/userMenuUpdate.do",
									data : $('#popUpdateForm').serialize(),
									dataType : "json",
									success : function(data) {
										alert("수정 되었습니다.")
										$("#updatePopup").dialog("close");
									},
									error : function (data) {
										alert("오류가 발생했습니다.")
									}
								})
							},
							"닫기": function() {
								$("#updatePopup").dialog("close");
							}
						},
						open: function() {
							// "등록" 버튼만 스타일 적용
							$(".ui-dialog-buttonpane button:contains('등록')").css({
								"background-color": "#007bff",
								"color": "#fff"
							});
						}
					});
				},
				error: function(data) {
					alert("오류가 발생했습니다.");
				}
			});
		});
	});
</script>