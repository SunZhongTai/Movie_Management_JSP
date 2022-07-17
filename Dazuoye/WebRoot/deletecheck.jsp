<%@ page language="java" import="java.sql.* " pageEncoding="UTF-8"%>
<html>
  <head>
 
    <title>删除数据处理界面</title>
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
			
			String moviename=request.getParameter("moviename");	
			moviename=java.net.URLDecoder.decode(moviename, "UTF-8");
			System.out.println(moviename);
			
			String cinemaname=request.getParameter("cinemaname");	
			cinemaname=java.net.URLDecoder.decode(cinemaname, "UTF-8");
			System.out.println(cinemaname);
			
			String housenum=request.getParameter("housenum");	
			housenum=java.net.URLDecoder.decode(housenum, "UTF-8");
			System.out.println(housenum);
			
			String row=request.getParameter("row");	
			row=java.net.URLDecoder.decode(row, "UTF-8");
			System.out.println(row);
			
			String col=request.getParameter("col");	
			col=java.net.URLDecoder.decode(col, "UTF-8");
			System.out.println(col);
			
			
			String sql="delete from jilu where moviename ='"+moviename+"'and cinemaname='"+cinemaname+"' and housenum="+housenum+" and row="+row+" and col="+col+" "; 
			stmt.executeUpdate(sql);
			
		    stmt.close();
		    con.close();
		    response.sendRedirect("goupiaojilushow.jsp");
		%>
		
  </body>
</html>
