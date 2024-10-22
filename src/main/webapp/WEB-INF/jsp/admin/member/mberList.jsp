<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<h2>회원 목록</h2>
<table>
	<thead>
		<tr>
			<th>회원 ID</th>
			<th>이름</th>
			<th>이메일</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="member" items="${mberList}">
			<tr>
				<td>${member.id}</td>
				<td>${member.name}</td>
				<td>${member.email}</td>
			</tr>
		</c:forEach>
	</tbody>
</table>