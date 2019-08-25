/*
package com.springboot.config;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;


public class MyInterceptor implements HandlerInterceptor {

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object arg2, ModelAndView arg3)
			throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object arg2) throws Exception {
		 HttpSession session = request.getSession();
	        //判断用户是否存在，不存在就跳转到登录界面
	        if(session.getAttribute("user") == null){
	        	request.setAttribute("msg", "请先登录");
	        	request.setAttribute("url", request.getContextPath()+"/loginUI");
//	        	System.out.println(request.getContextPath()+"*******");
	        	//response.sendRedirect("/jsp/time_div.jsp");
	        	request.getRequestDispatcher("/jsp/time_div.jsp").forward(request, response);
	            return false;
	        }else{
	            return true;
	        }
	}

}
*/
