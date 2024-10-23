<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<form method="post" id="insertForm">
	<table class="form-table">
		<tr>
			<th><label for="mberId">아이디:</label></th>
			<td><input type="text" id="mberId" name="mberId" required></td>
		</tr>
		<tr>
			<th><label for="mberName">비밀번호:</label></th>
			<td><input type="text" id="mberName" name="mberName" required></td>
		</tr>
		<tr>
			<th><label for="mberEmail">이름:</label></th>
			<td><input type="email" id="mberName" name="mberName" required></td>
		</tr>
	</table>

	<div class="button-container">
		<button type="submit" id="update" class="btn register-btn">등록</button>
		<button type="button" id="list" class="btn list-btn">목록</button>
	</div>
</form>

<script>
$(document).ready(function(){
	//수정
	$('#update').click(function() {
		$.ajax ({
			type     : "post",
			url      : "/admin/mberInsert.do",
			data     : $("#insertForm").serialize(),
			dataType : "json",
			success  : function (data) {
				if(data.result == 'Y') {
					alert("수정되었습니다.")
					window.location.href = '/admin/mberList.do';
				} else if(data.result == 'N') {
					alert("오류가 발생했습니다.");
				}
			},
			error    : function (response) {
				alert("오류가 발생했습니다.");
			}
		})
	});
	
	//목록
	$('#list').click(function(){
		window.location.href = '/admin/mberList.do';
	});
	
});


</script>
