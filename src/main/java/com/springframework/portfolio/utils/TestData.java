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
	public static List<Map<String, Object>> menuList () {
		
		//리스트 생성
		List<Map<String, Object>> list = new ArrayList<>();
		//리스트에 담을 맵
		Map<String, Object> map1 = new HashMap<>();
		map1.put("mberSeq", 1);
		map1.put("menuId", "MN1");
		map1.put("menuNm", "회원관리");
		map1.put("menuLev", "#");
		map1.put("menuType", "A");
		map1.put("menuUrl", "/admin/mberList.do");
		map1.put("menuYn", "Y");
		map1.put("subMenuYn", "Y");
		map1.put("subMenuType", "SUB");
		list.add(map1);
		//리스트에 담을 맵
		Map<String, Object> map2 = new HashMap<>();
		map2.put("mberSeq", 2);
		map2.put("menuId", "MN2");
		map2.put("menuNm", "회원정보");
		map2.put("menuLev", "1");
		map2.put("menuType", "A");
		map2.put("menuUrl", "/admin/mberList.do");
		map2.put("menuYn", "Y");
		map2.put("subMenuYn", "N");
		map2.put("subMenuType", "");
		list.add(map2);
		//리스트에 담을 맵
		Map<String, Object> map3 = new HashMap<>();
		map3.put("mberSeq", 3);
		map3.put("menuId", "MN3");
		map3.put("menuNm", "세번째 메뉴");
		map3.put("menuLev", "2");
		map3.put("menuType", "A");
		map3.put("menuUrl", "/admin/mberList.do");
		map3.put("menuYn", "Y");
		map3.put("subMenuYn", "N");
		map3.put("subMenuType", "");
		list.add(map3);
		
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
