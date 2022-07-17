<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page  import="java.sql.*" %>


<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

	<title>管理员系统</title>

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
            <li class="ffont "><a href="glindex.jsp">上传电影</a></li>            
            <li class="ffont"><a href="glpiao.jsp">购票管理</a></li>
            <li class="ffont active"><a href="glinfo.jsp">个人信息</a></li>  
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
            <h1>个人信息<small>A Blank Slate</small></h1>
            <ol class="breadcrumb">
              <li><a href="glinfo.jsp"><i class="icon-dashboard"></i>个人信息</a></li>
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
       <li style="text-align:right">欢迎<%=username%>管理员登录在线电影票售卖系统</li>
            </ol>
            
          </div>
        </div><!-- /.row -->
        <!--  -->
	    
	    
	    <%
	    
		Connection con=null;
		Statement stmt=null;
		String user=null;
		String pwd=null;
		String lx=null;
		String mail=null;
		
		Class.forName("com.mysql.jdbc.Driver");
		String url="jdbc:mysql://localhost:3306/dazuoye?useUnicode=true&characterEncoding=gbk";
		con=DriverManager.getConnection(url,"root","123456");
		stmt=con.createStatement();
		String sql="select * from user where Name='"+username+"'";
		ResultSet rs=stmt.executeQuery(sql);
		while(rs.next()){
			user=rs.getString("Name");
			pwd=rs.getString("Password");
			lx=rs.getString("value");
			mail=rs.getString("mail");
		}
		if(lx.equalsIgnoreCase("u")){
			lx="用户";
		}else{
			lx="管理员";
		}
	    %>
	    <hr>
	     <div class="row">
          <div class="col-lg-4">
            <div class="alert alert-dismissable alert-danger">
              <button type="button" class="close" data-dismiss="alert">&times;</button>
              <strong>你的名字为</strong> <a href="#" class="alert-link"></a><%=user %>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="alert alert-dismissable alert-success">
              <button type="button" class="close" data-dismiss="alert">&times;</button>
              <strong>你的密码为</strong><a href="#" class="alert-link"></a><%=pwd %>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="alert alert-dismissable alert-info">
              <button type="button" class="close" data-dismiss="alert">&times;</button>
              <strong>你的邮箱为</strong><a href="#" class="alert-link"></a><%=mail %>
            </div>
          </div>
        </div><!-- /.row -->
		<hr>
		<form action="http://localhost:8080/Dazuoye/glmail.jsp" method="get">
		 <p>
        <label for="info">对电影及本系统的评价与建议:</label><br>
         <textarea name="pingjia"  id="pingjia" style="width:1000px;height:300px;"></textarea>  
      	</p> 
      		
      	<center>
			<table>
				<tr>
				 	<td colspan = "2" align = "center">
						<input type="submit" class="btn btn-primary" name="Submit" value="发送邮件" onclick="javascrtpt:window.location.href='http://localhost:8080/Dazuoye/glmail.jsp';"/>
						
						<input type="submit" class="btn btn-primary" name="Submit" value="退出系统" onclick="javascrtpt:window.location.href='http://localhost:8080/Dazuoye/index.jsp';"/>
					</td>
				</tr>
			</table>
		</center>
		</form>

		

	
	
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
