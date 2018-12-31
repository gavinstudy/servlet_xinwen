package com.dz.db;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import org.apache.commons.dbcp.BasicDataSource;
import com.dz.db.rowmapper.RowMapper;
import com.dz.exception.DataAccessException;

public class DBHelp {

	private static  String DRIVER;
	private static  String URL; 
	private static  String USERNAME;
	private static  String PASSWORD; 
	
	/**
	 * 鑾峰彇鏁版嵁搴撹繛鎺�
	 * @return Connection瀵硅薄
	 */
	
	private static BasicDataSource bds;
	
	static{
		
		Properties pro = new Properties();
		
		try {
			pro.load(DBHelp.class.getClassLoader().getResourceAsStream("db.properties"));
			URL = pro.getProperty("URL");
			USERNAME = pro.getProperty("USERNAME");
			PASSWORD = pro.getProperty("PASSWORD");
			DRIVER = pro.getProperty("DRIVER");
		} catch (IOException e) {
			throw new DataAccessException("读取配置文件失败！",e);
		}
		
		bds = new BasicDataSource();
		bds.setUrl(URL);
		bds.setUsername(USERNAME);
		bds.setPassword(PASSWORD);
		bds.setDriverClassName(DRIVER);
		bds.setInitialSize(5);
		bds.setMaxActive(20);
		bds.setMaxWait(5000);
	}
	
	public Connection getConnection() {
		try {
			return bds.getConnection();
		} catch (SQLException e) {
			throw new DataAccessException("数据源创建失败！",e);
		}
	}
	
	
	/**
	 * 鎵цinster update delete璇彞
	 * executeUpdate("delete from t_user where id = ?",12);
	 * @param sql inster update delete璇彞
	 * @param params 鍗犱綅绗﹀�硷紝闇�瑕佸拰锛熺殑椤哄簭鐩稿悓
	 */
	public void executeUpdate(String sql,Object...params) {
		Connection conn = getConnection();
		PreparedStatement stat = null;
		
		try {
			stat = conn.prepareStatement(sql);
			//缁欏崰浣嶇璧嬪��
			for (int i = 0; i < params.length; i++) {
				stat.setObject(i+1, params[i]);
			}
			//鎵цSQL璇彞
			stat.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(stat,conn);
		}
		
	}

	/**
	 * 鎵цselect璇彞鑾峰彇鍞竴鐨勫璞�
	 * @param sql selete璇彞
	 * @param rowMapper RowMapper鎺ュ彛鐨勫疄鐜扮被瀵硅薄
	 * @param params 鍗犱綅绗﹀��
	 * @return
	 */
	public <T> T queryForObject(String sql,RowMapper<T> rowMapper,Object...params) {
		Connection conn = getConnection();
		PreparedStatement stat = null;
		ResultSet rs = null;
		T obj = null;
		
		try {
			stat = conn.prepareStatement(sql);
			//缁欏崰浣嶇璧嬪��
			for (int i = 0; i < params.length; i++) {
				stat.setObject(i+1, params[i]);
			}
			//鎵цSQL璇彞
			rs = stat.executeQuery();
			
			//鑾峰彇鏌ヨ鐨勭粨鏋�
			if(rs.next()) {
				obj = rowMapper.mapRow(rs);
			}
		} catch (SQLException e) {
			throw new DataAccessException(e);
		} finally {
			close(rs,stat,conn);
		}
		
		return obj;
	}
	
	public <T> List<T> queryForList(String sql,RowMapper<T> rowMapper,Object... params) {
		Connection conn = getConnection();
		PreparedStatement stat = null;
		ResultSet rs = null;
		List<T> list = new ArrayList<T>();
		
		try {
			stat = conn.prepareStatement(sql);
			for (int i = 0; i < params.length; i++) {
				stat.setObject(i+1, params[i]);
			}
			rs = stat.executeQuery();
			while(rs.next()) {
				T obj = rowMapper.mapRow(rs);
				list.add(obj);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs,stat,conn);
		}
		
		return list;
	}
	
	
	
	
	
	
	

	private void close(ResultSet rs, PreparedStatement stat, Connection conn) {
		try {
			if(rs != null) {
				rs.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(stat != null) {
					stat.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				try {
					if(conn != null) {
						conn.close();
					}
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		
	}


	private void close(PreparedStatement stat, Connection conn) {
		close(null,stat,conn);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
