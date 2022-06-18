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


public class PageTag_houtai extends SimpleTagSupport {
	private String url_houtai;
	private Page page_houtai;
	
	@Override
	public void doTag() throws JspException, IOException {
		//获取除了current之外的其他参数，做高级筛选用
		String str = this.getParamStr();
		JspWriter out = this.getJspContext().getOut();
		for (int i = 1; i <= page_houtai.getPages(); i++) {
			if(page_houtai.getCurrent() == i) {
				out.append("<li class='active' id='yema'><a class='ymmax' href=\""+url_houtai+"?current="+i+str+"\">"+i+"</a></li>");
			}else {
				out.append("<li><a class='ymmax' href=\""+url_houtai+"?current="+i+str+"\">"+i+"</a></li>");
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

	public String getUrl_houtai() {
		return url_houtai;
	}

	public void setUrl_houtai(String url_houtai) {
		this.url_houtai = url_houtai;
	}

	public Page getPage_houtai() {
		return page_houtai;
	}

	public void setPage_houtai(Page page_houtai) {
		this.page_houtai = page_houtai;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
}
