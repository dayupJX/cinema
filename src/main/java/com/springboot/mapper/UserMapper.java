package com.springboot.mapper;

import com.springboot.domain.LoginTicket;
import com.springboot.domain.User;

public interface UserMapper {

	User getUserByUid(String uid);

	User getUserByUsernameAndPassword(User user);

	Integer insertUser(User user);

	Integer updateUser(User user);

	String insertTicket(LoginTicket ticket);

	LoginTicket getTicket(String ticket);


}
