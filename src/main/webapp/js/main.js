//fullpage.js
$(function() {
	$('#fullpage').fullpage({
		anchors: ['page1', 'page2', 'page3', 'page4', 'page5', 'footer'],
		menu: '#fullmenu',
		verticalCentered: false,
		css3: false,
		autoScrolling: true,
		scrollingSpeed: 700,  // 스크롤 속도
		easing: 'easeInOutCubic', // 부드러운 스크롤링 효과
	});
});

$(document).ready(function() {
	const mainText = ["안녕하세요.", "개발자 홍길동 포트폴리오 입니다."];

	// TypeIt으로 인트로 텍스트 타이핑
	new TypeIt(".main-text", {
		strings: mainText,
		speed: 50, // 타이핑 속도 조정
		cursor: true, // 커서 표시
	}).go();
});

