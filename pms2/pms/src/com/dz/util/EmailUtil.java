package com.dz.util;

import java.io.IOException;
import java.util.Properties;

import org.apache.commons.mail.Email;
import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail;

public class EmailUtil {
	
	private static String hostName;
	private static String userName;
	private static String pwd;
	private static String charactor;
	
	static{
		Properties pro = new Properties();
		try {
			pro.load(EmailUtil.class.getClassLoader().getResourceAsStream("email.properties"));
			hostName = pro.getProperty("email.hostmail");
			userName = pro.getProperty("email.username");
			pwd = pro.getProperty("email.pwd");
			charactor = pro.getProperty("email.charactor");
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
	
	public static void  sendEmial(String address,String subject,String content){
		
		Email email = new SimpleEmail();
		email.setHostName(hostName);
		email.setAuthentication(userName, pwd);
		email.setCharset(charactor);
		//email.setTLS(true);
		
		
		try {
			email.setFrom(userName);
			email.setSubject(subject);
			email.setMsg(content);
			email.addTo(address);
			email.send();
		} catch (EmailException e) {
			e.printStackTrace();
		}
		
		
	}

}
