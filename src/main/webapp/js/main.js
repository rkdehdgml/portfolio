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
	$('.project-slider').slick({
		infinite: true, // 무한 슬라이드
		slidesToShow: 1, // 한 번에 보여줄 슬라이드 수
		slidesToScroll: 1, // 한 번에 넘길 슬라이드 수
		arrows: true, // 이전/다음 버튼 활성화
		prevArrow: '<button type="button" class="slick-prev">Previous</button>',
		nextArrow: '<button type="button" class="slick-next">Next</button>',
		responsive: [
			{
				breakpoint: 768, // 화면이 768px 이하일 때
				settings: {
					slidesToShow: 1,
					slidesToScroll: 1
				}
			}
		]
	});
});
