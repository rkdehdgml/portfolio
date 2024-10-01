$(document).ready(function() {
	// FullPage.js가 이미 초기화되었는지 확인
	if (!$.fn.fullpage.isFullpage) {
		$('#fullpage').fullpage({
			menu: '#fullmenu',
			verticalCentered: false,
			keyboardScrolling: true,
			css3: false,
			autoScrolling: true,
			lockAnchors: true,
			afterLoad: function(origin, destination, direction) {
				// 첫 번째 섹션일 때 헤더 숨기기
				if (destination.index === 0) {
					$('#mainHeader').addClass('hidden');
				} else {
					$('#mainHeader').removeClass('hidden');
				}
			}
		});
	}
});
