package com.springboot.service;

import com.springboot.domain.User;

public interface UserService {

	/**
	 * 根据手机号和密码查询用户
	 * @param telephone
	 * @param password
	 * @return
	 */
	User getUserByUnAndPw(String telephone, String password);

	/**
	 * 用户注册：向数据库插入新用户数据
	 * @param user
	 * @return
	 */
	boolean insertUser(User user);

	boolean updateUser(User user);

    String insertLoginTicket(String uid);
}
