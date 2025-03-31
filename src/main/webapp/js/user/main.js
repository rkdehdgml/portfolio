$(document).ready(function() {
	var headerHeight = $('header').outerHeight(); // 헤더 높이 가져오기
	
	$('#fullpage').fullpage({
		paddingTop: headerHeight + 'px', // 헤더 높이만큼 패딩 추가
		anchors: ['section1', 'section2', 'section3','section4', 'footer'],
		menu: '#menu',
		scrollingSpeed: 800
	});
});