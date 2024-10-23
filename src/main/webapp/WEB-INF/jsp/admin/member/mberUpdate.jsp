<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<h2>회원 정보 수정</h2>
<form method="post" id="updateForm">
	<input type="hidden" name="mberSeq" value="<c:out value="${commonMap.mberSeq}"/>"/>
	<table class="form-table">
		<tr>
			<th>이름</th>
			<td><input type="text" id="mberName" name="mberName" value="<c:out value="${mberInfo.MBER_NAME}"/>" required></td>
		</tr>
		<tr>
			<th>아이디</th>
			<td><input type="text" id="mberId" name="mberId" value="<c:out value="${mberInfo.MBER_ID}"/>" readonly></td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td><input type="password" id="mberPw" name="mberPw" value="<c:out value="${mberInfo.MBER_PW}"/>" required></td>
		</tr>
	</table>

	<div class="button-container">
		<button type="submit" id="update" class="btn register-btn">수정</button>
		<button type="button" id="list"class="btn list-btn">목록</button>
	</div>
</form>

<script>
$(doucment).ready(function() {
	//수정
	$.ajax({
		type : "post",
		url : "/admin/mberUpdate.do",
		data : $("#insertForm").serialize(),
		dataType : "json",
		success : function (data) {
			if(data.result == 'Y') {
				alert("수정되었습니다.");
				window.location.href = '/admin/mberList.do',
			} else if (data.result == 'N') {
				alert("오류가 발생했습니다.");
			}
		},
		error : function (response) {
			alert("오류가 발생했습니다.");
		}
	})
	
	//목록
	$('#list').click(function(){
		window.location.href = '/admin/mberList.do';
	});
});

</script>

