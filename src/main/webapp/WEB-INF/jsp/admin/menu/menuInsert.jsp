<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="popup">
	<h2 class="popTitle">메뉴 등록</h2>
	<form class="popInsertForm">
		<table class="form-table">
			<colgroup>
				<col style="width: 20%;">
				<col style="width: 70%;">
			</colgroup>
			<tr>
				<th>메뉴명</th>
				<td>
					<input type="text" id="menuNm" name="menuNm" placeholder="메뉴 이름을 입력하세요" />
				</td>
			</tr>
			<tr>
				<th>메뉴레벨</th>
				<td>
					<select name="menuLev">
						<option value="1">1차</option>
						<option value="2">2차</option>
						<option value="3">3차</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>메뉴url</th>
				<td>
					<input type="text" id="menuUrl" name="menuUrl" placeholder="연결할 메뉴 Url를 입력하세요." />
				</td>
			</tr>
			<tr>
				<th>사용여부</th>
				<td>
					<select name="menuYn">
						<option value="Y">사용</option>
						<option value="N">미사용</option>
					</select>
				</td>
			</tr>
		</table>
	</form>
</div>