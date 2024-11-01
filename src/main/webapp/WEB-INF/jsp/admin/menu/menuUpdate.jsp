<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="popup">
	<h2 class="popTitle">메뉴 수정</h2>
	<form class="popUpdateForm">
		<table class="form-table">
			<colgroup>
				<col style="width: 20%;">
				<col style="width: 70%;">
			</colgroup>
			<tr>
				<th>메뉴명</th>
				<td>
					<input type="text" name="menuNm" placeholder="메뉴 이름을 입력하세요" />
				</td>
			</tr>
			<tr>
				<th>메뉴레벨</th>
				<td>
					<select name="menuLev">
						<option value="1">1차</option>
						<option value="2">2차</option>
						<option value="3">3차</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>메뉴타입</th>
				<td>
					<input type="radio" id="mberType" name="mberType" value="A"><label for="mberType">관리자메뉴</label>
					<input type="radio" id="mberType" name="mberType" value="U"><label for="mberType">사용자메뉴</label>
				</td>
			</tr>
			<tr>
				<th>연결url</th>
				<td>
					<input type="text" name="menuUrl" placeholder="연결할 메뉴 Url를 입력하세요." style="width:500px;" />
				</td>
			</tr>
			<tr>
				<th>상위메뉴</th>
				<td>
					<select name="menuType">
						<option value="" title="선택">선택</option>
						<c:forEach var="menuList" items="${menuList}">
							<option value="<c:out value="${menuList.menuSeq}"/>" title="<c:out value="${menuList.menuSeq}"/>"><c:out value="${menuList.menuNm}"/></option>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<th>사용여부</th>
				<td>
					<input type="radio" id="menuYn" name="menuYn" value="Y" checked><label for="menuYn">사용</label>
					<input type="radio" id="menuYn" name="menuYn" value="N"><label for="menuYn">미사용</label>
				</td>
			</tr>
		</table>
	</form>
</div>
<script>
$(document).ready(function() {
	// 초기 로드 시 기본 메뉴 설정
	updateParentMenu();

	// 라디오 버튼 클릭 시 메뉴 업데이트
	$('input[name="menuType"]').on('change', function() {
		updateParentMenu();
	});

	function updateParentMenu() {
		// 선택된 메뉴 타입 가져오기
		const selectedType = $('input[name="menuType"]:checked').val();
		const $parentMenu = $('#parentMenu');

		// 기존 옵션 초기화
		$parentMenu.empty();
		$parentMenu.append('<option value="">선택</option>');

		// AJAX 요청하여 메뉴 가져오기
		$.ajax({
			url: '/admin/selectMenuListData.do', // 서버의 URL (예: /getMenuList)
			method: 'GET',
			data: { menuType: selectedType }, // 선택된 메뉴 타입 전달
			dataType:"json",
			success: function(data) {
				// 서버로부터 받은 데이터를 기반으로 옵션 추가
				$.each(data, function(index, menu) {
					$parentMenu.append('<option value="' + menu.value + '">' + menu.name + '</option>');
				});
			},
			error: function() {
				alert("오류가 발생했습니다.");
			}
		});
	}
});
</script>
