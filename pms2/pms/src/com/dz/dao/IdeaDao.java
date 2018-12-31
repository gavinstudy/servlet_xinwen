
package com.dz.dao;


import java.util.List;
import java.util.Map;

import com.dz.db.DBHelp;
import com.dz.db.rowmapper.BeanPropertyRowMapper;
import com.dz.db.rowmapper.MapRowMapper;
import com.dz.entity.Idea;


public class IdeaDao {
	
	DBHelp db=new DBHelp();
	public void save(Idea idea) {
		String sql="insert into t_idea (id,title,content,createtime,employeeid,projectid) values(?,?,?,?,?,?)";
		db.executeUpdate(sql, idea.getId(),idea.getTitle(),idea.getContent(),idea.getCreatetime(),idea.getEmployeeid(),idea.getProjectid());
	}

	public List<Map<String, Object>> findall(String id) {
		StringBuffer sql= new StringBuffer();
		sql.append("SELECT id  ideaid ,title ,content,createtime,t_idea.projectid,t_idea.employeeid");
		sql.append(" FROM t_idea   LEFT JOIN t_employee_project emppro ON t_idea.employeeid= emppro.employeeid WHERE t_idea.projectid=? order by createtime desc");	
		String sql1=sql.toString();
		return db.queryForList(sql1, new MapRowMapper(),id);
		
	}

	public void delidea(String id) {
		String sql="delete from t_idea where id=?";
		db.executeUpdate(sql, id);
	}

	public void edite(Idea idea) {
		String sql="UPDATE t_idea SET content=?,createtime=?  WHERE id=?";
		db.executeUpdate(sql, idea.getContent(),idea.getCreatetime(),idea.getId());
	}

	public Idea findidea(String id) {
		String sql="SELECT * FROM t_idea WHERE id=?";
		return db.queryForObject(sql,new BeanPropertyRowMapper<Idea>(Idea.class),id);
	}
	
	

}
