<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- CSS  -->
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.3.12/themes/default/style.min.css">
<link rel="stylesheet" type="text/css" href="/css/admin/menuMange.css">

<!-- jsTree 로드 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.3.12/jstree.min.js"></script>

<form method="post" id="menuForm">
	<input type="hidden" id>
</form>

<h2 style="font-size: 40px; font-weight: bold;">관리자페이지 메뉴 정보</h2>
<div class="button-container">
	<button class="btn register-btn">등록</button>
	<button id="saveBtn" class="btn list-btn">순서적용</button>
</div>
<!-- 메뉴 구역 -->
<div id="menuTree"></div>
<!-- 모달창 js -->
<script src="/js/dialogCustom.js"></script>
<!-- 모달창 구역 -->
<div id="insertPopup" style="display:none;"></div>
<div id="updatePopup" style="display:none;"></div>
<script>
function getJsonData() {
	$.ajax({
			type : "GET",
			url : "/admin/adminMenuJson.do",
			dataType : "json",
			success : function(data) {
				var jsonArray = new Array();
				$.each(data, function(idx, item) {
					jsonArray[idx] = {id:item.menuId,
									parent: item.parMenuNm,
									text:item.menuNm 
									+ '<div class="menu-buttons">'
									+ '<button class="btn edit-btn" data-id="'+item.menuId+'">수정</button>'
									+ '<button class="btn delete-btn"data-id="'+item.menuId+'">삭제</button>'
									+'</div>'}
				});
				$('#menuTree').jstree({
					"core" : {
						"data" : jsonArray,
						"check_callback" : true,
						"themes" : {
							"responsive" : true
						}
					},
					"plugins" : [ "dnd", "state", "wholerow" ],
					"types" : {
						"default" : {
							"icon" : false
						}
					}
				});

				// 페이지 로드 될 때 모든 노드를 닫음
				$('#menuTree').on("ready.jstree", function() {
					$('#menuTree').jstree("close_all");
				});

				$('#menuTree').on("select_node.jstree", function(e, data) {
					var node = data.node;
					$('#menuTree').jstree().toggle_node(node); // 노드를 접거나 펼침
					$('#menuTree').jstree().deselect_node(node); // 선택 해제
				});

				// 수정 및 삭제 버튼 클릭 이벤트
				$('#menuTree').on('click','.edit-btn', function(e) {
					e.stopPropagation();
					let menuId = $(this).attr('data-id');
					updatedialog(menuId); // 다이얼로그 열기 함수 호출
				});

				$('#menuTree').on('click','.delete-btn', function(e) {
					e.stopPropagation();
					let nodeName = $(this).closest('li').children('.jstree-anchor').text().trim();
					if (confirm('정말로 삭제하시겠습니까?')) {
						$(this).closest('li').remove();
					}
				});
			},
			error : function(data) {
				alert("오류가 발생했습니다.");
			}
		});
	}
	$(document).ready(function() {
		getJsonData(); // 페이지 로드 시 JSON 데이터 가져오기
	});
</script>

