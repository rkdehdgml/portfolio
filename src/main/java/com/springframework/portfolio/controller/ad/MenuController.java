package com.springframework.portfolio.controller.ad;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;
import com.springframework.portfolio.common.CommandLogger;
import com.springframework.portfolio.common.CommandMap;
import com.springframework.portfolio.common.CommandService;
import com.springframework.portfolio.utils.CommandUtil;
import com.springframework.portfolio.utils.TestData;

@Controller
public class MenuController {

	Logger logger = LoggerFactory.getLogger(adminController.class);

	@Autowired
	private CommandService commandService;

	/**
	 * 관리자페이지 메뉴리스트
	 * 
	 * @param request
	 * @param response
	 * @param commonMap
	 * @param model
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/admin/adminMenuList.do")
	public String adminMenuListPage(HttpServletRequest request, HttpServletResponse response, CommandMap commonMap,
			Model model) {
		// 테스트용 메뉴 리스트
		List<Map<String, Object>> adminMenuList = TestData.menuList();

		// 2차 및 3차 메뉴를 담을 리스트
		List<Map<String, Object>> secMenuList = new ArrayList<>();
		List<Map<String, Object>> tirdMenuList = new ArrayList<>();

		// 1차 메뉴를 순회하면서 하위 메뉴를 계층 구조로 설정
		for (Map<String, Object> menuMap : adminMenuList) {
			String menuLev = menuMap.get("menuLev").toString();

			if (menuLev.equals("2")) { // 2차 메뉴일 경우
				secMenuList.add(menuMap);
			} else if (menuLev.equals("3")) { // 3차 메뉴일 경우
				tirdMenuList.add(menuMap);
			}
		}

		// 최종 메뉴 구조 설정
		model.addAttribute("adminMenuList", adminMenuList);
		model.addAttribute("secMenuList", secMenuList);
		model.addAttribute("tirdMenuList", tirdMenuList);
		model.addAttribute("content", "/admin/menu/adminMenuList.jsp");

		return CommandUtil.getAdminLayout();
	}

	/**
	 * 관리자페이지 메뉴등록페이지
	 * 
	 * @param request
	 * @param response
	 * @param commonMap
	 * @return
	 */
	@RequestMapping(value = "/admin/menuInsertPage.do")
	public String adminMenuInsertPage(HttpServletRequest request, HttpServletResponse response, CommandMap commonMap) {
		return "/admin/menu/menuInsert";
	}

	/**
	 * 관리페이지 메뉴등록
	 * 
	 * @param request
	 * @param response
	 * @param commonMap
	 */
	@RequestMapping(value = "/admin/adminMenuInsert.do")
	public void adminMenuInsert(HttpServletRequest request, HttpServletResponse response, CommandMap commonMap) {
		try {
			Map<String, Object> resultMap = new HashMap<>();
			int insert = 0;
			insert += commandService.insert("mn_menu.insertMberInfo", commonMap.getMap());
			if (insert > 0) {
				resultMap.put("result", "Y");
			} else {
				resultMap.put("result", "N");
			}
			Gson gson = new Gson();
			PrintWriter out = null;

			try {
				response.setCharacterEncoding("utf-8");
				String json = gson.toJson(resultMap);
				out = response.getWriter();
				out.print(json);
			} catch (IOException e) {
				CommandLogger.debug(e, this.getClass(), "adminMenuInsert");
			} finally {
				if (out != null) {
					out.flush();
					out.close();
				}
			}
		} catch (Exception e) {
			CommandLogger.debug(e, this.getClass(), "adminMenuInsert");
		}
	}

	/**
	 * 관리페이지 메뉴수정
	 * 
	 * @param request
	 * @param response
	 * @param commonMap
	 */
	@RequestMapping(value = "/admin/adminMenuUpdate.do")
	public void adminMenuUpdate(HttpServletRequest request, HttpServletResponse response, CommandMap commonMap) {
		try {
			Map<String, Object> resultMap = new HashMap<>();
			int insert = 0;
			insert += commandService.insert("mn_menu.insertMberInfo", commonMap.getMap());
			if (insert > 0) {
				resultMap.put("result", "Y");
			} else {
				resultMap.put("result", "N");
			}
			Gson gson = new Gson();
			PrintWriter out = null;

			try {
				response.setCharacterEncoding("utf-8");
				String json = gson.toJson(resultMap);
				out = response.getWriter();
				out.print(json);
			} catch (IOException e) {
				CommandLogger.debug(e, this.getClass(), "adminMenuUpdate");
			} finally {
				if (out != null) {
					out.flush();
					out.close();
				}
			}
		} catch (Exception e) {
			CommandLogger.debug(e, this.getClass(), "adminMenuUpdate");
		}
	}

	/**
	 * 관리자페이지 메뉴수정페이지
	 * 
	 * @param request
	 * @param response
	 * @param commonMap
	 * @return
	 */
	@RequestMapping(value = "/admin/menuUpdatePage.do")
	public String adminMenuUpdatePage(HttpServletRequest request, HttpServletResponse response, CommandMap commonMap) {
		return "/admin/menu/menuUpdate";
	}

	/**
	 * 사용자페이지 메뉴리스트
	 * 
	 * @param request
	 * @param response
	 * @param commonMap
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/admin/userMenuList.do")
	public String userMenuListPage(HttpServletRequest request, HttpServletResponse response, CommandMap commonMap,
			Model model) {
		model.addAttribute("content", "/admin/menu/userMenuList.jsp");
		return CommandUtil.getAdminLayout();
	}

}
