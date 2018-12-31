package com.dz.entity;

import java.sql.Timestamp;

public class IdeaComment {
	private String id;
	private String content;
	private Timestamp createtime;
	private String employeeid;
	private String ideaid;
	
	public IdeaComment() {
		super();
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Timestamp getCreatetime() {
		return createtime;
	}
	public void setCreatetime(Timestamp createtime) {
		this.createtime = createtime;
	}
	public String getEmployeeid() {
		return employeeid;
	}
	public void setEmployeeid(String employeeid) {
		this.employeeid = employeeid;
	}
	public String getIdeaid() {
		return ideaid;
	}
	public void setIdeaid(String ideaid) {
		this.ideaid = ideaid;
	}

}
