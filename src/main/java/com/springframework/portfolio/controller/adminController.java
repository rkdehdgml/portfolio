package com.springframework.portfolio.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springframework.portfolio.common.CommandLogger;
import com.springframework.portfolio.common.CommandMap;
import com.springframework.portfolio.common.CommandService;
import com.springframework.portfolio.utils.CommandUtil;

@Controller
public class adminController {

	Logger logger = LoggerFactory.getLogger(adminController.class);

	@Autowired
	private CommandService commandService;

	@RequestMapping(value = "/admin.do")
	public String admin(HttpServletRequest request, HttpServletResponse response, CommandMap commonMap) {
//		HttpSession session = request.getSession();
//		if (session == null || session.getAttribute("adminInfo") == null) {
//			return CommandUtil.alertUrlException(response, "로그인 정보가 없습니다.", "/admin/login.do");
//		} else {
			return "/admin/admin";
//		}
	}

	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/admin/login.do")
	public String adminLogin(HttpServletRequest request, HttpServletResponse response, CommandMap commonMap) {
		try {
			String mberPw = commonMap.get("mberPw").toString();
			if (!mberPw.equals("")) {
				Map<String, Object> adminInfo = commandService.selectMap("mb_mber.selectMberInfo", commonMap.getMap());
				if (adminInfo.get("mberPw").equals(mberPw)) {
					// 세션에 저장
					HttpSession session = request.getSession();
					session.setAttribute("adminInfo", adminInfo);
					return CommandUtil.alertUrlException(response, "로그인 되었습니다.", "/admin.do");
				}
			} else {
				return CommandUtil.alertReloadException(response, "아이디 비밀번호를 확인해주세요.");
			}
		} catch (Exception e) {
			CommandLogger.debug(e, this.getClass(), "adminLogin");
		}
		return "/admin/login";
	}
}
