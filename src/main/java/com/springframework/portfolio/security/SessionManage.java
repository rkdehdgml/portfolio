package com.springframework.portfolio.security;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class SessionManage {
	
	static Logger log = LoggerFactory.getLogger(SessionManage.class);
	
	/**
	 * 세션에 저장
	 * @param request
	 * @param sessionNm
	 * @param sessionValue
	 */
	public static void setSessionInfo(HttpServletRequest request, String sessionNm, Object sessionValue) {
		try {
			HttpSession session = request.getSession();
			session.setAttribute(sessionNm, sessionValue);
		} catch (Exception e) {
			log.debug("setSessionInfo");
		}
	}
	
	/**
	 * 세션에 정보 가져오기
	 * @param request
	 * @param sessionNm
	 * @return
	 */
	public static Object getSessionInfo(HttpServletRequest request, String sessionNm) {
		
		Object userInfo = null;
		try {
			HttpSession session = request.getSession();
			userInfo = (Map) session.getAttribute(sessionNm);
		} catch (Exception e) {
			log.debug("getSessionInfo");
		}
		
		return userInfo;
	}
	
}
