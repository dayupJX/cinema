package com.springboot.utils;

import java.util.UUID;

public class UUIDUtils {
	/**
	 * 随机生成id
	 * @return
	 */
	public static String getId(){
		return UUID.randomUUID().toString().replace("-", "").toUpperCase();
	}
	
	
	public static String getUUID64(){
		return getId()+getId();
	}
	
	/**
	 * 生成随机码
	 * @return
	 */
	public static String getCode(){
		return getId();
	}
	
	/**
	 * 生成随机六位数
	 * @return
	 */
	public static String createCode6() {
		String num =  (long) (Math.random()*1000000) + "";
		if(num.length() == 5) {
			num += "0";
		}
		return num;
	}
	
	public static void main(String[] args) {
		System.out.println(getId());
	}
}
