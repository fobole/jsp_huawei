package cn.zktr.utilts;

import java.util.ArrayList;
import java.util.List;

public class Page{
	//页面类,页大小、当前页码、数据内容（集合）、总记录数（获取总页数）
	private Integer pageSize = 10;
	private Integer current = 1;
	private Integer total = 0;
	private List<?> rows = new ArrayList<>();
	
	//获取总页数
	public Integer getPages() {
		if(total % pageSize == 0) {
			return  total / pageSize;
		}else {
		 	return total / pageSize + 1;
		}
	}
	
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	public Integer getCurrent() {
		return current;
	}
	public void setCurrent(Integer current) {
		this.current = current;
	}
	public Integer getTotal() {
		return total;
	}
	public void setTotal(Integer total) {
		this.total = total;
	}
	public List<?> getRows() {
		return rows;
	}
	public void setRows(List<?> rows) {
		this.rows = rows;
	}
	public Page() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Page(Integer pageSize, Integer current, Integer total, List<?> rows) {
		super();
		this.pageSize = pageSize;
		this.current = current;
		this.total = total;
		this.rows = rows;
	}
	
	
}
