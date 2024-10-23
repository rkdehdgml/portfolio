<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<h2 style="font-size: 40px; font-weight: bold;">회원 정보</h2>
<div class="button-container">
	<button class="btn register-btn">등록</button>
</div>
<form method="post" id="mberListForm">
	<input type="hidden" name="mberSeq" id="mberSeq" value=""/>
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
			<c:forEach var="mberList" items="${mberList}">
				<tr>
					<td>${mberList.MBER_ID}</td>
					<td>${mberList.MBER_NAME}</td>
					<td>${mberList.MBER_EMAIL}</td>
					<td class="button-cell">
						<button class="btn edit-btn" data-id="<c:out value="${mberList.MBER_SEQ}"/>">수정</button>
						<button class="btn delete-btn">삭제</button>
					</td>
	
				</tr>
			</c:forEach>
		</tbody>
	</table>
</form>