package com.dz.dao;

import java.util.List;
import java.util.Map;

import com.dz.db.DBHelp;
import com.dz.db.rowmapper.MapRowMapper;
import com.dz.entity.IdeaComment;

public class IdeaCommentDao {

	DBHelp db=new DBHelp();
	public void save(IdeaComment ic) {
		String sql="insert into t_ideacomment(id,content,createtime,employeeid,ideaid) values(?,?,?,?,?)";
		db.executeUpdate(sql, ic.getId(),ic.getContent(),ic.getCreatetime(),ic.getEmployeeid(),ic.getIdeaid());
	}
	
	public List<Map<String, Object>> findall(String id) {
		StringBuffer sql= new StringBuffer();
		sql.append("SELECT ic.id ,content,ic.employeeid,emp.username ,createtime,ideaid ");
		sql.append(" FROM t_ideacomment ic LEFT JOIN t_employee emp ON ic.employeeid= emp.id  WHERE ic.ideaid=? order by createtime");	
		String sql1=sql.toString();
		return db.queryForList(sql1, new MapRowMapper(),id);
	}

}
