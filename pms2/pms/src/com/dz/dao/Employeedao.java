package com.dz.dao;

import java.util.List;
import java.util.UUID;

import com.dz.db.DBHelp;
import com.dz.db.rowmapper.BeanPropertyRowMapper;
import com.dz.entity.Employee;

public class Employeedao {
	DBHelp db=new DBHelp();
	/**
	 * 
	 * 查询雇员是否存在
	 * @author Administrator
	 */
	public Employee listempp(String username, String password) {
		String sql="select * from t_employee where username=? and password=?";
		return db.queryForObject(sql,new BeanPropertyRowMapper<Employee>(Employee.class), username,password);
		 
	}
	/**
	 * 
	 * 查询雇员是否存在
	 * @author Administrator
	 */
	public Employee listemp(String uname) {
		String sql="select * from t_employee where username=?";
		return db.queryForObject(sql,new BeanPropertyRowMapper<Employee>(Employee.class), uname);
		 
	}
	/**
	 * 
	 *跟新雇员密码
	 * @author Administrator
	 */
	public void updatemp(Employee emp) {
		String sql="UPDATE t_employee SET PASSWORD=? WHERE username=?";
		db.executeUpdate(sql, emp.getPassword(),emp.getUsername());
	}
	/**
	 * 
	 * 添加雇员
	 * @author Administrator
	 */
	public void save(Employee emp) {
		String sql="INSERT INTO t_employee  VALUES(?,?,?,?)";
		String id=UUID.randomUUID().toString().substring(0, 20);
		db.executeUpdate(sql, id,emp.getUsername(),emp.getPassword(),null);
	}
	public List<Employee> findall() {
		String sql="select username ,id from t_employee";
		return db.queryForList(sql,new BeanPropertyRowMapper<Employee>(Employee.class));
	}
	public Employee findemp(String empid) {
		String sql="select username ,id  from t_employee where id=?";
		return db.queryForObject(sql,new BeanPropertyRowMapper<Employee>(Employee.class), empid);
	}

}
