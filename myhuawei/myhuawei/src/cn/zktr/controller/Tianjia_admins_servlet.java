package cn.zktr.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Date;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import cn.zktr.model.dao.Hou_admins_dao;
import cn.zktr.model.entity.Admins;
import cn.zktr.utilts.BaseServlet;
import sun.misc.BASE64Decoder;

/**
 * Servlet implementation class Tianjia_admins_servlet
 */
@WebServlet("/tianjia_admins_servlet")
public class Tianjia_admins_servlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	Hou_admins_dao hdao=new Hou_admins_dao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Tianjia_admins_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }
   
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Admins admins=(Admins) request.getSession().getAttribute("admins");
		// 没有/的去jsp页面，有/则去servlet
		if(admins==null){
		//	2.session中无用户，转发去登录页面
			
			this.forward("hou/ht_login");
		}else{
			String aimg=request.getParameter("aimg");
			String aname=request.getParameter("aname");
			String asex=request.getParameter("asex");
			String atype=request.getParameter("atype");
			String apwd=request.getParameter("apwd");
			System.out.println(aimg+" "+aname+" "+asex+" "+atype+" "+apwd+" ");
			Admins a=new Admins(aname, apwd, new Date(), aimg, 0, Integer.parseInt(atype), Integer.parseInt(asex));
			try {
				hdao.tian_admins(a);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			this.redirect("/table_adminsservlet");
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	
	
	
	 /**
	  * base64编码字符串转换为图片
	  * @param imgStr base64编码字符串
	  * @param path 图片路径
	  * @return
	  */
	 public static boolean base64StrToImage(String imgStr, String path) {
	  if (imgStr == null)
		  return false;
	  BASE64Decoder decoder = new BASE64Decoder();
	  try {
	   // 解密
	   byte[] b = decoder.decodeBuffer(imgStr);
	   System.out.println(b);
	   // 处理数据
	   for (int i = 0; i < b.length; ++i) {
	    if (b[i] < 0) {
	     b[i] += 256;
	    }
	   }
	   //文件夹不存在则自动创建
	   File tempFile = new File(path);
	   if (!tempFile.getParentFile().exists()) {
	    tempFile.getParentFile().mkdirs();
	   }
	   OutputStream out = new FileOutputStream(tempFile);
	   out.write(b);
	   out.flush();
	   out.close();
	   return true;
	  } catch (Exception e) {
	   return false;
	  }
	 }

}
