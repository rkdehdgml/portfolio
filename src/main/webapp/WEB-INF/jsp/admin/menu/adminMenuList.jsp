<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- CSS (jsTree 스타일 적용) -->
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.3.12/themes/default/style.min.css">

<!-- JavaScript (jQuery 및 jsTree 로드) -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.3.12/jstree.min.js"></script>


<h2 style="font-size: 40px; font-weight: bold;">관리자페이지 메뉴 정보</h2>
<div class="button-container">
	<button class="btn register-btn">등록</button>
	<button id="saveBtn" class="btn list-btn">순서적용</button>
</div>

<div id="menuTree">
	<ul>
		<!-- 첫 번째 메뉴 -->
		<li id="menu1">메뉴1
			<div class="menu-buttons">
				<button class="btn edit-btn">수정</button>
				<button class="btn delete-btn">삭제</button>
			</div>
			<ul>
				<li id="menu1-1">메뉴1-1
					<ul>
						<li id="menu1-1-1">메뉴1-1-1
							<div class="menu-buttons">
								<button class="btn edit-btn">수정</button>
								<button class="btn delete-btn">삭제</button>
							</div>
						</li>
					</ul>
					<div class="menu-buttons">
						<button class="btn edit-btn">수정</button>
						<button class="btn delete-btn">삭제</button>
					</div>
				</li>
				<li id="menu1-2">메뉴1-2
					<ul>
						<li id="menu1-2-1">메뉴1-2-1
							<div class="menu-buttons">
								<button class="btn edit-btn">수정</button>
								<button class="btn delete-btn">삭제</button>
							</div>
						</li>
					</ul>
					<div class="menu-buttons">
						<button class="btn edit-btn">수정</button>
						<button class="btn delete-btn">삭제</button>
					</div>
				</li>
				<li id="menu1-3">메뉴1-3
					<div class="menu-buttons">
						<button class="btn edit-btn">수정</button>
						<button class="btn delete-btn">삭제</button>
					</div>
				</li>
			</ul>
		</li>
		<!-- 두 번째 메뉴 -->
		<li id="menu2">메뉴2
			<div class="menu-buttons">
				<button class="btn edit-btn">수정</button>
				<button class="btn delete-btn">삭제</button>
			</div>
			<ul>
				<li id="menu2-1">메뉴2-1
					<ul>
						<li id="menu2-1-1">메뉴2-1-1
							<div class="menu-buttons">
								<button class="btn edit-btn">수정</button>
								<button class="btn delete-btn">삭제</button>
							</div>
						</li>
					</ul>
					<div class="menu-buttons">
						<button class="btn edit-btn">수정</button>
						<button class="btn delete-btn">삭제</button>
					</div>
				</li>
				<li id="menu2-2">메뉴2-2
					<div class="menu-buttons">
						<button class="btn edit-btn">수정</button>
						<button class="btn delete-btn">삭제</button>
					</div>
				</li>
				<li id="menu2-3">메뉴2-3
					<div class="menu-buttons">
						<button class="btn edit-btn">수정</button>
						<button class="btn delete-btn">삭제</button>
					</div>
				</li>
			</ul>
		</li>
	</ul>
</div>


<script>
	$(document).ready(function() {
		$('#menuTree').jstree({
			"core" : {
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
		//페이지 로드 될때
		$('#menuTree').on("ready.jstree", function() {
			$('#menuTree').jstree("close_all"); // 모든 노드를 닫음
			console.log("jsTree가 초기화되었으며, 모든 노드를 닫았습니다.");
		});

		// 클릭 시 노드 접히거나 펼치기
		$('#menuTree').on("select_node.jstree", function(e, data) {
			// 선택한 노드가 열려있다면 닫고, 닫혀있다면 연다
			$('#menuTree').jstree().toggle_node(data.node);
			// 기존 노드 클래스 삭제
			$('#menuTree').jstree().deselect_node(data.node);
			
		});
		
		$('#jstree').on('hover_node.jstree', function (e, data) {
			$('#menuTree').jstree().deselect_node(data.node);
		});

		// 수정 및 삭제 버튼 클릭 이벤트
		$('#menuTree').on('click','.edit-btn',function(e) {
			e.stopPropagation(); // 클릭 이벤트 전파 방지
			let nodeName = $(this).closest('li').children('.jstree-anchor').text().trim();
			alert('수정하시겠습니까?');
			// 수정 로직 추가
		});

		$('#menuTree').on('click','.delete-btn',function(e) {
			e.stopPropagation(); // 클릭 이벤트 전파 방지
			let nodeName = $(this).closest('li').children('.jstree-anchor').text().trim();
			if (confirm('정말로 삭제하시겠습니까?')) {
				$(this).closest('li').remove(); // 해당 노드 삭제
			}
		});
	});
</script>
