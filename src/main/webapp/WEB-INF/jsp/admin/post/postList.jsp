<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<h2 style="font-size: 40px; font-weight: bold;">게시물 정보</h2>
<div class="button-container">
	<button class="btn register-btn">등록</button>
</div>
<form method="post" id="mberListForm">
	<input type="hidden" name="mberSeq" id="mberSeq" value=""/>
	<table>
		<colgroup>
			<col style="width: 10%;">
			<col style="width: 15%;">
			<col style="width: 15%;">
			<col style="width: 15%;">
			<col style="width: 20%;">
			<col style="width: 15%;">
		</colgroup>
		<thead>
			<tr>
				<th>게시물 ID</th>
				<th>게시물 제목</th>
				<th>게시물 생성날짜</th>
				<th>게시물 수정날짜</th>
				<th>첨부 이미지 경로</th>
				<th>관리</th>
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