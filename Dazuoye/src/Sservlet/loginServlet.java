package Sservlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.*;

/**
 * Servlet implementation class loginServlet
 */
@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		   String user=new String(request.getParameter("name").getBytes("ISO-8859-1"),"UTF-8");
		   String pwd=new String(request.getParameter("pwd").getBytes("ISO-8859-1"),"UTF-8");
		   String val=new String(request.getParameter("sel").getBytes("ISO-8859-1"),"UTF-8");
		   
			//response.setCharacterEncoding("UTF-8");
			//user =java.net.URLEncoder.encode(user, "UTF-8");	    
		   	Connection con=null;  
			try {
				Class.forName("com.mysql.jdbc.Driver");
				String url="jdbc:mysql://localhost:3306/dazuoye?useUnicode=true&characterEncoding=gbk";
				con=DriverManager.getConnection(url,"root","123456");
				PreparedStatement stmt = con.prepareStatement("select * from user where Name='"+user+"' and Password ='"+pwd+"' ");
				ResultSet rs=stmt.executeQuery();			
				if(rs.next()){		        	  
		        	  HttpSession session=request.getSession();
		              session.setAttribute("username", user);
		              if(val.equalsIgnoreCase("u")){
		            	  response.sendRedirect("sell.jsp"); //解决乱码
		              }else if(val.equalsIgnoreCase("g")){
		            	  response.sendRedirect("http://localhost:8080/Dazuoye/glindex.jsp"); //解决乱码
		              }else{
		            	  response.sendRedirect("sell.jsp"); //解决乱码
		              }
		              
					  
		          }else{
		              response.sendRedirect("login.jsp");//密码不对返回到登陆  
		          }
			     rs.close();
			     stmt.close();
			     
			     
			     con.close();
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
