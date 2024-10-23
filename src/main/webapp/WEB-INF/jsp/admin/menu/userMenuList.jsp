<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<h2 style="font-size: 40px; font-weight: bold;">사용자 페이지 메뉴 정보</h2>
<div class="button-container">
	<button class="btn register-btn">등록</button>
</div>
<form method="post" id="mberListForm">
	<input type="hidden" name="mberSeq" id="mberSeq" value="" />
	<table>
		<colgroup>
			<col style="width: 15%;">
			<col style="width: 15%;">
			<col style="width: 15%;">
			<col style="width: 15%;">
			<col style="width: 15%;">
			<col style="width: 15%;">
		</colgroup>
		<thead>
			<tr>
				<th>메뉴 ID</th>
				<th>메뉴명</th>
				<th>메뉴레벨</th>
				<th>메뉴타입</th>
				<th>메뉴링크</th>
				<th>메뉴사용여부</th>
				<!-- 버튼을 위한 헤더 추가 -->
			</tr>
		</thead>
		<tbody>
			<c:forEach var="menuList" items="${menuList}">
				<tr>
					<td>${menuList.MENU_ID}</td>
					<td>${menuList.MENU_NM}</td>
					<td>${menuList.MENU_LEV}</td>
					<td>${menuList.MENU_TYPE}</td>
					<td>${menuList.MENU_URL}</td>
					<td>${menuList.MENU_YN}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</form>