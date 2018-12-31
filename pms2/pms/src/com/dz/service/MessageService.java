package com.dz.service;

import java.util.List;
import java.util.Map;

import com.dz.dao.MessageDao;
import com.dz.entity.Message;

public class MessageService {
   MessageDao msgDao=new MessageDao();

	public void save(Message msg) {
		msgDao.save(msg);
	}
	
	public List<Map<String ,Object>> findall(String proid) {	
		return msgDao.findall(proid);
	}
	   
}
