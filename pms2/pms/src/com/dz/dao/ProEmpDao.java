package com.dz.dao;

import com.dz.db.DBHelp;
import com.dz.db.rowmapper.BeanPropertyRowMapper;
import com.dz.entity.ProEmp;

public class ProEmpDao {
	DBHelp db=new DBHelp();
	public void save(ProEmp proemp) {
	String sql="insert into t_employee_project values(?,?,?)";
	db.executeUpdate(sql, proemp.getEmployeeid(),proemp.getProjectid(),proemp.getRole());
	}
	public ProEmp find(String proid) {
		String sql="select employeeid,projectid,role from t_employee_project where projectid=?";
		return db.queryForObject(sql,new BeanPropertyRowMapper< ProEmp >(ProEmp.class),proid);
	}

}
