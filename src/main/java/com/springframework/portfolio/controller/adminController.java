package com.springframework.portfolio.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springframework.portfolio.common.CommandMap;

@Controller
public class adminController {
	
	@RequestMapping(value = "/admin.do")
	public String admin(HttpServletRequest request, HttpServletResponse response, CommandMap commonMap) {

		return "admin";
	}

}
