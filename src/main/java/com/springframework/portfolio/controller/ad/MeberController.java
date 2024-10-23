package com.springframework.portfolio.controller.ad;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
public class MeberController {
	
	Logger logger = LoggerFactory.getLogger(adminController.class);

	@Autowired
	private CommandService commandService;
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value="/admin/mberList.do")
	public String menuList(HttpServletRequest request, HttpServletResponse response, CommandMap commonMap, Model model) {
		try {
			String abc = "";
			//회원정보 리스트 조회
			List<Map<String, Object>> mberList = commandService.selectList("mb_mber.selectMberAllList", null);
			model.addAttribute("mberList", mberList);
			model.addAttribute("content", "/admin/member/mberList.jsp");
		} catch (Exception e) {
			CommandLogger.debug(e, this.getClass(), "mberList");
		}
		return CommandUtil.getAdminLayout();
	}
	
	/**
	 * 회원 등록페이지
	 * @param request
	 * @param response
	 * @param commonMap
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/admin/mberInsertPage.do")
	public String mberInsertPage (HttpServletRequest request, HttpServletResponse response, CommandMap commonMap, Model model) {
		model.addAttribute("content", "/admin/member/mberInsert.jsp");
		return CommandUtil.getAdminLayout();
	}
	
	/**
	 * 회원등록
	 * @param request
	 * @param response
	 * @param commonMap
	 */
	@RequestMapping(value="/admin/mberInsert.do")
	public void mberinsert(HttpServletRequest request, HttpServletResponse response, CommandMap commonMap) {
		try {
			Map<String, Object> resultMap = new HashMap<>();
			int insert = 0;
			insert += commandService.insert("mb_mber.insertMberInfo", commonMap.getMap());
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
				CommandLogger.debug(e, this.getClass(), "loginCheck");
			} finally {
				if (out != null) {
					out.flush();
					out.close();
				}
			}
		} catch (Exception e) {
			CommandLogger.debug(e, this.getClass(), "loginCheck");
		}
	}
	
	/**
	 * 회원 수정페이지
	 * @param request
	 * @param response
	 * @param commonMap
	 * @param model
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value="/admin/mberUpdatePage.do")
	public String mberUpdatePage (HttpServletRequest request, HttpServletResponse response, CommandMap commonMap, Model model) {
		try {
			Map<String, Object> mberInfo = commandService.selectMap("mb_mber.selectMberUpdateInfo", commonMap.getMap());
			model.addAttribute("mberInfo", mberInfo);
		} catch (Exception e) {
			CommandLogger.debug(e, this.getClass(), "mberUpdatePage");
		}
		model.addAttribute("commonMap", commonMap.getMap());
		model.addAttribute("content", "/admin/member/mberUpdate.jsp");
		return CommandUtil.getAdminLayout();
	}
	
	/**
	 * 회원정보 수정
	 * @param request
	 * @param response
	 * @param commonMap
	 */
	@RequestMapping(value="/admin/mberUpdate.do")
	public void mberUpdate(HttpServletRequest request, HttpServletResponse response, CommandMap commonMap) {
		try {
			Map<String, Object> resultMap = new HashMap<>();
			int update = 0;
			update += commandService.update("mb_mber.updateMberInfo", commonMap.getMap());
			if(update > 0) {
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
				CommandLogger.debug(e, this.getClass(), "mberUpdate");
			} finally {
				if (out != null) {
					out.flush();
					out.close();
				}
			}
		} catch (Exception e) {
			CommandLogger.debug(e, this.getClass(), "mberUpdate");
		}
	}

}
