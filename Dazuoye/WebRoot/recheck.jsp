<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
<html>
  <head>  
    <title>注册验证界面</title>    
  </head>
  <body>
    <%      
   	String user = new String(request.getParameter("username").getBytes("ISO-8859-1"),"UTF-8");    
   	String pwd = request.getParameter("password");
   	String pnum=request.getParameter("phonenum");
   	String value="u";
   	Class.forName("com.mysql.jdbc.Driver");
	Connection con=null;			
	String url="jdbc:mysql://localhost:3306/dazuoye?useUnicode=true&characterEncoding=gbk";
	con=DriverManager.getConnection(url,"root","123456");		
    PreparedStatement stmt = con.prepareStatement("select * from user where Name='"+user+"'");
    ResultSet rs = stmt.executeQuery();
      if(rs.next()){
          out.println("<script language='javascript'>alert('该用户已存在，请重新注册！');window.location.href='register.jsp';</script>");
      }else{
          PreparedStatement stmt1 = con.prepareStatement("Insert into user values('"+ user+"','"+value+"','"+pwd+"',"+pnum+")");
              int rst = stmt1.executeUpdate();
              if (rst != 0){
                 out.println("<script language='javascript'>alert('用户注册成功!请返回登录！');window.location.href='index.jsp';</script>");
              }else{
                 out.println("<script language='javascript'>alert('用户注册失败！请重新注册！');window.location.href='register.jsp';</script>");  
              }
      }
     %>
  </body>
</html>
