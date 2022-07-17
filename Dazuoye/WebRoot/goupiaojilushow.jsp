<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page  import="java.sql.*" %>
<%@page import="Bbean.goupiaojiluBean"%>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

	<title>售卖系统</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">

    <!-- Add custom CSS here -->
    <link href="css/sb-admin.css" rel="stylesheet">
    <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
    <!--  -->
 
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="css/jquery-ui.min.css" rel="stylesheet">
<style>
 	.ffont {
 		font-size:16px;
 	}

</style>

  </head>
  <body> 
    <div id="wrapper">

      <!-- Sidebar -->
      <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <!-- Brand and toggle get grouped for better mobile display -->
		 <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle ="collapse" data-target=".navbar-ex1-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>

        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse navbar-ex1-collapse">
          <ul class="nav navbar-nav side-nav">
            <li class="ffont"><a href="index.jsp">首  页</a></li>
            <li class="ffont"><a href="sell.jsp">售卖</a></li>
            
            <li class="dropdown ">
              <a href="#" class="dropdown-toggle  ffont" data-toggle="dropdown" >电影类型</a>
              <ul class="dropdown-menu">
                <li class="ffont"><a href="goupiao1.jsp">动作类</a></li>
                <li class="ffont"><a href="goupiao2.jsp">爱情类</a></li>
                <li class="ffont"><a href="goupiao3.jsp">动画类</a></li>
              </ul>
            </li>
            
          <li class="ffont active"><a href="goupiaojilushow.jsp">购票管理</a></li>
           <li class="ffont"><a href="info.jsp">个人信息</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle ffont" data-toggle="dropdown" >地图</a>
              <ul class="dropdown-menu">
                <li class="ffont"><a href="map.jsp">烟台市</a></li>
                <li class="ffont"><a href="map1.jsp">浏览器定位</a></li>
                <li class="ffont"><a href="map2.jsp">输入</a></li>
                <li class="ffont"><a href="map3.jsp">路线</a></li>
              </ul>
            </li>
          </ul>

        </div><!-- /.navbar-collapse -->
      </nav>

      <div id="page-wrapper">
	       <div class="row">
          <div class="col-lg-12">
            <h1>售卖系统<small>A Blank Slate</small></h1>
            <ol class="breadcrumb">
              <li><a href="goupiaojilushow.jsp"><i class="icon-dashboard"></i>购票管理</a></li>
              <li class="active"><i class="icon-file-alt"></i></li>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<%
			String username=(String)session.getAttribute("username");
			%>
       <li style="text-align:right">欢迎<%=username%>用户登录在线电影票售卖系统</li>
            </ol>
            
          </div>
        </div><!-- /.row -->
        <!--  -->
	    
<center>
	<table class="table table-bordered table-hover table-striped tablesorter" border="1" bgcolor="#ccceee" align="center">
	<tr class="active">
		<th width="45" align="center">电影名</th>
		<th width="87" align="center">电影院名</th>
		<th width="105" align="center">电影院房屋</th>
		<th width="87" align="center">房屋排</th>
		<th width="87" align="center">房屋列</th>
		<th width="87" align="center">退票</th>
		<th width="87" align="center">改票</th>
		
	</tr>
		<%
	  		Connection con=null;
			Statement stmt=null;
			ResultSet rs=null;
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/dazuoye?useUnicode=true&characterEncoding=gbk";
			con=DriverManager.getConnection(url,"root","123456");
			stmt=con.createStatement();
			String sql="select * from jilu where username='"+username+"'";			
			rs=stmt.executeQuery(sql);
			while(rs.next()){
			response.setCharacterEncoding("UTF-8");
			
			String moviename=rs.getString("moviename");
			moviename =java.net.URLEncoder.encode(moviename, "UTF-8");
			String cinemaname=rs.getString("cinemaname");
			cinemaname =java.net.URLEncoder.encode(cinemaname, "UTF-8");
			String housenum=rs.getString("housenum");
			housenum =java.net.URLEncoder.encode(housenum, "UTF-8");
			String row=rs.getString("row");
			row =java.net.URLEncoder.encode(row, "UTF-8");
			String col=rs.getString("col");
			col =java.net.URLEncoder.encode(col, "UTF-8");
		
		%>

		<tr class="success">
<td><%=rs.getString("moviename") %></td>
<td><%=rs.getString("cinemaname") %></td>
<td><%=rs.getString("housenum") %></td>
<td><%=rs.getString("row") %></td>
<td><%=rs.getString("col") %></td>
<td><a href="deletecheck.jsp?moviename=<%=moviename%>&cinemaname=<%=cinemaname%>&housenum=<%=housenum%>&row=<%=row%>&col=<%=col%>">退票</a></td>
<td><a href="updatecheck.jsp?moviename=<%=moviename%>&cinemaname=<%=cinemaname%>&housenum=<%=housenum%>&row=<%=row%>&col=<%=col%>">改票</a></td>
		</tr>
		<%
			}
		rs.close();
		stmt.close();
		con.close();
			
		%>
	</table>
	<hr>

	</center>

   	 
    	<hr>
	</div><!-- /#page-wrapper -->
</div><!-- /#wrapper -->


    <!-- JavaScript -->
    <script src="js/jquery-1.10.2.js"></script>
    <script src="js/bootstrap.js"></script>
    
    <!--  -->
    <script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/jquery-ui.min.js"></script>
	<script src="js/tether.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
		
</body>
</html>
