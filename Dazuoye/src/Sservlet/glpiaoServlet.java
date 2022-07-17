package Sservlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;
import java.util.ArrayList;

import Bbean.gljlBean;
import Bbean.goupiaojiluBean;

/**
 * Servlet implementation class glpiaoServlet
 */
@WebServlet("/glpiaoServlet")
public class glpiaoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public glpiaoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username=new String(request.getParameter("un").getBytes("ISO-8859-1"),"UTF-8");
		HttpSession session=request.getSession();
		session.setAttribute("un", username);
		
		System.out.println("88888888"+username);
			Connection con=null;
			Statement stmt=null;
			int dongzuo=0;
			int aiqing=0;
			int donghua=0;
			int dz1=0;
			int dz2=0;
			int dz3=0;
			int aq1=0;
			int aq2=0;
			int aq3=0;
			int dh1=0;
			int dh2=0;
			int dh3=0;
			int wanda=0;
			int xingfu=0;
			int baisheng=0;
			String mn,cn=null;
		 try{		 	  
	    		Class.forName("com.mysql.jdbc.Driver");
	    		String url="jdbc:mysql://localhost:3306/dazuoye?useUnicode=true&characterEncoding=gbk";
	    		con=DriverManager.getConnection(url,"root","123456");
	    		stmt=con.createStatement();
	    		String sql="select *  from  jilu  where username='"+username+"' ";
	    		ResultSet rs=stmt.executeQuery(sql);
	    			while(rs.next()){
	    				mn=rs.getString("moviename");
	    				cn=rs.getString("cinemaname");
	    				System.out.println("&&&&&&&&&&&&&&&&&");
	    				System.out.println(mn+"*****000*****"+cn);
	    				
						if(mn.equalsIgnoreCase("正义联盟")){
	    					dongzuo++;
	    					dz1++;
	    				}else if(mn.equalsIgnoreCase("复仇者联盟3")){
	    					dongzuo++;
	    					dz2++;
	    				}else if(mn.equalsIgnoreCase("侏罗纪世界2")){
	    					dongzuo++;
	    					dz3++;
	    				}else if(mn.equalsIgnoreCase("微微一笑很倾城")){
	    					aiqing++;
	    					aq1++;
	    				}else if(mn.equalsIgnoreCase("请以你的名字呼唤我")){
	    					aiqing++;
	    					aq2++;
	    				}else if(mn.equalsIgnoreCase("怦然心动")){
	    					aiqing++;
	    					aq3++;
	    				}else if(mn.equalsIgnoreCase("疯狂动物城")){
	    					donghua++;
	    					dh1++;
	    				}else if(mn.equalsIgnoreCase("寻梦环游记")){
	    					donghua++;
	    					dh2++;
	    				}else{
	    					donghua++;
	    					dh3++;
	    				}
						
						if(cn.equalsIgnoreCase("万达影院")){
							wanda++;
						}else if(cn.equalsIgnoreCase("幸福蓝海")){
							xingfu++;
						}else {
							baisheng++;
						}
	    					
	    			}					    	    			    				    				    				    				    			


			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				try {
					stmt.close();
					con.close();										
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}		
			}//fina	
 		System.out.println("**************1*************"+dongzuo+"   "+aiqing+"   "+donghua);
 		System.out.println("**************2*************"+dz1+"   "+dz2+"   "+dz3);
 		System.out.println("**************3*************"+aq1+"   "+aq2+"   "+aq3);
 		System.out.println("**************4*************"+dh1+"   "+dh2+"   "+dh3);
 		System.out.println(wanda+"      "+xingfu+"   "+baisheng);
 		System.out.println("*************5************");
			Connection con1=null;
			Connection con2=null;
			Connection con3=null;
			Statement stmt2=null;
			Statement stmt3=null;
		 	try {
				Class.forName("com.mysql.jdbc.Driver");
				String url="jdbc:mysql://localhost:3306/dazuoye?useUnicode=true&characterEncoding=gbk";
				con1=DriverManager.getConnection(url,"root","123456");
				con2=DriverManager.getConnection(url,"root","123456");
				con3=DriverManager.getConnection(url,"root","123456");
				PreparedStatement stmt1 = con1.prepareStatement("select *  from  gljilu  where username='"+username+"' ");
	    		ResultSet rs1=stmt1.executeQuery();
	    		if(rs1.next()){
	    			stmt2=con2.createStatement();
	    			String sql1="update gljilu set dongzuo="+dongzuo+","
	    					+ " aiqing="+aiqing+", donghua="+donghua+","
	    							+ " dz1="+dz1+" ,dz2="+dz2+" ,dz3="+dz3+", "
	    									+ "aq1="+aq1+", aq2="+aq2+", aq3="+aq3+", "
	    											+ "dh1="+dh1+", dh2="+dh2+", dh3="+dh3+", "
	    													+ "wanda="+wanda+", xingfu="+xingfu+", "
	    															+ "baisheng="+baisheng+" where username='"+username+"' ";
	    			stmt2.executeUpdate(sql1);	    				
		    		stmt2.close();
		    		con2.close();
	    			
	    		}
	    		
	    		else{
	    			stmt3=con3.createStatement();
	    			String sql2="insert into gljilu values('"+username+"' ,"+dongzuo+","+aiqing+", "+donghua+","+dz1+","+dz2+","+dz3+", "+aq1+", "+aq2+", "+aq3+", "+dh1+", "+dh2+","+dh3+","+wanda+","+xingfu+","+baisheng+")";
	    			stmt3.executeUpdate(sql2);
		    		stmt3.close();
		    		con3.close();
	    		}
	    		
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 			
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

