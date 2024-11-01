<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<h2 style="font-size: 40px; font-weight: bold;">게시판 정보</h2>
<div class="button-container">
	<button class="btn register-btn">등록</button>
</div>
<form method="post" id="mberListForm">
	<input type="hidden" name="mberSeq" id="mberSeq" value=""/>
	<table>
		<colgroup>
			<col style="width: 15%;">
			<col style="width: 20%;">
			<col style="width: 20%;">
			<col style="width: 15%;">
		</colgroup>
		<thead>
			<tr>
				<th>게시판 ID</th>
				<th>게시판명</th>
				<th>연결 게시물명</th>
				<th>관리</th>
				<!-- 버튼을 위한 헤더 추가 -->
			</tr>
		</thead>
		<tbody>
			<c:forEach var="boardList" items="${boardList}">
				<tr>
					<td>${boardList.boardId}</td>
					<td>${boardList.boardNm}</td>
					<td>${boardList.MBER_EMAIL}</td>
					<td class="button-cell">
						<button class="btn edit-btn" data-id="<c:out value="${boardList.MBER_SEQ}"/>">수정</button>
						<button class="btn delete-btn">삭제</button>
					</td>
	
				</tr>
			</c:forEach>
		</tbody>
	</table>
</form>
<script>
//등록페이지
$('.register-btn').click(function(){
	$('#mberListForm').attr('action','/admin/boardInsertPage.do').submit();
});
</script>