
package com.dz.dao;

import java.util.List;
import java.util.Map;

import com.dz.db.DBHelp;
import com.dz.db.rowmapper.MapRowMapper;
import com.dz.entity.Message;

public class MessageDao {
	
	DBHelp db=new DBHelp();

	public void save(Message msg) {
		String sql="insert into t_message(id,content,createtime,projectid,employeeid) values(?,?,?,?,?)";
		db.executeUpdate(sql, msg.getId(),msg.getContent(),msg.getCreatetime(),msg.getProjectid(),msg.getEmployeeid());
	}

	public List<Map<String ,Object>> findall(String proid) {
		StringBuffer sql= new StringBuffer();
		sql.append("select msg.id  msgid ,content,projectid,employeeid,username,createtime  ");
		sql.append(" from t_message msg left join t_employee emp on msg.employeeid= emp.id where projectid=?  order by createtime");	
		String sql1=sql.toString();
		return db.queryForList(sql1, new MapRowMapper(),proid);
	}
	
	

}
