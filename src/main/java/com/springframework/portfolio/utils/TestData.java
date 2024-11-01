package com.springframework.portfolio.utils;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Component;

@Component
public class TestData {
	
	/**
	 * 회원리스트
	 * @return
	 */
	public static List<Map<String, Object>> mberList () {
		
		//리스트 생성
		List<Map<String, Object>> list = new ArrayList<>();
		//리스트에 담을 맵
		Map<String, Object> map = new HashMap<>();
		map.put("MBER_SEQ", 1);
		map.put("MBER_ID", "admin");
		map.put("MBER_PW", "admin");
		map.put("MBER_NM", "관리자");
		list.add(map);
		return list;
	}
	
	/**
	 * 메뉴 리스트
	 * @return
	 */
	public static List<Map<String, Object>> menuList() {
	    List<Map<String, Object>> list = new ArrayList<>();

	    // 첫 번째 메뉴 (서브 메뉴가 있는 경우)
	    Map<String, Object> map1 = new HashMap<>();
	    map1.put("mberSeq", 1);
	    map1.put("menuId", "MN1");
	    map1.put("menuNm", "회원관리");
	    map1.put("menuLev", "#");
	    map1.put("menuType", "A");
	    map1.put("menuUrl", "/admin/mberList.do");
	    map1.put("menuYn", "Y");
	    map1.put("parMenuNm", "#");
	    list.add(map1);

	    // 두 번째 메뉴 (서브 메뉴 없음)
	    Map<String, Object> map2 = new HashMap<>();
	    map2.put("mberSeq", 2);
	    map2.put("menuId", "MN2");
	    map2.put("menuNm", "회원정보");
	    map2.put("menuLev", "1");
	    map2.put("menuType", "A");
	    map2.put("menuUrl", "/admin/mberInfo.do");
	    map2.put("menuYn", "Y");
	    map2.put("parMenuNm", "MN1");
	    list.add(map2);

	    // 서브 메뉴 추가
	    Map<String, Object> map3 = new HashMap<>();
	    map3.put("mberSeq", 3);
	    map3.put("menuId", "MN3");
	    map3.put("menuNm", "회원리스트");
	    map3.put("menuLev", "2");
	    map3.put("menuType", "A");
	    map3.put("menuUrl", "/admin/memberList.do");
	    map3.put("menuYn", "Y");
	    map3.put("parMenuNm", "MN2");
	    list.add(map3);

	    // 마지막 메뉴 (서브 메뉴 없음)
	    Map<String, Object> map4 = new HashMap<>();
	    map4.put("mberSeq", 4);
	    map4.put("menuId", "MN4");
	    map4.put("menuNm", "회원등록");
	    map4.put("menuLev", "2");
	    map4.put("menuType", "A");
	    map4.put("menuUrl", "/admin/thirdMenu.do");
	    map4.put("menuYn", "Y");
	    map4.put("parMenuNm", "MN2");
	    list.add(map4);
	    
	    //사용자페이지 메뉴 리스트
	    // 첫 번째 메뉴 (서브 메뉴가 있는 경우)
	    Map<String, Object> map5 = new HashMap<>();
	    map5.put("mberSeq", 1);
	    map5.put("menuId", "MN5");
	    map5.put("menuNm", "자기소개");
	    map5.put("menuLev", "#");
	    map5.put("menuType", "U");
	    map5.put("menuUrl", "/admin/mberList.do");
	    map5.put("menuYn", "Y");
	    map5.put("parMenuNm", "#");
	    list.add(map5);
	    
	    // 두 번째 메뉴 (서브 메뉴 없음)
	    Map<String, Object> map6 = new HashMap<>();
	    map6.put("mberSeq", 2);
	    map6.put("menuId", "MN6");
	    map6.put("menuNm", "소개글");
	    map6.put("menuLev", "1");
	    map6.put("menuType", "U");
	    map6.put("menuUrl", "/admin/mberInfo.do");
	    map6.put("menuYn", "Y");
	    map6.put("parMenuNm", "MN5");
	    list.add(map6);
	    
	    // 서브 메뉴 추가
	    Map<String, Object> map7 = new HashMap<>();
	    map7.put("mberSeq", 3);
	    map7.put("menuId", "MN7");
	    map7.put("menuNm", "회원리스트");
	    map7.put("menuLev", "2");
	    map7.put("menuType", "U");
	    map7.put("menuUrl", "/admin/memberList.do");
	    map7.put("menuYn", "Y");
	    map7.put("parMenuNm", "MN5");
	    list.add(map7);
	    
	    // 마지막 메뉴 (서브 메뉴 없음)
	    Map<String, Object> map8 = new HashMap<>();
	    map8.put("mberSeq", 4);
	    map8.put("menuId", "MN8");
	    map8.put("menuNm", "회원등록");
	    map8.put("menuLev", "2");
	    map8.put("menuType", "U");
	    map8.put("menuUrl", "/admin/thirdMenu.do");
	    map8.put("menuYn", "Y");
	    map8.put("parMenuNm", "MN5");
	    list.add(map8);

	    return list;
	}
	
	/**
	 * 게시판리스트
	 * @return
	 */
	public static List<Map<String, Object>> boardList () {
		
		//리스트 생성
		List<Map<String, Object>> list = new ArrayList<>();
		//리스트에 담을 맵
		Map<String, Object> map = new HashMap<>();
		map.put("BOARD_SEQ", 1);
		map.put("MENU_SEQ", 1);
		map.put("BOARD_ID", "BD1");
		map.put("BOARD_NM", "자기소개");
		list.add(map);
		return list;
	}
	
	/**
	 * 게시물리스트
	 * @return
	 */
	public static List<Map<String, Object>> postList () {
		
		//리스트 생성
		List<Map<String, Object>> list = new ArrayList<>();
		//리스트에 담을 맵
		Map<String, Object> map = new HashMap<>();
		map.put("POST_SEQ", 1);
		map.put("BOARD_SEQ", 1);
		map.put("MBER_SEQ", 1);
		map.put("MENU_SEQ", 1);
		map.put("POST_ID", "PT1");
		map.put("POST_TITLE", "자기소개");
		map.put("POST_CNT", "안녕하세요");
		map.put("POST_CR_DT", "");
		map.put("POST_UP_DT", "");
		map.put("IMG_PATH", "");
		list.add(map);
		return list;
	}

}
