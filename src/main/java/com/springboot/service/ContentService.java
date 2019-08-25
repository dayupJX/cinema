package com.springboot.service;

import java.util.List;

import com.springboot.domain.Cinema;
import com.springboot.domain.Content;
import com.springboot.domain.Hall;
import com.springboot.domain.Orders;
import com.springboot.domain.Play;

public interface ContentService {

	Content getContent();

	List<Cinema> getCinemasById(String fid);

	Play findPlayById(String pid);

	Hall findHallById(String hid);

	List<Orders> findOrdersById(String pid);

	boolean insertOrders(Orders o);
	
}
