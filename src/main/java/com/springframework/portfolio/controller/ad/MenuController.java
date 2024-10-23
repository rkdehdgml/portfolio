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
		model.addAttribute("content", "/admin/menu/adminMenuList.jsp");
		return CommandUtil.getAdminLayout();
	}
	
	@RequestMapping(value="/admin/userMenuList.do")
	public String userMenuListPage(HttpServletRequest request, HttpServletResponse response, CommandMap commonMap, Model model) {
		model.addAttribute("content", "/admin/menu/userMenuList.jsp");
		return CommandUtil.getAdminLayout();
	}
	
	@RequestMapping(value="/admin/adminMenuInsertPage.do")
	public String adminMenuInsertPage(HttpServletRequest request, HttpServletResponse response, CommandMap commonMap, Model model) {
		model.addAttribute("content", "/admin/menu/adminMenuInsert.jsp");
		return CommandUtil.getAdminLayout();
	}
	@RequestMapping(value="/admin/userMenuInsertPage.do")
	public String userMenuInsertPage(HttpServletRequest request, HttpServletResponse response, CommandMap commonMap, Model model) {
		model.addAttribute("content", "/admin/menu/userMenuInsert.jsp");
		return CommandUtil.getAdminLayout();
	}
}
