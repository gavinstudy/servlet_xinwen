package com.dz.db.rowmapper;

import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;

/**
 * ��������¼��װΪһ��Object[]
 * @author dz
 *
 */
public class ArrayRowMapper implements RowMapper<Object[]>{

	@Override
	public Object[] mapRow(ResultSet rs) throws SQLException {
		//��ȡ�е�����
		ResultSetMetaData rsmd = rs.getMetaData();
		int columnCount = rsmd.getColumnCount();
		
		//���巵�ص�Object����
		Object[] obj = new Object[columnCount];
		
		//���鸳ֵ
		for (int i = 0; i < obj.length; i++) {
			obj[i] = rs.getObject(i+1);
		}
		
		return obj;
	}

}
