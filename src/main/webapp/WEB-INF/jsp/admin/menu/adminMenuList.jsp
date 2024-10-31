<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- CSS (jsTree 스타일 적용) -->
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.3.12/themes/default/style.min.css">
<link rel="stylesheet" type="text/css" href="/css/admin/menuAdminMange.css">

<!-- JavaScript (jQuery 및 jsTree 로드) -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.3.12/jstree.min.js"></script>


<h2 style="font-size: 40px; font-weight: bold;">관리자페이지 메뉴 정보</h2>
<div class="button-container">
	<button class="btn register-btn">등록</button>
	<button id="saveBtn" class="btn list-btn">순서적용</button>
</div>

<!-- 메뉴 동적으로 그려줌 -->
<div id="menuTree"></div>
<script>
	function getJsonData() {
		$.ajax({
			type : "GET",
			url : "/admin/adminMenuJson.do",
			dataType : "json",
			success : function(data) {
				console.log(data);
				var jsonArray = buildTreeData(data);
				$('#menuTree').jstree({
					"core" : {
						"data" : jsonArray, // 여기서 jsonArray를 설정
						"check_callback" : true, // 트리 구조 변경 가능하게 설정
						"themes" : {
							"responsive" : true
						// 반응형 설정
						}
					},
					"plugins" : [ "dnd", "contextmenu", "state", "wholerow" ], // 드래그 앤 드롭, 컨텍스트 메뉴, 전체 행 선택 플러그인 추가
					"types" : {
						"default" : {
							"icon" : false
						// 기본 아이콘 숨김
						}
					}
				});

				// 페이지 로드 될 때
				$('#menuTree').on("ready.jstree", function() {
					$('#menuTree').jstree("close_all"); // 모든 노드를 닫음
					console.log("jsTree가 초기화되었으며, 모든 노드를 닫았습니다.");
				});

				// 클릭 시 노드 접히거나 펼치기
				$('#menuTree').on("select_node.jstree", function(e, data) {
					$('#menuTree').jstree().toggle_node(data.node);
					$('#menuTree').jstree().deselect_node(data.node);
				});

				// 수정 및 삭제 버튼 클릭 이벤트
				$('#menuTree').on('click','.edit-btn',
						function(e) {
							e.stopPropagation(); // 클릭 이벤트 전파 방지
							let nodeName = $(this).closest('li').children('.jstree-anchor').text().trim();
							alert('수정하시겠습니까?');
							// 수정 로직 추가
						});

				$('#menuTree').on('click','.delete-btn',
						function(e) {
							e.stopPropagation(); // 클릭 이벤트 전파 방지
							let nodeName = $(this).closest('li').children('.jstree-anchor').text().trim();
							if (confirm('정말로 삭제하시겠습니까?')) {
								$(this).closest('li').remove(); // 해당 노드 삭제
							}
						});
			},
			error : function(xhr, status, error) {
				console.error("AJAX 요청 오류: " + error);
			}
		});
	}
	
	//가져온 json 데이터 처리
	function buildTreeData(data) {
		var treeData = [];
		data.forEach(function(item) {
			var node = {
				id : item.menuId,
				text : item.menuNm,
				a_attr : {
					href : item.menuUrl
				},
				children : []
			// 서브 메뉴가 있는 경우 이곳에 추가
			};
			// 서브 메뉴 추가 로직 (예시)
			if (item.subMenuYn === "Y") {
				node.children.push({
					id : item.menuId,
					text : item.menuNm,
					a_attr : {
						href : item.menuUrl
					}
				});
			}
			treeData.push(node);
		});
		return treeData;
	}

	$(document).ready(function() {
		getJsonData(); // 페이지 로드 시 JSON 데이터 가져오기
	});
</script>

