package com.springframework.portfolio.controller.ad;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springframework.portfolio.common.CommandMap;
import com.springframework.portfolio.common.CommandService;
import com.springframework.portfolio.utils.CommandUtil;

@Controller
public class MenuController {

	Logger logger = LoggerFactory.getLogger(adminController.class);

	@Autowired
	private CommandService commandService;
	
	@RequestMapping(value= "/admin/adminMenuList.do")
	public String adminMenuListPage(HttpServletRequest request, HttpServletResponse response, CommandMap commonMap, Model model) {
		model.addAttribute("content", "/admin/member/mberInsert.jsp");
		return CommandUtil.getAdminLayout();
	}
}
