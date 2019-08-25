package com.springboot.mapper;

import java.util.List;

import com.springboot.domain.Film;
import com.springboot.domain.Orders;

public interface OrderMapper {

	List<Film> getAllFilms();

	Film getFilmById(String fid);

	Integer insertOrder(Orders order);

	List<Orders> getOrdersByUid(String uid);

}
