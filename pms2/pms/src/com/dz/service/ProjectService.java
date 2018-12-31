package com.dz.service;

import java.util.List;

import com.dz.dao.ProjectDao;
import com.dz.entity.Project;

public class ProjectService {
	 ProjectDao prodb=new ProjectDao();

	public void save(Project pro) {
		prodb.save(pro);
		
	}

	public List<Project> finall() {
		return prodb.findall();
	}

	public Project findpro(String id) {
		return prodb.findpro(id);
	}
	 
	 
}
