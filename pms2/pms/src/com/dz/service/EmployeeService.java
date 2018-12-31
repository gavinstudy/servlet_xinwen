package com.dz.service;

import java.util.List;

import com.dz.dao.Employeedao;
import com.dz.entity.Employee;

public class EmployeeService {
	
	Employeedao empdao=new Employeedao();

	public Employee listemp(String username, String password) {
		return empdao.listempp(username,password);
		
	}

	public Employee listemp(String uname) {
		return empdao.listemp(uname);
	}
	
	public void updatemp(Employee emp) {
		empdao.updatemp(emp);
		
	}

	public void save(Employee emp) {
		empdao.save(emp);
	}

	public List<Employee> findall() {
		 return empdao.findall();
	}

	public Employee findemp(String empid) {
		// TODO Auto-generated method stub
		return empdao.findemp(empid);
	}
	
	
}
