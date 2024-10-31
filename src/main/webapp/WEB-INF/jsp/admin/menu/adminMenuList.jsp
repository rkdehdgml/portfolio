<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- CSS (jsTree 스타일 적용) -->
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.3.12/themes/default/style.min.css">

<!-- JavaScript (jQuery 및 jsTree 로드) -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.3.12/jstree.min.js"></script>

<style>
    /* jsTree의 기본 아이콘을 숨김 */
    .jstree .jstree-icon {
        display: none; /* 기본 아이콘을 숨김 */
    }

    /* 작대기 아이콘 추가 */
    .jstree .jstree-anchor::before {
        content: '≡'; /* 작대기 세 개 기호 */
        font-size: 16px; /* 크기 조정 */
        margin-right: 5px; /* 아이콘과 텍스트 사이의 간격 */
        color: #000; /* 아이콘 색상 */
        vertical-align: middle; /* 텍스트와 아이콘을 수직 정렬 */
    }
</style>

<h2 style="font-size: 40px; font-weight: bold;">관리자페이지 메뉴 정보</h2>
<div class="button-container">
    <button class="btn register-btn">등록</button>
    <button id="saveBtn" class="btn list-btn">순서적용</button>
</div>

<div id="menuTree">
    <ul>
        <!-- 첫 번째 메뉴 -->
        <li id="menu1">메뉴1
            <ul>
                <li id="menu1-1">메뉴1-1
                    <ul>
                        <li id="menu1-1-1">메뉴1-1-1</li>
                    </ul>
                </li>
                <li id="menu1-2">메뉴1-2
                    <ul>
                        <li id="menu1-2-1">메뉴1-2-1</li>
                    </ul>
                </li>
                <li id="menu1-3">메뉴1-3</li>
            </ul>
        </li>
        <!-- 두 번째 메뉴 -->
        <li id="menu2">메뉴2
            <ul>
                <li id="menu2-1">메뉴2-1
                    <ul>
                        <li id="menu2-1-1">메뉴2-1-1</li>
                    </ul>
                </li>
                <li id="menu2-2">메뉴2-2</li>
                <li id="menu2-3">메뉴2-3</li>
            </ul>
        </li>
    </ul>
</div>

<script>
    $(document).ready(function() {
        // jsTree 초기화
        $('#menuTree').jstree({
            "core": {
                "check_callback": true, // 트리 구조 변경 가능하게 설정
                "themes": {
                    "responsive": true // 반응형 설정
                }
            },
            "plugins": ["dnd", "contextmenu", "state", "wholerow"], // 드래그 앤 드롭, 컨텍스트 메뉴, 전체 행 선택 플러그인 추가
            "types": {
                "default": {
                    "icon": false // 기본 아이콘 숨김
                }
            }
        });

        // 클릭 시 노드 접히거나 펼치기
        $('#menuTree').on("select_node.jstree", function (e, data) {
            // 선택한 노드가 열려있다면 닫고, 닫혀있다면 연다
            $('#menuTree').jstree().toggle_node(data.node);
        });

        // 노드 추가 예시
        $('#menuTree').on("ready.jstree", function() {
            // 트리가 로드된 후 필요한 초기 작업을 수행할 수 있습니다.
            console.log("jsTree가 초기화되었습니다.");
        });
    });
</script>
