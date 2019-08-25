package com.springboot.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.springboot.domain.Film;
import com.springboot.domain.Orders;
import com.springboot.mapper.OrderMapper;
import com.springboot.service.OrderService;

@Service  
public class OrderServiceImpl implements OrderService {
	@Autowired
	private OrderMapper mapper;

	@Override
	public List<Film> getFilmsByPage(Integer page, Integer rows) {
		PageHelper.startPage(page, rows);
		List<Film> list =  mapper.getAllFilms();
		return list;
	}

	@Override
	public Film getFilmById(String fid) {
		return mapper.getFilmById(fid); 
	}

	@Override
	public boolean insert(Orders order) { 
		if(mapper.insertOrder(order) == 0)
			return false;
		return true;
	}

	@Override
	public List<Orders> getOrdersById(String uid) {
		return mapper.getOrdersByUid(uid);
	}

}
