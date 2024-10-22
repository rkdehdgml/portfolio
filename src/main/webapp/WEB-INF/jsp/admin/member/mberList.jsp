<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<h2 style="font-size: 40px; font-weight: bold;">회원 정보</h2>
<div class="button-container">
	<button class="btn register-btn">등록</button>
</div>
<table>
	<colgroup>
		<col style="width: 15%;">
		<!-- 회원 ID 열 -->
		<col style="width: 35%;">
		<!-- 이름 열 -->
		<col style="width: 35%;">
		<!-- 이메일 열 -->
		<col style="width: 15%;">
		<!-- 작업 열 -->
	</colgroup>
	<thead>
		<tr>
			<th>회원 ID</th>
			<th>이름</th>
			<th>이메일</th>
			<th>관리</th>
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
					<button class="btn edit-btn">수정</button>
					<button class="btn delete-btn">삭제</button>
				</td>

			</tr>
		</c:forEach>
	</tbody>
</table>
