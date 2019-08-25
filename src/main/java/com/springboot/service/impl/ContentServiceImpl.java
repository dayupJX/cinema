package com.springboot.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springboot.domain.Cinema;
import com.springboot.domain.Content;
import com.springboot.domain.Hall;
import com.springboot.domain.Orders;
import com.springboot.domain.Play;
import com.springboot.jedis.JedisClient;
import com.springboot.mapper.ContentMapper;
import com.springboot.service.ContentService;
import com.springboot.utils.JsonUtils;

@Service
public class ContentServiceImpl implements ContentService {
	
	@Autowired
	ContentMapper mapper;
	
	@Override
	public Play findPlayById(String pid) {
		return mapper.getPlayByPid(pid);
	}

	@Override
	public Hall findHallById(String hid) {
		return mapper.getHallByHid(hid);
	}

	@Override
	public List<Orders> findOrdersById(String pid) {
		return mapper.getOrdersByPid(pid);
	}

	@Autowired
	private JedisClient client;
	
	@Override
	public Content getContent() {
//		添加缓存不能影响正常的业务逻辑
//		判断 是否redis中有数据  如果有   直接从redis中获取数据 返回
		try {
			String jsonstr = client.hget("CONTENT_KEY", "content");//从redis数据库中获取内容分类下的所有的内容。
			//如果存在，说明有缓存
			if(StringUtils.isNotBlank(jsonstr)){
			System.out.println("这里有缓存啦！！！！！");
				return JsonUtils.jsonToPojo(jsonstr, Content.class);
			}
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		
		Content content = mapper.getContent();
		
//		将数据写入到redis数据库中
		try {
			System.out.println("没有缓存！！！！！！");
			client.hset("CONTENT_KEY", "content", JsonUtils.objectToJson(content));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return content;
	}

	@Override
	public List<Cinema> getCinemasById(String fid) {
		//return mapper.getCinemasByFid(fid);
		Cinema cinema = null;
		List<Cinema> list = new ArrayList<Cinema>();
		List<String> idOfCinema = mapper.getCidOfCinema();
		for(String cid : idOfCinema) {
			Map<String,String> paramMap = new HashMap<String, String>();
			paramMap.put("cid", cid);
			paramMap.put("fid", fid);
			cinema = mapper.getCinemaByCidAndFid(paramMap);
			if(cinema != null) {
				list.add(cinema);
			}
		}
		return list;
	}

	@Override
	public boolean insertOrders(Orders o) {
		if(mapper.insertOrders(o) == 0)
			 return false;
		 return true;
	}

}
