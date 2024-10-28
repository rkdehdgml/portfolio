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
			<!-- 회원 ID 열 -->
			<col style="width: 20%;">
			<!-- 이름 열 -->
			<col style="width: 20%;">
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
					<td>${mberList.mberId}</td>
					<td>${mberList.mberName}</td>
					<td>${mberList.mberEmail}</td>
					<td class="button-cell">
						<button class="btn edit-btn" data-id="<c:out value="${mberList.mberSeq}"/>">수정</button>
						<button class="btn delete-btn">삭제</button>
					</td>
	
				</tr>
			</c:forEach>
		</tbody>
	</table>
</form>

<script>
$(document).ready(function(){
	//등록
	$('.register-btn').click(function(){
		$('#mberListForm').attr('action','/admin/mberInsertPage.do').submit();
	});
	//수정
	$('.edit-btn').click(function(){
		const mberSeq = $(this).attr("data-id");
		$("#mberSeq").val(mberSeq);
		$('#mberListForm').attr('action','/admin/mberUpdatePage.do').submit();
	});
	//삭제
// 	$('.register-btn').click(function(){
// 		$.ajax({
// 			type : "POST",
// 			url  : "/mberInfoDelete.do",
// 			data : $(".mberListForm").serialize(),
// 			dataType : "json",
// 			suceess : function(data) {
				
// 			},
// 			error : function(response) {
				
// 			}
// 		})
// 	});
});
</script>
