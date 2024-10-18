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

//typeIt.js
$(document).ready(function() {
	const mainText = ["안녕하세요.", "개발자 홍길동 포트폴리오 입니다."];

	// TypeIt으로 인트로 텍스트 타이핑
	new TypeIt(".main-text", {
		strings: mainText,
		speed: 50, // 타이핑 속도 조정
		cursor: true, // 커서 표시
	}).go();
});

//slick-slider.js
$(document).ready(function() {
	$('.slider').slick({
		dots: true, // 페이지 네이션
		infinite: true, // 무한 스크롤
		speed: 500, // 애니메이션 속도
		slidesToShow: 1, // 보이는 슬라이드 개수
		slidesToScroll: 1 // 스크롤 시 이동하는 슬라이드 개수
	});
});
