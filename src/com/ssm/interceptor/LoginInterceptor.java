package com.ssm.interceptor;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.ssm.entity.Admin;

public class LoginInterceptor implements HandlerInterceptor {

	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO 自动生成的方法存根
		
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		// TODO 自动生成的方法存根
		
	}

	@Override
	public boolean preHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2) throws Exception {
		HttpSession session = arg0.getSession();
		Object obj = session.getAttribute("loginAdmin");
		if(obj!=null){
			String sessionId = arg0.getRequestedSessionId();
			Admin admin = (Admin)obj;
			int adminId = admin.getId();
			ServletContext servletContext = session.getServletContext();
			String attribute = (String) servletContext.getAttribute(adminId+"");
			if(sessionId.equals(attribute)){
				return true;
			}else {
				arg0.setAttribute("msg", "该用户在另一个 地方已经登录,请您重新登录!");
				arg0.getRequestDispatcher("login.html").forward(arg0, arg1);
				//arg1.sendRedirect("login.html");
				return false;
			}
		}else{
			System.out.println(arg0.getServletPath());
			System.out.println("拦截了?");
			arg1.sendRedirect("login.html");
			return false;
		}
		
	}


}
