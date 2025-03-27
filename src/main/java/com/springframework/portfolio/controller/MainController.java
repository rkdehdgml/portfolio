package com.springframework.portfolio.controller;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springframework.portfolio.common.CommandMap;

@Controller
public class MainController {

	@RequestMapping(value = "/mainPage")
	public String main(HttpServletRequest request, HttpServletResponse response, CommandMap commonMap, Model model) {
		return "/user/main";
	}
}
