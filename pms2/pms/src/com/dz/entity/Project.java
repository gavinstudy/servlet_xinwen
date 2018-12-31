package com.dz.entity;

import java.sql.Timestamp;

public class Project {
	
	public  Project(){};
	private String id;
	private String name;
	private String desc;
	private Timestamp createtime;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public Timestamp getCreatetime() {
		return  new Timestamp(System.currentTimeMillis());
	}
	public void setCreatetime(Timestamp createtime) {
		this.createtime = createtime;
	}

}
