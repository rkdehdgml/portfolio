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
			<col style="width: 20%;">
			<col style="width: 15%;">
			<col style="width: 20%;">
			<col style="width: 15%;">
		</colgroup>
		<thead>
			<tr>
				<th>회원 ID</th>
				<th>이름</th>
				<th>권한</th>
				<th>가입시간</th>
				<th>관리</th>
				<!-- 버튼을 위한 헤더 추가 -->
			</tr>
		</thead>
		<tbody>
			<c:forEach var="mberList" items="${mberList}">
				<tr>
					<td>${mberList.mberId}</td>
					<td>${mberList.mberNm}</td>
					<td>
						<c:if test="${mberList.mberAuth eq 'A'}">
							관리자
						</c:if>
					</td>
					<td>${mberList.mberDate}</td>
					<td class="button-cell">
						<button class="btn edit-btn" id="update" data-id="<c:out value="${mberList.mberSeq}"/>">수정</button>
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
	$('#update').click(function(){
		var mberSeq = $(this).attr("data-id");
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
