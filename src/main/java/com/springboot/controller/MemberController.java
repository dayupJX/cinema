package com.springboot.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.springboot.domain.Orders;
import com.springboot.domain.User;
import com.springboot.service.OrderService;
import com.springboot.service.UserService;

@Controller
public class MemberController {
	
	@Autowired
	OrderService orderService;
	
	@Autowired
	UserService userService;
	
	@RequestMapping("memberUI")
	public String memberUI() {
		return "member";
	}
	
	@RequestMapping("orderList")
	public String orderList(HttpServletRequest request, Model model) {
		User user = (User)request.getSession().getAttribute("user");
		List<Orders> list = orderService.getOrdersById(user.getUid());
		model.addAttribute("orderList", list);
		System.out.println(list);
		return "order_list";
	}
	
	@RequestMapping("updatePassword")
	@ResponseBody
	public String updatePassword(String prePassword, String newPassword,HttpServletRequest request) {
		User user = (User)request.getSession().getAttribute("user");
		if(user.getPassword().equals(prePassword)) {
			user.setPassword(newPassword);
			//CRUD失败交由全局异常处理
			userService.updateUser(user);
				return "密码修改成功";
		} else {
			return "旧密码错误";
		}
	}
	
	@RequestMapping("updateUsernameAndEmail")
	@ResponseBody
	public String updateUsernameAndEmail(String username, String email, HttpServletRequest request) {
		User user = (User)request.getSession().getAttribute("user");
		String tmp1 = user.getUsername();
		String tmp2 = user.getEmail();
		user.setUsername(username);
		user.setEmail(email);
		if(userService.updateUser(user)) {
			return "修改成功";
		} else {
			user.setUsername(tmp1);
			user.setEmail(tmp2);
			return "修购失败，请重新修改";
		}
	}
	
	@RequestMapping("invalidate")
	public String invalidate(HttpServletRequest request) {
		request.getSession().invalidate();
		return "redirect:/";
	}
}
