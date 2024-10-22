package com.springframework.portfolio.controller.ad;

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
			List<Map<String, Object>> mberList = commandService.selectList("mb_mber.selectMberAllList", commonMap.getMap());
			model.addAttribute("mberList", mberList);
			model.addAttribute("content", "/admin/member/mberList.jsp");
		} catch (Exception e) {
			CommandLogger.debug(e, this.getClass(), "menuList");
		}
		return CommandUtil.getAdminLayout();
	}

}
