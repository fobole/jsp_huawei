package cn.zktr.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tencentcloudapi.common.Credential;
import com.tencentcloudapi.common.exception.TencentCloudSDKException;
import com.tencentcloudapi.common.profile.ClientProfile;
import com.tencentcloudapi.common.profile.HttpProfile;
import com.tencentcloudapi.sms.v20210111.SmsClient;
import com.tencentcloudapi.sms.v20210111.models.SendSmsRequest;
import com.tencentcloudapi.sms.v20210111.models.SendSmsResponse;

import cn.zktr.model.dao.Sms_gai_mima_dao;

/**
 * Servlet implementation class Sms_servlet
 */
@WebServlet("/sms_servlet2")
public class Sms_servlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Sms_gai_mima_dao sdao=new Sms_gai_mima_dao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Sms_servlet2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int yzm=(int)request.getSession().getAttribute("yzm");
		//System.out.println(yzm);
		String uphone=request.getParameter("uphone");
		String yzmr=request.getParameter("yzm");
		String upwd=request.getParameter("upwd");
		System.out.println(uphone+" "+yzmr+" "+upwd);
		if(yzm==Integer.parseInt(yzmr)) {
			try {
				int isok=sdao.gaimm(upwd, uphone);
				if(isok>0) {
					response.getWriter().print('1');
				}else {
					response.getWriter().print('2');
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else {
			response.getWriter().print('3');
		}
		//response.getWriter().print(ran2);
		
	
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
