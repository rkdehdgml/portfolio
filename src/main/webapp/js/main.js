// GSAP & ScrollTrigger를 활용한 애니메이션 설정
gsap.registerPlugin(ScrollTrigger);

// 첫 번째 섹션 애니메이션
gsap.from(".sec1 .span1", {
	y: 100,
	opacity: 0,
	duration: 1.5,
	ease: "power3.out",
});

// 두 번째 섹션 애니메이션
gsap.to(".sec2 .motion", {
	scrollTrigger: {
		trigger: ".sec2",
		tart: "top bottom",  // 아래에서 올라오기 시작
		end: "bottom top",     // 위에서 내려가기 시작
		toggleActions: "play none none reverse",
		scrub: true
	},
	y: 100,
	opacity: 0,
	duration: 1.5,
	ease: "power3.out",
	// 좌우 이동 애니메이션 추가
	x: -50, // 왼쪽에서 나타나기
});

// 세 번째 섹션 애니메이션
gsap.from(".sec3 .motion", {
	scrollTrigger: {
		trigger: ".sec3",
		start: "top center",
		toggleActions: "play none none reverse",
	},
	y: 100,
	opacity: 0,
	duration: 1.5,
	ease: "power3.out",
	// 회전 애니메이션 추가
	rotation: 360, // 회전
});

// 네 번째 섹션 애니메이션
gsap.from(".sec4 .motion", {
	scrollTrigger: {
		trigger: ".sec4",
		start: "top center",
		toggleActions: "play none none reverse",
	},
	y: 100,
	opacity: 0,
	duration: 1.5,
	ease: "power3.out",
	// 크기 조절 애니메이션 추가
	scale: 0.5, // 작게 시작
});

// 다섯 번째 섹션 애니메이션
gsap.from(".sec5 .motion", {
	scrollTrigger: {
		trigger: ".sec5",
		start: "top center",
		toggleActions: "play none none reverse",
	},
	y: 100,
	opacity: 0,
	duration: 1.5,
	ease: "power3.out",
	// 색상 변화 애니메이션 추가 (CSS 변환 필요)
	onStart: () => {
		gsap.to(".sec5 .motion", {
			backgroundColor: "#ff0000", // 시작 색상
			duration: 1,
		});
	},
});
