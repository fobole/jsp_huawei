package cn.zktr.utilts;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class BaseDao {
	//导数据库驱动包
	//加载驱动
	//获得链接
	//准备链接字段
	/*String url = "jdbc:mysql://localhost:3306/news?useUnicode=true&characterEncoding=utf-8";
	String userName = "root";
	String password = "123456";*/
	
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	/**
	 * 获得连接
	 * @return
	 * @throws ClassNotFoundException
	 * @throws SQLException
	 */
	public Connection getConnection() throws Exception {
		/*Class.forName("com.mysql.jdbc.Driver");
		return DriverManager.getConnection(url,userName,password);*/
		Context ctx = new InitialContext();
		DataSource d = (DataSource) ctx.lookup("java:comp/env/jdbc/test");
		return d.getConnection();
	}
	
	/**
	 * 通用查询
	 * @param sql
	 * @param rows
	 * @param params
	 * @return
	 * @throws Exception
	 */
	public <T> List<T> selectAll(String sql,RowMapper<T> rows,Object...params) throws Exception {
		List<T> list = new ArrayList<>();
		//获得链接
		try {
			conn = getConnection();
			//获得执行
			ps = conn.prepareStatement(sql);
			bind(params);
			//执行
			rs = ps.executeQuery();
			//处理结果
			if(rows != null) {
				while(rs.next()) {
					T t = rows.rowMapper(rs);
					list.add(t);
				}
			}
		} catch (ClassNotFoundException | SQLException e) {
			throw e;
		} finally {
			closeAll();
		}
		return list;
	}
	/**
	 * 通用增删改
	 * @param sql
	 * @param params
	 * @return
	 * @throws Exception
	 */
	public int updateAll(String sql,Object...params) throws Exception {
		try {
			conn = getConnection();
			//获得执行
			ps = conn.prepareStatement(sql);
			// 绑定参数
			bind(params);
			return ps.executeUpdate();
		} catch (ClassNotFoundException | SQLException e) {
			throw e;
		} finally {
			closeAll();
		}
	}
	
	/**
	 * 查询聚合函数count()结果
	 * @param sql
	 * @param params
	 * @return
	 * @throws Exception
	 */
	public int getCounts(String sql,Object...params) throws Exception {
		try {
			List list = this.selectAll(sql,null,params);
			//处理结果
			if(!list.isEmpty()) {
				return list.size();
			}
		} catch (ClassNotFoundException | SQLException e) {
			throw e;
		} finally {
			closeAll();
		}
		return 0;
	}
	
	/**
	 * 绑定参数
	 * @param params
	 * @throws SQLException
	 */
	private void bind(Object... params) throws SQLException {
		if(params != null) {
			for (int i = 0; i < params.length; i++) {
				ps.setObject((i+1), params[i]);
			}
		}
	}
	
	/**
	 * 关闭所有对象
	 * @throws SQLException
	 */
	public void closeAll() throws SQLException {
		if(rs != null) {
			rs.close();
		}
		if(ps != null) {
			ps.close();
		}
		if(conn != null) {
			conn.close();
		}
	}
}
