package com.springboot.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springboot.domain.Cinema;
import com.springboot.domain.Hall;
import com.springboot.domain.Orders;
import com.springboot.domain.Play;
import com.springboot.domain.User;
import com.springboot.service.ContentService;
import com.springboot.utils.UUIDUtils;

@Controller
public class BookTicketController {
	
	@Autowired
	ContentService contentService;
	
	@RequestMapping("/bookTicket/{id}")
	public String bookTicket(@PathVariable(value="id") String fid, Model model) {
		//通过电影fid查找播放该影片的影院以及播放信息
		List<Cinema> cinemas = contentService.getCinemasById(fid);
		model.addAttribute("cinemas", cinemas);
		System.out.println(cinemas);
		return "book_ticket";
	}
	
	@RequestMapping("/bookSeat")
	public String bookSeat( String pid, Model model) {
		//根据影片播放ID获取影片播放信息
		Play play = contentService.findPlayById(pid);
		//根据影片播放信息中的影厅ID获取影厅信息
		Hall hall = contentService.findHallById(play.getHall().getHid());
		//根据影片播放ID获取订单信息
		List<Orders> orders = contentService.findOrdersById(pid);
		model.addAttribute("play", play);
		model.addAttribute("hall", hall);
		model.addAttribute("orders", orders);
		System.out.println(play);
		System.out.println(hall);
		System.out.println(orders);
		return "book_seat";
	}
	
	@RequestMapping("/order")
	public String order( String pid, String seats, Model model, HttpServletRequest request) {
		User user = (User)request.getSession().getAttribute("user");
		//创建集合用户保存已被订购座位
		List<String> seatList =new ArrayList<String>();
		
		//将已被订购座位循环添加到集合中
		for (int i = 0; i < seats.split(",").length; i++) {	
			seatList.add(seats.split(",")[i]);
		}	
		Play play = contentService.findPlayById(pid);
		Hall hall = contentService.findHallById(play.getHall().getHid());
		
		for (int i = 0; i < seatList.size(); i++) {
			String seat = seatList.get(i);
			int index = seat.indexOf("-");
			
			//取出用户订购的座位的行
			String row = seat.substring(0,index);
			//取出用户订购的座位的列
			String col = seat.substring(index+1,seat.length());
			
			//给该用户的订单的属性赋值
			Orders o = new Orders();
			o.setOid(UUIDUtils.getCode());
			o.setUser(user);
			o.setPlay(play);
			o.setSeatRow(row);
			o.setSeatCol(col);
			
			//添加订单
			if(contentService.insertOrders(o)){
				System.out.println("订单添加成功！");
			}else{
				System.out.println("订单添加失败");
			}
		}
		return "order_confirm";
	}
}
