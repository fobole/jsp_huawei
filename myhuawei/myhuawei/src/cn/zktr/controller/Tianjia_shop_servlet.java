package cn.zktr.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zktr.model.dao.Hou_tianjia_shop_dao;
import cn.zktr.utilts.BaseServlet;

/**
 * Servlet implementation class Tianjia_shop_servlet
 */
@WebServlet("/tianjia_shop_servlet")
public class Tianjia_shop_servlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	Hou_tianjia_shop_dao tdao=new Hou_tianjia_shop_dao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Tianjia_shop_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				String[] cname = request.getParameterValues("cname");
				
				//颜色图
				String[] cimg= request.getParameterValues("cimg");
				
				//配置
				String[] conname = request.getParameterValues("conname");
				 String[] conjia = request.getParameterValues("conjia");
				 String[] kucun = request.getParameterValues("kucun");
	
				//String 
				 // = req.getParameter("gid");
		        String gname = request.getParameter("gname");
		        String smid = request.getParameter("smid");
		        String gtu = request.getParameter("zutu1");
		        String gjiage = conjia[0];
		        String gkey = request.getParameter("gkey");
		        String gnew = request.getParameter("gnew");
		        String ghot = request.getParameter("ghot");
		        System.out.println(gname+" "+smid+" "+gtu+" "+gkey+" "+gnew+" "+ghot+" ");
		        
		        
		        String[] xiangtu=request.getParameterValues("xiangtu");
		        
		        
		        String zutu2 = request.getParameter("zutu2");
		        System.out.println(zutu2+"规格");
		        String zutu3 = request.getParameter("zutu3");
		        System.out.println(zutu2+"包装");
		        
		        try {
					tdao.goods(gname,Integer.parseInt(smid), gtu, Double.parseDouble(gjiage), gkey, Integer.parseInt(gnew), Integer.parseInt(ghot));
					int gid=tdao.gid(gname, gkey);
					System.out.println(gid+"商品id");
					//存详情图
					for (int xt = 0; xt < xiangtu.length; xt++) {
						tdao.xiangtu(xiangtu[xt], gid, 1);
						
					}
					// 规格
					tdao.xiangtu(zutu2, gid, 2);
					
					// 包装
					tdao.xiangtu(zutu3, gid, 3);
		        
					 for(int c=0;c<cname.length;c++){
		                    // 存颜色
						 	tdao.color(cname[c], cimg[0], gid);
						 	int cid=tdao.cid(cname[0], gid);
						 	System.out.println("颜色id"+cid);
						 	//存版本
						 	for(int con=0;con<conname.length;con++){
			                    System.out.println("配置名称"+con+"配置价格");
			                    tdao.con(conname[con], cid, Double.parseDouble(conjia[con]), Integer.parseInt(kucun[con]));
					        }
						 	//存图片
						 	for(int p=0;p<cimg.length;p++){
			                    System.out.println(cimg[p]);
			                    tdao.img(cimg[p], cid, 0);
					        }
				     }
					 
					 
					 String[] cname2 = request.getParameterValues("cname2");
						
					//颜色图
					String[] cimg2= request.getParameterValues("cimg2");
					 if(cname2!=null) {
						 for(int c=0;c<cname2.length;c++){
			                    // 存颜色
							 	tdao.color(cname2[c], cimg2[0], gid);
							 	int cid=tdao.cid(cname2[0], gid);
							 	System.out.println("颜色id"+cid);
							 	//存版本
							 	for(int con=0;con<conname.length;con++){
				                    System.out.println("配置名称"+con+"配置价格");
				                    tdao.con(conname[con], cid, Double.parseDouble(conjia[con]), Integer.parseInt(kucun[con]));
						        }
							 	//存图片
							 	for(int p=0;p<cimg2.length;p++){
				                    System.out.println(cimg2[p]);
				                    tdao.img(cimg2[p], cid, 0);
						        }
					     }
					 }
					 
					 
					 String[] cname3 = request.getParameterValues("cname3");
						
						//颜色图
						String[] cimg3= request.getParameterValues("cimg3");
						 if(cname3!=null) {
							 for(int c=0;c<cname3.length;c++){
				                    // 存颜色
								 	tdao.color(cname3[c], cimg3[0], gid);
								 	int cid=tdao.cid(cname3[0], gid);
								 	System.out.println("颜色id"+cid);
								 	//存版本
								 	for(int con=0;con<conname.length;con++){
					                    System.out.println("配置名称"+con+"配置价格");
					                    tdao.con(conname[con], cid, Double.parseDouble(conjia[con]), Integer.parseInt(kucun[con]));
							        }
								 	//存图片
								 	for(int p=0;p<cimg3.length;p++){
					                    System.out.println(cimg3[p]);
					                    tdao.img(cimg3[p], cid, 0);
							        }
						     }
						 }
				        
				        
				       
				        
				        
				        //System.out.println(cname+" "+conname+" "+conjia);
				       
						//这个content就可以作为产品的详细描述直接显示在你的产品页
				       // String content = request.getParameter("editorValue");
						//System.out.println("编辑器中的内容是："+content);
		        
		        
		        
		        
		        
		        
		        
		        } catch (NumberFormatException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		       
		       
		       // this.forward("hou/add_shop");
		        this.redirect("/table_shopservlet");
		        
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
