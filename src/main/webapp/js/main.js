$(document).ready(function() {
	$('#fullpage').fullpage({
		menu: '#fullmenu',
		anchors: ['page1', 'page2', 'page3', 'page4', 'page5', 'footer'],
		verticalCentered: false,
		keyboardScrolling: true,
		css3: true,
		lazyLoading: true,
		autoScrolling: true,
		scrollOverflow: true,
		scrollOverflowReset: true,
		afterLoad: function(origin, destination, direction) {
			const header = document.getElementById('mainHeader');

			// 현재 페이지를 확인
			if (origin === 'page1') { // origin.anchor로 수정
				header.style.transform = 'translateX(-100%)'; // 첫 번째 섹션에서 헤더 숨김
			}
			else {
				header.style.transform = 'translateX(0)'; // 나머지 섹션에서 헤더 표시
			}
		}
	});
});