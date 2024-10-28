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
		Map<String, Object> map = new HashMap<>();
		map.put("MBER_SEQ", 1);
		map.put("MENU_ID", "MN1");
		map.put("MENU_NM", "회원관리");
		map.put("MENU_LEV", "1");
		map.put("MENU_TYPE", "A");
		map.put("MENU_URL", "/admin/mberList.do");
		map.put("MENU_YN", "Y");
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
		return list;
	}

}
