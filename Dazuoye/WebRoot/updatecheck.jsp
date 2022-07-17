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
			
			String sql="select * from jilu where moviename ='"+moviename+"'and cinemaname='"+cinemaname+"' and housenum="+housenum+" and row="+row+" and col="+col+" ";
			ResultSet rs=stmt.executeQuery(sql);
			rs.first();
		%>
<center>
  	<form action="reupdatecheck.jsp" method="post">
    	<h2>输入你要修改票的信息</h2>
    	<hr>
    	<table>    
    	
    	<td><input type="hidden" name="movien" value=<%=rs.getString("moviename")%>></td>
    	<td><input type="hidden" name="cineman" value=<%=rs.getString("cinemaname")%>></td>
    	<td><input type="hidden" name="housen" value=<%=rs.getString("housenum")%>></td>
    	<td><input type="hidden" name="ro" value=<%=rs.getString("row")%>></td>
    	<td><input type="hidden" name="co" value=<%=rs.getString("col")%>></td>
    	
    			
    		 <tr>
    			<td>电影院名</td>
    			<td><input type="text" name="cinemaname" value=<%=rs.getString("cinemaname")%>></td>
    		</tr>
    		
    		 <tr>
    			<td>房屋号</td>
    			<td><input type="text" name="housenum" value=<%=rs.getString("housenum")%>></td>
    		</tr>
    		
    		  <tr>
    			<td>房屋的排</td>
    			<td><input type="text" name="row" value=<%=rs.getString("row")%>></td>
    		</tr>
    		<tr>
    			<td>房屋的列</td>
    			<td><input type="text" name="col" value=<%=rs.getString("col")%>></td>
    		</tr>
    		
    		<tr align="center">
    			<td colspan="2">
    				<input name="sure" type="submit" value="确定">&nbsp;&nbsp;&nbsp;
    			</td>
    		</tr>
    	</table>
    	</form>
    </center>
		<% 			
			rs.close();
		    stmt.close();
		    con.close();
		%>
		
  </body>
</html>
