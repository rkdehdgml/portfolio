package com.springframework.portfolio.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;
import com.springframework.portfolio.common.CommandLogger;
import com.springframework.portfolio.common.CommandMap;
import com.springframework.portfolio.common.CommandService;
import com.springframework.portfolio.utils.CommandUtil;

@Controller
public class adminController {

	Logger logger = LoggerFactory.getLogger(adminController.class);

	@Autowired
	private CommandService commandService;

	/**
	 * 관리자페이지(뷰)
	 * @param request
	 * @param response
	 * @param commonMap
	 * @return
	 */
	@RequestMapping(value = "/admin.do")
	public String admin(HttpServletRequest request, HttpServletResponse response, CommandMap commonMap) {
//		HttpSession session = request.getSession();
//		if (session == null || session.getAttribute("adminInfo") == null) {
//			return CommandUtil.alertUrlException(response, "로그인 정보가 없습니다.", "/admin/login.do");
//		} else {
		return "/admin/admin";
//		}
	}

	/**
	 * 관리자 페이지 로그인 (뷰)
	 * @param request
	 * @param response
	 * @param commonMap
	 * @return
	 */
	@RequestMapping(value = "/admin/login.do")
	public String adminLogin(HttpServletRequest request, HttpServletResponse response, CommandMap commonMap) {
		return "/admin/login";
	}

	/**
	 * 관리자 페이지 로그인 체크
	 * @param request
	 * @param response
	 * @param commonMap
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/loginCheck.do")
	public void loginCheck(HttpServletRequest request, HttpServletResponse response, CommandMap commonMap) {
		try {
			Map<String, Object> resultMap = new HashMap<>();
			String mberPw = commonMap.get("mberPw").toString();
			if (!mberPw.equals("")) {
				Map<String, Object> adminInfo = commandService.selectMap("mb_mber.selectMberInfo", commonMap.getMap());
				if (adminInfo != null) {
					if (adminInfo.get("mberPw").equals(mberPw)) {
						// 세션에 저장
						HttpSession session = request.getSession();
						session.setAttribute("adminInfo", adminInfo);
						resultMap.put("result", "Y");
					} else {
						resultMap.put("result", "N");
					}
				} else {
					resultMap.put("result", "A");
				}
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
	
	@RequestMapping(value="/logout.do")
	public String logout (HttpServletRequest request, HttpServletResponse response, CommandMap commonMap) {
		HttpSession session = request.getSession(false);
		if(session != null) {
			session.invalidate();
		}
		return"/admin/login";
	}
}
