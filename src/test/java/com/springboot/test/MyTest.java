package com.springboot.test;


import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

@RunWith(SpringRunner.class)
@SpringBootTest
public class MyTest {
	@Autowired
	DataSource dataSource;
	
	@Test
	public void testDataSource() {
		System.out.println(dataSource);
	}
	
	
	@Test
	public void teatJeisPool(){
		//1.创建jedispool 对象需要指定端口和地址
		JedisPool pool = new JedisPool("192.168.153.128", 6379);
		//2.获取jedis的对象
		Jedis jedis = pool.getResource();
		//3.直接操作redis
		jedis.set("keypool", "keypool");
		System.out.println(jedis.get("keypool"));
		//4.关闭redis  (释放资源到连接池)
		jedis.close();
		//5.关闭连接池（应用系统关闭的时候才关闭）
		pool.close();
	}
}
