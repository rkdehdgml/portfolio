$(document).ready(function() {
	// FullPage.js가 이미 초기화되었는지 확인
	if (!$.fn.fullpage.isFullpage) {
		$('#fullpage').fullpage({
			menu: '#fullmenu',
			anchors: ['page1', 'page2', 'page3', 'page4', 'page5'],
			verticalCentered: false,
			keyboardScrolling: true,
			css3: false,
			autoScrolling: true,
			afterLoad: function(origin, destination, direction) {
				const header = document.getElementById('mainHeader');

				if (origin === 'page1') {
					// 첫 번째 섹션일 때 헤더 숨기기 및 margin-left 제거
					if (header) {
						header.style.display = 'none'; // 헤더를 숨김
						header.style.marginLeft = '0'; // margin-left 제거
					}
				} else {
					// 첫 번째 섹션이 아닐 때 헤더 보이기 및 기본 margin-left 복원
					if (header) {
						header.style.display = ''; // 헤더를 보이게 설정
						header.style.marginLeft = ''; // margin-left를 기본값으로 복원
					}
				}
			}
		});
	}
});
