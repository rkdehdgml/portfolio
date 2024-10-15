//fullpage.js
$(function() {
	$('#fullpage').fullpage({
		anchors: ['page1', 'page2', 'page3', 'page4', 'page5', 'footer'],
		menu: '#fullmenu',
		verticalCentered: false,
		css3: false,
		autoScrolling: true,
		afterLoad: function(anchorLink, index) {
			if (index == 2) { // 두 번째 세션에 도달할 때
				// 이전에 초기화된 타이핑 인스턴스를 모두 제거하고 새로 시작
				$('#typed-about').html(''); // 기존 텍스트를 초기화
				new TypeIt("#typed-about", {
					strings: [
						"이름 : 홍길동",
						"주소 : 서울특별시 서구 둔산동",
						"전화번호 : 010-0000-0000",
						"이메일 : example@example.com"
					],
					speed: 50,
					loop: false
				}).go();
			} else if (index == 3) {
				$('#typed-frontEnd').html(''); // 기존 텍스트를 초기화
				new TypeIt("#typed-frontEnd", {
					strings: [
						"JavaScript",
						"HTML & CSS"
					],
					speed: 50,
					loop: false
				}).go();
				$('#typed-backEnd').html(''); // 기존 텍스트를 초기화
				new TypeIt("#typed-backEnd", {
					strings: [
						"Java",
						"Spring"
					],
					speed: 50,
					loop: false
				}).go();
				$('#typed-other').html(''); // 기존 텍스트를 초기화
				new TypeIt("#typed-other", {
					strings: [
						"Mysql",
						"Linux"
					],
					speed: 50,
					loop: false
				}).go();
			}
		}
	});
});


// 첫번째 페이지 
document.addEventListener('DOMContentLoaded', function() {
	const commands = [
		"ssh kdh.portfolio.com", // 변형 필요
		"                안녕하세요.",           // 변형 필요
		"                풀스텍 개발자 강동희입니다.", // 변형 필요
		"                스크롤 해주세요."        // 변형 필요
	];

	// 공백을 &nbsp;로 대체
	const formattedCommands = commands.map(command => command.replace(/ /g, '&nbsp;'));

	const options = {
		strings: [formattedCommands[0]], // 처음에 welcome 메시지만 표시
		typeSpeed: 50, // 입력 속도
		backSpeed: 0, // 지우는 속도 (0으로 설정하여 지우지 않음)
		smartBackspace: false,
		loop: false, // 반복 여부
		cursorChar: '|', // 커서 모양
		showCursor: true, // 커서 표시
		onComplete: () => {
			// 첫 번째 메시지 출력 후 나머지 문자열들을 한 번에 출력
			setTimeout(() => {
				output.innerHTML += `<br>${formattedCommands.slice(1).join('<br>')}`; // 남은 메시지 출력
			}, 1300); // 1초 후에 출력
		}
	};

	const output = document.getElementById("typed-output");
	var typed = new Typed(output, options);
});







