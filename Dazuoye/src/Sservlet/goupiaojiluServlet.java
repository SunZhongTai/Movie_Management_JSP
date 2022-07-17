package Sservlet;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import Bbean.goupiaojiluBean;
import java.sql.*;

/**
 * Servlet implementation class goupiaojiluServlet
 */
@WebServlet("/goupiaojiluServlet")
public class goupiaojiluServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**   
     * @see HttpServlet#HttpServlet()
     */
    public goupiaojiluServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {  
		String username=new String(request.getParameter("username").getBytes("ISO-8859-1"),"UTF-8");
		String s=new String(request.getParameter("se").getBytes("ISO-8859-1"),"UTF-8");
    	String s0=new String(request.getParameter("se0").getBytes("ISO-8859-1"),"UTF-8");
    	String s1=new String(request.getParameter("se1").getBytes("ISO-8859-1"),"UTF-8");
    	String s2=new String(request.getParameter("se2").getBytes("ISO-8859-1"),"UTF-8");
    	String s3=new String(request.getParameter("se3").getBytes("ISO-8859-1"),"UTF-8");
    	int  is1=Integer.parseInt(request.getParameter("se1"));
    	int  is2=Integer.parseInt(request.getParameter("se2"));
    	int  is3=Integer.parseInt(request.getParameter("se3"));
    	
    	//
    	String sss = request.getParameter("sss");
    	String sss0 = request.getParameter("sss0");
    	String sss1 = request.getParameter("sss1");
    	String sss2 = request.getParameter("sss2");
    	System.out.println(sss+"____"+sss0+"____");

    
    	Connection con=null;
    	Connection con1=null;
		Statement stmt1=null;
		try {
		Class.forName("com.mysql.jdbc.Driver");
		String url="jdbc:mysql://localhost:3306/dazuoye?useUnicode=true&characterEncoding=gbk";
		con=DriverManager.getConnection(url,"root","123456");
		con1=DriverManager.getConnection(url,"root","123456");
		PreparedStatement stmt = con.prepareStatement("select *  from  jilu  where  moviename='"+s+"' and cinemaname='"+s0+"' and housenum="+s1+" and row="+s2+" and col="+s3+" ");
		ResultSet rs=stmt.executeQuery();
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		
		if(rs.next()){
			System.out.println("con...con..con...con..con..con...con........");
			response.getWriter().print("这张票已经被选了!");
		}else{
			stmt1=con1.createStatement();
			String sql1="insert into jilu values('"+username+"','"+s+"','"+s0+"',"+s1+","+s2+","+s3+")";
			stmt1.executeUpdate(sql1);
		}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				stmt1.close();
				con1.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	
		}
		

		goupiaojiluBean jilu=new goupiaojiluBean();
		jilu.setMoviename(s);
		jilu.setCinemaname(s0);
		jilu.setHousenum(is1);
		jilu.setRow(is2);
		jilu.setCol(is3);
		HttpSession session=request.getSession();
		ArrayList<goupiaojiluBean> goupiao =new ArrayList<goupiaojiluBean>();
		session.setAttribute("goupiao", goupiao);
		goupiao.add(jilu);
				
		response.sendRedirect("http://localhost:8080/Dazuoye/sell.jsp");
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
