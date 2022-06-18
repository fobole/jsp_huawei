package cn.zktr.utilts;

import java.sql.ResultSet;
/**
 * 用来封装实体类数据，接口不关心实现细节，
 * 由实际的功能Dao类来定义具体封装的实现
 * @author 赵婷婷
 * @param <T>
 */
public interface RowMapper<T> {
	 T rowMapper(ResultSet rs) throws Exception;
}
