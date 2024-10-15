//fullpage.js
$(function() {
	$('#fullpage').fullpage({
		anchors: ['page1', 'page2', 'page3', 'page4', 'page5', 'footer'],
		menu: '#fullmenu',
		verticalCentered: false,
		css3: false,
		autoScrolling: true,
	});
});

//첫번째 페이지 typed.js
document.addEventListener("DOMContentLoaded", function() {
	new TypeIt("#main-writer", {
		strings: ["개발자 강동희 포트폴리오 입니다."],
		speed: 50,
		cursor: true,
		lifeLike: true,
		loop: false,
	}).go();
});








