<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<form method="post" id="insertForm">
	<table class="form-table">
		<tr>
			<th>아이디</th>
			<td><input type="text" id="mberId" name="mberId" required></td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td><input type="text" id="mberPw" name="mberPw" required></td>
		</tr>
		<tr>
			<th>이름</th>
			<td><input type="text" id="mberName" name="mberName" required></td>
		</tr>
		<tr>
			<th>권한</th>
			<td>
				<input type="radio" id="mberAuth" name="mberAuth" value="A"><label for="mberAuth">관리자</label>
				<input type="radio" id="mberAuth" name="mberAuth" value="U"><label for="mberAuth">사용자</label>
			</td>
		</tr>
	</table>

	<div class="button-container">
		<button type="submit" id="insert" class="btn register-btn">등록</button>
		<button type="button" id="list" class="btn list-btn">목록</button>
	</div>
</form>

<script>
$(document).ready(function(){
	//등록
	$('#insert').click(function() {
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
