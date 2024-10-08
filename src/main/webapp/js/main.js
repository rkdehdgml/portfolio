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
			start : "top top", // 스크롤 시 화면 중앙에서 시작
			toggleActions : "play none none reverse" // 재생 및 반전 설정
		},
		y : 100,
		opacity : 0,
		duration : 3,
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
		duration : 3,
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

// 페이지가 스크롤될 때마다 헤더의 가시성을 조정
window.addEventListener('scroll', function() {
	const header = document.getElementById('mainHeader');
	const scrollPosition = window.scrollY;

	// 첫 번째 섹션의 높이(100vh)
	const firstSectionHeight = window.innerHeight; // 첫 번째 섹션 높이를 100vh로 가정

	// 첫 번째 섹션의 끝나는 위치: 첫 번째 섹션 높이
	const triggerPosition = firstSectionHeight; // 첫 번째 섹션의 끝나는 위치

	// 첫 번째 섹션의 끝나는 위치 이후로 헤더를 보이도록 설정
	if (scrollPosition > triggerPosition) {
		header.style.transition = 'transform 1s ease, opacity 1s ease'; // 전환 시간 늘리기
		header.style.transform = 'translateY(0)'; // 헤더 보이기
		header.style.opacity = '1';
	} else {
		header.style.transition = 'transform 0.5s ease, opacity 0.5s ease'; // 전환 시간
		header.style.transform = 'translateY(-100%)'; // 헤더 숨기기
		header.style.opacity = '0';
	}
});

