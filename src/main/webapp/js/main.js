//fullpage.js
$(function() {
	$('#fullpage').fullpage({
		anchors: ['page1', 'page2', 'page3', 'page4', 'page5', 'footer'],
		menu: '#fullmenu',
		verticalCentered: false,
		css3: false,
		autoScrolling: true,
		scrollOverflow: true,
		afterLoad: function(anchorLink, index) {
			// 모든 메뉴에서 active 클래스 제거
			$('#fullmenu li a').removeClass('active-menu');
			// 현재 섹션의 메뉴에 active 클래스 추가
			// 2번째 페이지부터 5번째 페이지에서만 active 클래스 추가
			if (index >= 2 && index <= 5) {
				$('#fullmenu li').eq(index - 2).find('a').addClass('active');
			}
		}
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
	$('.project').slick({
		rows: 1,
		dots: false,
		slidesToShow: 1,
		slidesToScroll: 1,
		draggable: true,
		arrows: true,
		variableWidth: false,
		centerMode: true,
		ceneterPadding: '80px',
		speed: 1000,
	});
});


