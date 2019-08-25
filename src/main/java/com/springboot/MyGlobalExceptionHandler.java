package com.springboot;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class MyGlobalExceptionHandler {
	
	@ExceptionHandler(value = Exception.class)
	public String defaultErrorHandler(HttpServletRequest request, Exception e) {
		e.printStackTrace();
		String msg="出错了。。。。";
		String url="/";
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
		return "errors";//返回"error"会有问题，但不知原因
	}
}
