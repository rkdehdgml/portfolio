$(document).ready(function() {
	$('#fullpage').fullpage({
		menu: '#fullmenu',
		anchors: ['page1', 'page2', 'page3', 'page4', 'page5'],
		verticalCentered: false,
		keyboardScrolling: true,
		css3: false,
		autoScrolling: true,
		//        afterLoad: function(origin, destination, direction) {
		//            const header = document.getElementById('mainHeader');
		//
		//            if (origin === 'page1') {
		//                header.style.display = 'none'; // 첫 번째 섹션에서 헤더 숨김
		//            } else {
		//                header.style.display = ''; // 나머지 섹션에서 헤더 표시
		//            }
		//        }
	});
});
