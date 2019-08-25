package com.springboot.mapper;

import java.util.List;
import java.util.Map;

import com.springboot.domain.Cinema;
import com.springboot.domain.Content;
import com.springboot.domain.Hall;
import com.springboot.domain.Orders;
import com.springboot.domain.Play;

public interface ContentMapper {

	Content getContent();

	List<Cinema> getCinemasByFid(String fid);

	List<String> getCidOfCinema();

	Cinema getCinemaByCidAndFid(Map<String, String> paramMap);

	Play getPlayByPid(String pid);

	Hall getHallByHid(String hid);

	List<Orders> getOrdersByPid(String pid);

	Integer insertOrders(Orders o);
	
}
