<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<form method="post" id="insertForm">
	<table class="form-table">
		<tr>
			<th>게시판ID</th>
			<td><input type="text" id="boardId" name="boardId" required></td>
		</tr>
		<tr>
			<th>게시판명</th>
			<td><input type="text" id="boardNm" name="boardNm" required></td>
		</tr>
		<tr>
			<th>연결게시물명</th>
			<td><input type="text" id="boardNm" name="boardNm" required></td>
		</tr>
		<tr>
			<th>사용여부</th>
			<td>
				<input type="radio" id="boardYn" name="boardYn" value="Y"><label for="boardYn">사용</label>
				<input type="radio" id="boardYn" name="boardYn" value="N"><label for="boardYn">미사용</label>
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
    