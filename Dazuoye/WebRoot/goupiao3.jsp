<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
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
            <li class=" ffont"><a href="sell.jsp">售卖</a></li>
            
            <li class="dropdown active">
              <a href="#" class="dropdown-toggle  ffont" data-toggle="dropdown" >电影类型</a>
              <ul class="dropdown-menu">
                <li class="ffont"><a href="goupiao1.jsp">动作类</a></li>
                <li class="ffont"><a href="goupiao2.jsp">爱情类</a></li>
                <li class="ffont"><a href="goupiao3.jsp">动画类</a></li>
              </ul>
            </li>
            
          <li class="ffont"><a href="goupiaojilushow.jsp">购票管理</a></li>
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
	    <br>
        <div class="row">
          <div class="col-lg-12">
            <h1>售卖系统<small>A Blank Slate</small></h1>
            <ol class="breadcrumb">
              <li><a href="goupiao3.jsp"><i class="icon-dashboard"></i>电影类型</a></li>
              <li class="active"><i class="icon-file-alt"></i>动画片</li>
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


	<!--  <input  type = "button" value = "你的购票记录" onclick = "window.location.href='goupiaojilu.jsp'">-->
	<p style="text-align:left;">正在热映电影</p>
	<hr>	
	<div class="row text-center card-deck mt-3">

	<article class="card mb-5 ml-5 mr-3 card-outline-info">
			<img  src="images/in5.jpg">
			<div class="card-block">
				<h4 class="card-title">疯狂动物城</h4>
			</div>
			<input type="button" value="点此购票" onclick="window.location.href='goupiaojilu3.jsp?moviename=31'">
	  </article>	  	 
	  	<article class="card mb-5 ml-3 mr-3 card-outline-info">
			<img class="img-fluid" src="images/in2.jpg">
			<div class="card-block">
				<h4 class="card-title">寻梦环游记</h4>
			</div>
				<input type="button" value="点此购票" onclick="window.location.href='goupiaojilu3.jsp?moviename=32'">
	  </article>	  
	  	<article class="card mb-5 ml-auto mr-5 card-outline-info">
			<img class="img-fluid" src="images/in3.jpg">
			<div class="card-block">
				<h4 class="card-title">烟花</h4>
			</div>
				<input type="button" value="点此购票" onclick="window.location.href='goupiaojilu3.jsp?moviename=33'">
	  </article>
</div>

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