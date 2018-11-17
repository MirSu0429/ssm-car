package com.ssm.controller;

import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssm.entity.Admin;
import com.ssm.sevice.AdminService;
import com.ssm.util.MD5Util;

@Controller
public class AdminController {
	@Resource
	private AdminService adminService;
	/**
	 * 登录
	 */
	@RequestMapping("/loginAdmin.html")
	public String loginAdmin(){
		return "main/mainPage" ;
	}
	@ResponseBody
	@RequestMapping("/loginAdmin.do")
	public boolean loginAdmin1(String admin_user,String admin_password,HttpSession httpSession,HttpServletRequest req){
		Admin admin = adminService.loginAdmin(admin_user, MD5Util.toMD5(admin_password));
		if(admin!=null){
			String sessionId = req.getRequestedSessionId();
			int adminId = admin.getId();
			ServletContext servletContext = httpSession.getServletContext();
			servletContext.setAttribute(adminId+"", sessionId);
			httpSession.setAttribute("loginAdmin", admin);
			httpSession.setAttribute("date", new Date());
			return true ;
		}
		return false;
	}
	/**
	 * 打开修改密码页面
	 */
	@RequestMapping("/showUpdateAdmin.html")
	public String showUpdateAdmin(){
		return "admin/admin_updatePassword" ;
	}
	/**
	 * 修改密码
	 */
	@RequestMapping("/updateAdmin.html")
	public String updateAdmin(Integer id,String admin_repassword1){
		adminService.updateAdmin(id, MD5Util.toMD5(admin_repassword1));
		return "redirect:/login.html";
	}
	/**
	 * 判断密码是否一致
	 */
	@ResponseBody
	@RequestMapping("/checkPassword.do")
	public Admin checkPassword(Integer id,String admin_password){
		Admin admin= adminService.checkPassword(id, MD5Util.toMD5(admin_password));
//		System.out.println(admin.getId());
//		System.out.println(admin.getAdmin_password());
			return admin;
	}
	/**
	 * 登出
	 */
	@RequestMapping("/logoutAdmin.html")
	public  String logoutAdmin(HttpSession httpSession){
		httpSession.removeAttribute("loginAdmin");
		httpSession.invalidate();
		return "redirect:/login.html";
	}
	
}
