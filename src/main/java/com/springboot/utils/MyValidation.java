package com.springboot.utils;

public class MyValidation {
	
	public static String valiTelephone(String param) {
		if(param.matches("^1(3|4|5|7|8)\\d{9}$")) {
			return  "ok";
		} else {
			return "fail";
		}
	}
	
	public static String valiPhoneIdentity(String param) {
		if(param.matches("^\\d{4}$")) {
			return  "ok";
		} else {
			return "fail";
		}
	}
	
	public static String valiName(String param) {
		if(param == null || "".equals(param.trim())) {
			return  "ok";
		} else {
			return "fail";
		}
	}
	
	public static String valiEmail(String param) {
		if(param.matches("\\w+(.\\w+)*@(\\w)+((.\\w+)+)")) {
			return  "ok";
		} else {
			return "fail";
		}
	}
	
	public static String valiPassword(String password1, String password2) {
		if(password1 != null && !("".equals(password1.trim()))
				&& password2 != null && !("".equals(password2.trim()))	
				&& password1.equals(password2)) {
				return "ok";
			} else {
				return "fail";
			}
	}
}
