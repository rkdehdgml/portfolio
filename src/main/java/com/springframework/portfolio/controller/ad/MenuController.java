package com.springframework.portfolio.controller.ad;

import java.io.IOException;
import java.io.PrintWriter;
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

@Controller
public class MenuController {

	Logger logger = LoggerFactory.getLogger(adminController.class);

	@Autowired
	private CommandService commandService;
	
	/**
	 * 관리자페이지 메뉴리스트
	 * @param request
	 * @param response
	 * @param commonMap
	 * @param model
	 * @return
	 */
	@RequestMapping(value= "/admin/adminMenuList.do")
	public String adminMenuListPage(HttpServletRequest request, HttpServletResponse response, CommandMap commonMap, Model model) {
//		List<Map<String, Object>> adminMenuList = commandService.selectList("", null);
		model.addAttribute("adminMenuList","adminMenuList");
		model.addAttribute("content", "/admin/menu/adminMenuList.jsp");
		return CommandUtil.getAdminLayout();
	}
	
	/**
	 * 관리자페이지 메뉴등록페이지
	 * @param request
	 * @param response
	 * @param commonMap
	 * @return
	 */
	@RequestMapping(value="/admin/adminMenuInsertPage.do")
	public String adminMenuInsertPage(HttpServletRequest request, HttpServletResponse response, CommandMap commonMap) {
		return "/admin/menu/adminMenuInsert";
	}
	
	/**
	 * 관리페이지 메뉴등록
	 * @param request
	 * @param response
	 * @param commonMap
	 */
	@RequestMapping(value="/admin/adminMenuInsert.do")
	public void adminMenuInsert(HttpServletRequest request, HttpServletResponse response, CommandMap commonMap) {
		try {
			Map<String, Object> resultMap = new HashMap<>();
			int insert = 0;
			insert += commandService.insert("mn_menu.insertMberInfo", commonMap.getMap());
			if(insert > 0) {
				resultMap.put("result","Y");
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
	 * 관리페이지 수정등록
	 * @param request
	 * @param response
	 * @param commonMap
	 */
	@RequestMapping(value="/admin/adminMenuUpdate.do")
	public void adminMenuUpdate(HttpServletRequest request, HttpServletResponse response, CommandMap commonMap) {
		try {
			Map<String, Object> resultMap = new HashMap<>();
			int insert = 0;
			insert += commandService.insert("mn_menu.insertMberInfo", commonMap.getMap());
			if(insert > 0) {
				resultMap.put("result","Y");
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
	 * @param request
	 * @param response
	 * @param commonMap
	 * @return
	 */
	@RequestMapping(value="/admin/adminMenuUpdatePage.do")
	public String adminMenuUpdatePage(HttpServletRequest request, HttpServletResponse response, CommandMap commonMap) {
		return "/admin/menu/adminMenuUpdate";
	}
	
	/**
	 * 사용자페이지 메뉴리스트
	 * @param request
	 * @param response
	 * @param commonMap
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/admin/userMenuList.do")
	public String userMenuListPage(HttpServletRequest request, HttpServletResponse response, CommandMap commonMap, Model model) {
		model.addAttribute("content", "/admin/menu/userMenuList.jsp");
		return CommandUtil.getAdminLayout();
	}
	
	/**
	 * 사용자페이지 등록페이지
	 * @param request
	 * @param response
	 * @param commonMap
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/admin/userMenuInsertPage.do")
	public String userMenuInsertPage(HttpServletRequest request, HttpServletResponse response, CommandMap commonMap, Model model) {
		model.addAttribute("content", "/admin/menu/userMenuInsert.jsp");
		return CommandUtil.getAdminLayout();
	}
}
