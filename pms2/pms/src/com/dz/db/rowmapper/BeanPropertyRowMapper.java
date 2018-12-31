package com.dz.db.rowmapper;

import java.lang.reflect.Method;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;

public class BeanPropertyRowMapper<T> implements RowMapper<T>{

	private Class<T> clazz;
	public BeanPropertyRowMapper(Class<T> clazz) {
		this.clazz = clazz;
	}
	@Override
	public T mapRow(ResultSet rs) throws SQLException {
		try {
			//����T����
			T t = clazz.newInstance();
			//����������Ը�ֵ
			//2.1��ȡ�е�����
			ResultSetMetaData rsmd = rs.getMetaData();
			//��ȡ�е�����
			int columnCount = rsmd.getColumnCount();
			for (int i = 1; i <= columnCount; i++) {
				//��ȡ��i�е�����
				String columnName = rsmd.getColumnLabel(i);
				//��ȡ��i�е�ֵ
				Object columnValue = rs.getObject(columnName);
				setPropertyValue(t,columnName,columnValue);
			}
			//����T����
			return t;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	
	/**
	 * �����ҵ�������ȥ����ִ�ж�Ӧ��set����
	 * @param t
	 * @param columnName
	 * @param columnValue
	 */
	private void setPropertyValue(T t, String columnName, Object columnValue) {
		//����columnNameֵ������setColumnName()����     setUsername
		String methodName = "set"+columnName.substring(0,1).toUpperCase()+columnName.substring(1);
		
		//����clazz��ȡ�����е����з���
		Method[] methods = clazz.getMethods();
		//����ÿ�������ķ�������methodName�Ƚϣ���������ִ�и÷���
		for(Method m : methods) {
			if(m.getName().equals(methodName)) {
				//ִ�з���
				try {
					m.invoke(t, columnValue);
					break;
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}

	}

}
