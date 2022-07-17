<%@ page language="java" import="java.sql.* " pageEncoding="UTF-8"%>
<html>
  <head>
 
    <title>修改数据处理界面</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
  		<%
			Connection con=null;
			Statement stmt=null;
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/dazuoye?useUnicode=true&characterEncoding=gbk";
			con=DriverManager.getConnection(url,"root","123456");
			stmt=con.createStatement();		
						
			
			String movien=request.getParameter("movien");
	  		byte b[]=movien.getBytes("ISO-8859-1");
	  		movien=new String(b,"UTF-8");
	  		
	  		
	  		String cineman=request.getParameter("cineman");
	  		byte b0[]=cineman.getBytes("ISO-8859-1");
	  		cineman=new String(b0,"UTF-8");
	  		
	  		String housen=request.getParameter("housen");
	  		byte b01[]=housen.getBytes("ISO-8859-1");
	  		housen=new String(b01,"UTF-8");
	  		
	  		String ro=request.getParameter("ro");
	  		byte b02[]=ro.getBytes("ISO-8859-1");
	  		ro=new String(b02,"UTF-8");
	  		
	  		String co=request.getParameter("co");
	  		byte b03[]=co.getBytes("ISO-8859-1");
	  		co=new String(b03,"UTF-8");
	  		
	  		
	  		
	  		String cinemaname=request.getParameter("cinemaname");
	  		byte b1[]=cinemaname.getBytes("ISO-8859-1");
	  		cinemaname=new String(b1,"UTF-8");
	  		
	  		String housenum=request.getParameter("housenum");
	  		byte b2[]=housenum.getBytes("ISO-8859-1");
	  		housenum=new String(b2,"UTF-8");
	  		
	  		String row=request.getParameter("row");
	  		byte b3[]=row.getBytes("ISO-8859-1");

	  		
	  		String col=request.getParameter("col");
	  		byte b4[]=col.getBytes("ISO-8859-1");
	  		col=new String(b4,"UTF-8");
	  		
			String sql="update jilu set cinemaname='"+cinemaname+"' , housenum="+housenum+" , row="+row+" ,  col="+col+" where moviename ='"+movien+"'and cinemaname='"+cineman+"' and housenum="+housen+" and row="+ro+" and col="+co+" ";
			stmt.executeUpdate(sql);
			
		    stmt.close();
		    con.close();
		    response.sendRedirect("goupiaojilushow.jsp");
		%>
		
  </body>
</html>
