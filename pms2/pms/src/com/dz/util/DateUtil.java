package com.dz.util;

import java.text.SimpleDateFormat;
import java.util.Date;


public class DateUtil {
	
	public static String getStringDate(){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm");
		return sdf.format(new Date());
	}
	
	

}
