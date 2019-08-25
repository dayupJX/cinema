package com.springboot.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.springboot.jedis.JedisClientPool;

import redis.clients.jedis.JedisPool;

@Configuration
public class JedisConfig {
	@Bean
	public JedisPool jedisPool() {
		JedisPool jedisPool = new JedisPool("192.168.153.128",6379);
		return jedisPool;
	}
	
	@Bean
	public JedisClientPool jedisClientPool() {
		return new JedisClientPool();
	}
}
