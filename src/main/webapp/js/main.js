// GSAP & ScrollTrigger를 활용한 애니메이션 설정
gsap.registerPlugin(ScrollTrigger);

// 첫 번째 섹션 애니메이션
gsap.from(".sec1 .span1", {
	y: 100,
	opacity: 0,
	duration: 1.5,
	ease: "power3.out"
});

// 두 번째 섹션 애니메이션
gsap.from(".sec2 .motion", {
	scrollTrigger: {
		trigger: ".section", // 수정: .section에서 .sec2로 변경
		start: "top top",
		toggleActions: "play none none reverse"
	},
	y: 100,
	opacity: 0,
	duration: 3,
	ease: "power3.out"
});

// 세 번째 섹션 애니메이션
gsap.from(".sec3 .motion", {
	scrollTrigger: {
		trigger: ".sec3",
		start: "top center",
		toggleActions: "play none none reverse"
	},
	y: 100,
	opacity: 0,
	duration: 3,
	ease: "power3.out"
});

// 네 번째 섹션 애니메이션
gsap.from(".sec4 .motion", {
	scrollTrigger: {
		trigger: ".sec4",
		start: "top center",
		toggleActions: "play none none reverse"
	},
	y: 100,
	opacity: 0,
	duration: 1.5,
	ease: "power3.out"
});

// 다섯 번째 섹션 애니메이션
gsap.from(".sec5 .motion", {
	scrollTrigger: {
		trigger: ".sec5",
		start: "top center",
		toggleActions: "play none none reverse"
	},
	y: 100,
	opacity: 0,
	duration: 1.5,
	ease: "power3.out"
});

// 각 섹션의 위치에 따라 헤더의 표시/숨기기 설정
window.addEventListener('scroll', function() {
	const header = document.querySelector('.header'); // 헤더 선택
	const secondSection = document.querySelector('.sec2'); // 두 번째 섹션 선택
	const scrollPosition = window.scrollY; // 현재 스크롤 위치

	// 두 번째 섹션의 시작 위치
	const secondSectionStart = secondSection.offsetTop;

	// 트리거 시점 설정 (두 번째 섹션이 시작되기 전에 헤더를 나타나게 설정)
	const triggerPosition = secondSectionStart - window.innerHeight * 0.4; // 70% 뷰포트 높이 만큼 앞당김

	// 헤더 표시/숨기기 로직
	if (scrollPosition > triggerPosition) {
		header.classList.add('visible'); // 헤더 보이기
	} else {
		header.classList.remove('visible'); // 헤더 숨기기
	}
});
