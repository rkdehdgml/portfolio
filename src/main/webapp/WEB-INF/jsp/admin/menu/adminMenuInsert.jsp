<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
/* popup.css */
#popup {
    display: none; /* 기본적으로 숨김 */
    position: fixed;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);
    background-color: white; /* 배경색을 흰색으로 설정 */
    border: 1px solid #ddd;
    border-radius: 5px;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
    z-index: 1000; /* 다른 요소 위에 표시 */
    padding: 20px;
    width: 400px; /* 팝업 너비 */
}

#popup h2 {
    margin-top: 0; /* 제목의 상단 여백 제거 */
}

#overlay {
    display: none; /* 기본적으로 숨김 */
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: rgba(0, 0, 0, 0.5); /* 반투명 배경 */
    z-index: 999; /* 팝업 아래에 표시 */
}

</style>
<div id="overlay"></div>
<div id="popup">
	<h2>팝업 제목</h2>
	<p>여기에 팝업 내용을 추가하세요.</p>
</div>