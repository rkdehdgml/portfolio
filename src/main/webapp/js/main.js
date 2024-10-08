//$(document).ready(function() {
//	$('#fullpage').fullpage({
//		menu: '#fullmenu',
//		anchors: ['page1', 'page2', 'page3', 'page4', 'page5', 'footer'],
//		verticalCentered: false,
//		keyboardScrolling: true,
//		css3: true,
//		lazyLoading: true,
//		autoScrolling: true,
//		scrollOverflow: true,
//		scrollOverflowReset: true,
//		afterLoad: function(origin, destination, direction) {
//			const header = document.getElementById('mainHeader');
//
//			// 현재 페이지를 확인
//			if (origin === 'page1') { // origin.anchor로 수정
//				header.style.transform = 'translateX(-100%)'; // 첫 번째 섹션에서 헤더 숨김
//			}
//			else {
//				header.style.transform = 'translateX(0)'; // 나머지 섹션에서 헤더 표시
//			}
//		}
//	});
//});

		// GSAP & ScrollTrigger를 활용한 애니메이션 설정
		gsap.registerPlugin(ScrollTrigger);

		// 첫 번째 섹션 애니메이션
		gsap.from(".sec1 .span1", {
			y : 100,
			opacity : 0,
			duration : 1.5,
			ease : "power3.out"
		});

		// 두 번째 섹션 애니메이션
		gsap.from(".sec2 .motion", {
			scrollTrigger : {
				trigger : ".sec2",
				start : "top center", // 스크롤 시 화면 중앙에서 시작
				toggleActions : "play none none reverse" // 재생 및 반전 설정
			},
			y : 100,
			opacity : 0,
			duration : 1.5,
			ease : "power3.out"
		});

		// 세 번째 섹션 애니메이션
		gsap.from(".sec3 .motion", {
			scrollTrigger : {
				trigger : ".sec3",
				start : "top center",
				toggleActions : "play none none reverse"
			},
			y : 100,
			opacity : 0,
			duration : 1.5,
			ease : "power3.out"
		});

		// 네 번째 섹션 애니메이션
		gsap.from(".sec4 .motion", {
			scrollTrigger : {
				trigger : ".sec4",
				start : "top center",
				toggleActions : "play none none reverse"
			},
			y : 100,
			opacity : 0,
			duration : 1.5,
			ease : "power3.out"
		});

		// 다섯 번째 섹션 애니메이션
		gsap.from(".sec5 .motion", {
			scrollTrigger : {
				trigger : ".sec5",
				start : "top center",
				toggleActions : "play none none reverse"
			},
			y : 100,
			opacity : 0,
			duration : 1.5,
			ease : "power3.out"
		});