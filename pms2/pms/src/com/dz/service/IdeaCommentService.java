package com.dz.service;

import java.util.List;
import java.util.Map;

import com.dz.dao.IdeaCommentDao;
import com.dz.entity.IdeaComment;

public class IdeaCommentService {
	IdeaCommentDao icdao=new IdeaCommentDao();

	public void save(IdeaComment ic) {
	icdao.save(ic);
	}

	public List<Map<String, Object>> findall(String id) {
		return icdao.findall(id);
	}
	
	
}
