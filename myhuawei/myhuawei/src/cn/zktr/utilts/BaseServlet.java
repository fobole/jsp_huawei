package cn.zktr.utilts;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class BaseServlet extends HttpServlet {
	private ThreadLocal<HttpServletRequest> reqLocal=new ThreadLocal<>();
	private ThreadLocal<HttpServletResponse> resLocal=new ThreadLocal<>();
	private ThreadLocal<Map<String,Object>> paramsLocal=new ThreadLocal<>();//存入session的参数
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			this.reqLocal.set(request);
			this.resLocal.set(response);
			this.paramsLocal.set(new HashMap<>());
			//1、设置字符集
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			
			HttpSession session = request.getSession();
			//2、设置网页根路径（工程名）
			session.setAttribute("basePath", request.getContextPath() + "/");
			
			//3、将session中的数据转存到request
			Map<String,Object> map = 
					(Map<String, Object>) session.getAttribute("_params");
			if(map != null) {
				for (Entry<String, Object> o : map.entrySet()) {
					//转到request
					request.setAttribute(o.getKey(), o.getValue());
				}
				session.removeAttribute("_params");
			}
			//最后一定要执行父类的service，
			//这样才能调用接下来真正实现请求处理的doGet或doPost
			super.service(request, response);
		} catch (Exception e) {
			// 5、统一的异常处理
			e.printStackTrace();
			//request.setAttribute("err", "服务器发生错误!"+e.getMessage());
			//this.forward("error");
		}
	}
	//4、封装重定向和转发
	/**
	 * 转发
	 * @param path  转发是发生在服务器端,因此WEB-INF的jsp才能被访问
	 * ！转发一定是到jsp页面
	 * @throws IOException 
	 * @throws ServletException 
	 */
	public void forward(String path) throws ServletException, IOException{
		this.reqLocal.get().getRequestDispatcher("/WEB-INF/jsp/"+path+".jsp").forward(this.reqLocal.get(), this.resLocal.get());
	}
	
	/**
	 * 重定向
	 * @param path
	 * ！一定是到某个servlet
	 * @throws IOException 
	 */
	public void redirect(String path) throws IOException {
		if(paramsLocal.get() != null) {
			reqLocal.get().getSession().setAttribute("_params",paramsLocal.get());
		}
		resLocal.get().sendRedirect(reqLocal.get().getContextPath() + path);
	}

	/**
	 * 添加参数的方法
	 */
	public void addParams(String key,Object value) {
		paramsLocal.get().put(key, value);
	}
}
