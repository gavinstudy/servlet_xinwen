package com.dz.db.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public interface RowMapper<T> {

	/**
	 * �����ݿ��е�һ����¼��װΪJava�е�һ������
	 * @param rs
	 * @return
	 * @throws SQLException
	 */
	public T mapRow(ResultSet rs) throws SQLException;
}
