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

$(document).ready(function() {
    const introText = "안녕하세요. 개발자 홍길동 포트폴리오 입니다.";
    
    // TypeIt으로 인트로 텍스트 타이핑
    new TypeIt("#intro-text", {
        strings: introText,
        speed: 50, // 타이핑 속도 조정
        cursor: true, // 커서 표시
        afterComplete: function() {
            // 텍스트 타이핑 완료 후
            setTimeout(() => {
                $("#intro").addClass("hidden"); // 인트로 숨기기
                setTimeout(() => {
                    $("#main-writer").fadeIn(); // 첫 번째 섹션의 텍스트 보이기
                }, 1500); // 1초 후에 첫 번째 섹션 보이기
            }, 1000); // 1초 후에 인트로 숨기기
        }
    }).go();
});

