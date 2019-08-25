package com.springboot.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.springboot.domain.Film;
import com.springboot.domain.Orders;
import com.springboot.domain.User;
import com.springboot.service.OrderService;
import com.springboot.utils.UUIDUtils;

@Controller
public class OrderController {
	
	@Autowired
	OrderService orderService;
	
	@RequestMapping("/filmInfo/{id}")
	public String filmInfo (@PathVariable(value="id") String fid, Model model) {
		Film film =  orderService.getFilmById(fid);
		model.addAttribute("film", film);
		return "film_info";
	}
	
//	@RequestMapping("/orderForm")
//	public String orderForm(HttpServletRequest request, String price,
//												 @RequestParam(defaultValue="1") String number) {
//		//fid指明是哪部电影
//		String fid = request.getParameter("fid");
//		Film film = orderService.getFilmById(fid);
//		
//		Orders order = new Orders();
//		User user = (User)request.getSession().getAttribute("user");
////		order.setUid("123");//先认为001用户登录成功
//		order.setUid(user.getUid());
//		order.setOid(UUIDUtils.getCode());
//		order.setFilm(film);
//		order.setQuantity(Integer.parseInt(number));
//		order.setTotal(Double.parseDouble(price) * Double.parseDouble(number));
//		
//		if(orderService.insert(order))       ;//注意此处查询失败的处理
//			return "order_confirm";
//		
//	}
}
