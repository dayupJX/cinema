package com.springboot.service.impl;

import com.springboot.domain.LoginTicket;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springboot.domain.User;
import com.springboot.mapper.UserMapper;
import com.springboot.service.UserService;

import java.util.Date;
import java.util.UUID;

@Service
public class UserServiceImpl implements UserService {

	@SuppressWarnings("all")
	@Autowired
	UserMapper mapper;
	
	@Override
	public User getUserByUnAndPw(String telephone, String password) {
		User user = new User();
		user.setTelephone(telephone); 
		user.setPassword(password);
		return mapper.getUserByUsernameAndPassword(user);
	}

	@Override
	public boolean insertUser(User user) {
		 if(mapper.insertUser(user) == 0)
			 return false;
		 return true;
	}

	@Override
	public boolean updateUser(User user) {
		if(mapper.updateUser(user) == 0) 
			return false;
		return true;
	}

	@Override
	public String insertLoginTicket(String uid) {
		LoginTicket ticket = new LoginTicket();
		ticket.setUserId(uid);
		Date date = new Date();
		date.setTime(date.getTime() + 1000*3600*24);
		ticket.setExpired(date);
		ticket.setStatus(0);
		ticket.setTicket(UUID.randomUUID().toString().replaceAll("-", ""));
		mapper.insertTicket(ticket);
		return ticket.getTicket();
	}

}
