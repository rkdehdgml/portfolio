$(document).ready(function() {
	// FullPage.js가 이미 초기화되었는지 확인
	if (!$.fn.fullpage.isFullpage) {
		$('#fullpage').fullpage({
			anchors: ['page1', 'page2', 'page3', 'page4', 'page5', 'footer'],
			menu: '#fullmenu',
			verticalCentered: false,
			css3: false,
			autoScrolling: true,
			afterLoad: function(anchorLink, index) {
				// 첫 번째 섹션일 때 헤더 숨기기
				if (index === 1) {
					$('#mainHeader').addClass('hidden');
				} else {
					$('#mainHeader').removeClass('hidden');
				}
			}
		});
	}
});

