/**
 * dialog 커스텀 마이징 javascript코드
 */
// 등록 버튼 클릭 시 모달 열기
$('.register-btn').click(function() {
	$.ajax({
		type: 'POST',
		url: '/admin/menuInsertPage.do',
		data: $('#menuListForm').serialize(),
		dataType: 'html',
		success: function(data) {
			$("#insertPopup").html(data);
			$("#insertPopup").dialog({
				modal: true,
				width: 900,
				height: 700,
				escapeClose: true,
				title: '메뉴등록',
				buttons: {
					"등록": function() {
						if ($("#menuNm").val() == "") {
							alert("메뉴명을 입력하세요.");
							$("#menuNm").focus();
						} else if ($("#menuUrl").val() == "") {
							alert("메뉴url를 입력하세요");
							$("#menuUrl").focus();
						} else {
							//등록
							$.ajax({
								type: "POST",
								url: "/admin/adminMenuInsert.do",
								data: $('#popInsertForm').serialize(),
								dataType: "json",
								success: function(data) {
									alert("등록 되었습니다.")
									$("#insertPopup").dialog("close");
								},
								error: function(data) {
									alert("오류가 발생했습니다.")
								}
							})
						}
					},
					"닫기": function() {
						$("#insertPopup").dialog("close");
					}
				},
				open: function() {// "등록" 버튼만 스타일 적용
					$(".ui-dialog-buttonpane button:contains('등록')").css(
						{
							"background-color": "#007bff",
							"color": "#fff"
						});
				}
			});
		},
		error: function(data) {
			alert("오류가 발생했습니다.");
		}
	});
});

// 수정 버튼 클릭 시 팝업 열기
function updatedialog(menuId) {
	$.ajax({
		type: 'POST',
		url: '/admin/menuUpdatePage.do',
		data: $('#menuListForm').serialize(),
		dataType: 'html',
		success: function(data) {
			console.log(data);
			$("#updatePopup").html(data);
			$("#updatePopup").dialog({
				modal: true,
				width: 900,
				height: 700,
				escapeClose: true,
				title: '메뉴수정',
				buttons: {
					"등록": function() {
					if ($("#menuNm").val() == "") {
						alert("메뉴명을 입력하세요.");
						$("#menuNm").focus();
					} else if ($("#menuUrl").val() == "") {
						alert("메뉴url를 입력하세요");
						$("#menuUrl").focus();
					} else {
					//등록
						$.ajax({
							type: "POST",
							url: "/admin/adminMenuUpdate.do",
							data: $(
								'#popUpdateForm')
								.serialize(),
							dataType: "json",
							success: function(
								data) {
								alert("수정 되었습니다.")
								$(
									"#updatePopup")
									.dialog(
										"close");
							},
							error: function(
								data) {
								alert("오류가 발생했습니다.")
							}
						})
					}
				},
				"닫기": function() {
					$("#updatePopup").dialog("close");
					}
				},
				open: function() {
				// "등록" 버튼만 스타일 적용
					$(".ui-dialog-buttonpane button:contains('등록')").css(
						{
							"background-color": "#007bff",
							"color": "#fff"
						});
					}
			});
		},
		error: function(data) {
			alert("오류가 발생했습니다.");
		}
	});
};