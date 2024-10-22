package com.springframework.portfolio.controller;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springframework.portfolio.common.CommandMap;

@Controller
public class MainController {

	@RequestMapping(value = "/main.do")
	public String main(HttpServletRequest request, HttpServletResponse response, CommandMap commonMap, Model model) {
		return "/user/index";
	}

	// 3번 섹션의 동적 콘텐츠를 반환하는 메서드
	@RequestMapping(value = "/aboutMe.do")
	public String aboutMe(HttpServletRequest request, HttpServletResponse response, CommandMap commonMap) {
		return "aboutMe";
	}
}
