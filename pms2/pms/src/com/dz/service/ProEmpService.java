package com.dz.service;

import com.dz.dao.ProEmpDao;
import com.dz.entity.ProEmp;

public class ProEmpService {
	ProEmpDao pedao=new ProEmpDao();

	public void save(ProEmp proemp) {
		pedao.save(proemp);
	}



	public ProEmp find(String proid) {
		
		return pedao.find(proid);
	}
	
}
