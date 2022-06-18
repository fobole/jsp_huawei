package cn.zktr.tags;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.SimpleTagSupport;

import cn.zktr.utilts.Page;


public class PageTag extends SimpleTagSupport {
	private String url;
	private Page page;
	
	@Override
	public void doTag() throws JspException, IOException {
		//获取除了current之外的其他参数，做高级筛选用
		String str = this.getParamStr();
		JspWriter out = this.getJspContext().getOut();
		for (int i = 1; i <= page.getPages(); i++) {
			if(page.getCurrent() == i) {
				out.append("<a class='current' href=\""+url+"?current="+i+str+"\">"+i+"</a>");
			}else {
				out.append("<a href=\""+url+"?current="+i+str+"\">"+i+"</a>");
			}
		}
	}
	
	/**
	 * 截取请求路径中的参数
	 * @return
	 * @throws UnsupportedEncodingException
	 */
	public String getParamStr() throws UnsupportedEncodingException {
		PageContext pageContext = (PageContext) this.getJspContext();
		HttpServletRequest request = (HttpServletRequest) pageContext.getRequest();
		//获取请求路径中的参数
		Enumeration<String> pnames = request.getParameterNames();

		List<String> params = new ArrayList<>();

		while (pnames.hasMoreElements()) {
			String name = (String) pnames.nextElement();
			//如果不是当前页码这个参数，就进行处理
			if (!"current".equalsIgnoreCase(name)) {
				String[] values = request.getParameterValues(name);
				for (String value : values) {
					if (value!=null && !"".equals(value)) {
						params.add(name + "=" + URLEncoder.encode(value, "UTF-8"));
					}
				}
			}
		}

		StringBuffer sb = new StringBuffer();
		if (params.size() > 0) {
			sb.append("&");
			for (String item : params) {
				sb.append(item).append("&");
			}
			sb.deleteCharAt(sb.length() - 1);
		}

		return sb.toString();
	}
	
	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}
	
	
	
}
