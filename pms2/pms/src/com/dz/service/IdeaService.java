package com.dz.service;

import java.util.List;
import java.util.Map;

import com.dz.dao.IdeaDao;
import com.dz.entity.Idea;

public class IdeaService {
	IdeaDao idao=new IdeaDao();

	public void save(Idea idea) {
	 idao.save(idea);
	}

	public List<Map<String, Object>> findall(String id) {
		
		return idao.findall(id);
	}

	public void delidea(String id) {
		
		idao.delidea(id);
		
	}


	public Idea findidea(String id) {
		return idao.findidea(id);
	}

	public void editeidea(Idea idea) {
	     idao.edite(idea);
	}

	
}
