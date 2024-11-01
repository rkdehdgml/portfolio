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

import com.springframework.portfolio.common.CommandMap;
import com.springframework.portfolio.common.CommandService;
import com.springframework.portfolio.utils.CommandUtil;
import com.springframework.portfolio.utils.TestData;

@Controller
public class BoardController {
	
	Logger logger = LoggerFactory.getLogger(BoardController.class);

	@Autowired
	private CommandService commandService;
	
	/**
	 * 게시판 리스트
	 * @param request
	 * @param response
	 * @param commonMap
	 * @param model
	 * @return
	 */
	@RequestMapping(value= "/admin/boardListPage.do")
	public String boardListPage(HttpServletRequest request, HttpServletResponse response, CommandMap commonMap, Model model) {
		List<Map<String, Object>> boardList = TestData.boardList();
		
		model.addAttribute("boardList", boardList);
		model.addAttribute("content", "/admin/board/boardList.jsp");
		return CommandUtil.getAdminLayout();
	}
	
	/**
	 * 게시판 등록페이지
	 * @param request
	 * @param response
	 * @param commonMap
	 * @param model
	 * @return
	 */
	@RequestMapping(value= "/admin/boardInsertPage.do")
	public String boardInsertPage(HttpServletRequest request, HttpServletResponse response, CommandMap commonMap, Model model) {
		model.addAttribute("content", "/admin/board/boardInsert.jsp");
		return CommandUtil.getAdminLayout();
	}

}
