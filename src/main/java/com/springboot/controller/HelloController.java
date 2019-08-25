package com.springboot.controller;

import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;
import java.util.Scanner;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.springboot.domain.Content;
import com.springboot.domain.Film;
import com.springboot.service.ContentService;
import com.springboot.service.OrderService;

@Controller
public class HelloController {
	@Autowired
	OrderService orderService;
	
	@Autowired
	ContentService contentService;
	
	@RequestMapping("/")
	public String hello(Model model) {
		List<Film> filmList = orderService.getFilmsByPage(1,6);
		Content content = contentService.getContent();
		model.addAttribute("filmList", filmList);
		model.addAttribute("content",content);
		return "index";
	}
	
	@RequestMapping("IPAdress")
	@ResponseBody
	public String IPAdress(HttpServletRequest request) throws MalformedURLException, IOException {
		// 获取客户端ip
		String ip = "";
		if (request.getHeader("x-forwarded-for") == null) {
			ip = request.getRemoteAddr();
		} else {
			ip = request.getHeader("x-forwarded-for");
		}
		// 获取ip归属地的文本信息
		StringBuilder ipText = new StringBuilder("");
		String url = "http://api.map.baidu.com/location/ip?ip=" + ip
				+ "&ak=3YjmfCQ9l9K0hMmTEk0QglsK1wG0QWoX&ip";
		Scanner scanner = new Scanner(new URL(url).openConnection().getInputStream(),
				"utf-8");
		while (scanner.hasNext()) {
			ipText.append(scanner.next());
		}
		System.out.println(ipText);

		return ipText.toString();
	}
}
