package com.springboot.service;

import java.util.List;

import com.springboot.domain.Film;
import com.springboot.domain.Orders;

public interface OrderService {

	/**
	 * 根据page和rows进行分页查询
	 * @param page 第几页
	 * @param rows 每页有几行
	 * @return
	 */
	List<Film> getFilmsByPage(Integer page, Integer rows);

	/**
	 * 根据fid查询电影信息
	 * @param fid
	 * @return
	 */
	Film getFilmById(String fid);

	boolean insert(Orders order);

	/**
	 *通过uid查询该用户的订单
	 * @param uid
	 * @return
	 */
	List<Orders> getOrdersById(String uid);
	
}	
