package com.ssm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SysController {
	
	
	@RequestMapping("/login.html")
	public String login(){
		return "admin/admin_index";
	}
	@RequestMapping("/mainPage.html")
	public String mainPage(){
		return "main/mainPage";
	}
}
