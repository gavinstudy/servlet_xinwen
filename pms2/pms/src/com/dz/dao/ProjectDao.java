package com.dz.dao;

import java.util.List;

import com.dz.db.DBHelp;
import com.dz.db.rowmapper.BeanPropertyRowMapper;
import com.dz.entity.Project;

public class ProjectDao {
	DBHelp db=new DBHelp();

	public void save(Project pro) {
		String sql="INSERT INTO t_project(id,`name`,`desc`,	createtime)  values(?,?,?,?)";
		db.executeUpdate(sql, pro.getId(),pro.getName(),pro.getDesc(),pro.getCreatetime());
	}

	public List<Project> findall() {
		String sql="SELECT id,`name`,`desc` FROM t_project ORDER BY createtime DESC  ";
		return db.queryForList(sql, new BeanPropertyRowMapper<Project>(Project.class));
	}

	public Project findpro(String id) {
		String sql="select id,`name`,`desc`,createtime from  t_project where id=?";
		return db.queryForObject(sql, new BeanPropertyRowMapper<Project>(Project.class), id);
		
	}
}
