$(document).ready(function() {
	// FullPage.js가 이미 초기화되었는지 확인
	if (!$.fn.fullpage.isFullpage) {
		$('#fullpage').fullpage({
			menu: '#fullmenu',  // anchors 옵션 제거
			verticalCentered: false,
			css3: false,
			autoScrolling: true,
			lockAnchors: true,  // URL 해시를 잠급니다.
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
