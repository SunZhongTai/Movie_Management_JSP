<%@ page language="java" import="java.sql.* " pageEncoding="UTF-8"%>
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
	.fffh1 {
 	font-size:28px;
 	text-align:center;
 	}
 	
 	.fffp {
 	text-align:left;
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
              <li><a href="index.html"><i class="icon-dashboard"></i>购票</a></li>
              <li class="active"><i class="icon-file-alt">动画类</i></li>
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
	<%
		String mn=request.getParameter("moviename");
		if(mn.equalsIgnoreCase("31")){
				mn="疯狂动物城";	
	%>
<div class="row text-center">
	<div class="col-sm-11">
		<div class="row">
		<article class="col-md-4">
			<img src="images/in5.jpg">
			<h3>疯狂动物城</h3>
		</article>
		<article class="col-md-8">
		
		  <div class="panel panel-primary">
		  	 <div class="panel-heading">
				<h1 class="fffh1">疯狂动物城 (2016)</h1>
				<h2>Zootopia</h2>
				</div>
			<div class="panel-body">
				<h3 class="fffh3">108分钟 - 动画/冒险/喜剧 - 2016年3月4日中国上映 - 2D/3D/IMAX3D/中国巨幕</h3>
			</div>
			</div>
		
		<div class="panel panel-success">
			<div class="panel-heading">
		<p class="fffp">影片故事发生在欣欣向荣的动物乌托邦，在这里各种动物和平共处。尼克·王尔德是只说话速度特别溜、有着宏图伟愿的狐狸，
		然而他却被栽赃嫁祸，不得不踏上亡命之旅，兔警官朱迪上尉负责追捕他。当两人同时卷入意想不到的阴谋时，他们不得不联手合作成为战友。
		两位天敌是否能成为最好的朋友呢？</p>
		</div>
		</div>
	
		<div class="panel panel-info">
			<div class="panel-heading">
		<p class="fffp">兔警官朱迪（金妮弗·古德温 配音）为了证明自己，决心侦破一桩神秘案件；即使要被迫与口若悬河、谎技高超的狐尼克（杰森·贝特曼 配音）联手合作，她也在所不惜。</p>
		</div>
		</div>
		
		<div class="row">
		<div class="col-lg-6">   
		<div class="panel panel-danger">
			<div class="panel-heading">
		<p class="fffp">导演:&nbsp;拜恩·霍华德 杰拉德·布什</p>
		<hr style="border : 1px dashed ;" />
		<p class="fffp">编剧:&nbsp;杰拉德·布什 菲尔·约翰斯东</p>
		</div>
		</div>
		</div>
		
		<div class="col-lg-6">   
		<div class="panel panel-warning">
		<div class="panel-heading">
		<p class="fffp">国家地区:&nbsp;美国</p>
		<hr style="border : 1px dashed ;" />
		<p class="fffp">发行公司:&nbsp;中国电影集团公司</p>
		</div>
		</div>
		</div>
		</div>
		
		</article>	
		</div><!--row1-->
	</div>
</div>
	<%
			
		}else if(mn.equalsIgnoreCase("32")){
				mn="寻梦环游记";
	%>
<div class="row text-center">
	<div class="col-sm-11">
		<div class="row">
		<article class="col-md-4">
			<img src="images/in2.jpg">
			<h3>寻梦环游记</h3>
		</article>
		<article class="col-md-8">
		
		  <div class="panel panel-primary">
		  	 <div class="panel-heading">
				<h1 class="fffh1">寻梦环游记 (2017)</h1>
				<h2>Coco</h2>
				</div>
			<div class="panel-body">
				<h3 class="fffh3">109分钟 - 动画/冒险/喜剧 - 2017年11月24日中国上映 - 3D/中国巨幕</h3>
			</div>
			</div>
		
		<div class="panel panel-success">
			<div class="panel-heading">
		<p class="fffp">影片讲述一个鞋匠家庭出身的12岁小男孩米格尔，自幼有一个音乐梦，但音乐却是被家庭所禁止的，他们认为自己被音乐诅咒了。
		在米格尔秘密追寻音乐梦时，不小心进入了死亡之地，在这里他遇见了家人们的灵魂，并得到了他们的祝福去歌唱，最终重返人间。</p>
		</div>
		</div>
	
		<div class="panel panel-info">
			<div class="panel-heading">
		<p class="fffp">米格遇见了魅力十足的落魄乐手埃克托(盖尔·加西亚·贝纳尔 配音)，他们一起踏上了探寻米格家族不为人知往事的奇妙之旅，并开启了一段震撼心灵、感动非凡、永生难忘的旅程。</p>
		</div>
		</div>
		
		<div class="row">
		<div class="col-lg-6">   
		<div class="panel panel-danger">
			<div class="panel-heading">
		<p class="fffp">导演:&nbsp;李·昂克里奇 阿德里安·莫里纳</p>
		<hr style="border : 1px dashed ;" />
		<p class="fffp">编剧:&nbsp;阿德里安·莫里纳 李·昂克里奇</p>
		</div>
		</div>
		</div>
		
		<div class="col-lg-6">   
		<div class="panel panel-warning">
		<div class="panel-heading">
		<p class="fffp">国家地区:&nbsp;美国</p>
		<hr style="border : 1px dashed ;" />
		<p class="fffp">发行公司:&nbsp;华特·迪士尼电影工作室</p>
		</div>
		</div>
		</div>
		</div>
		
		</article>	
		</div><!--row1-->
	</div>
</div>
	<%
		}else{
			    mn="烟花";
	%>
<div class="row text-center">
	<div class="col-sm-11">
		<div class="row">
		<article class="col-md-4">
			<img src="images/in3.jpg">
			<h3>烟花</h3>
		</article>
		<article class="col-md-8">
		
		  <div class="panel panel-primary">
		  	 <div class="panel-heading">
				<h1 class="fffh1">烟花 (2017)</h1>
				<h2>Skyrockets, Watch from Below? Watch from the Side?</h2>
				</div>
			<div class="panel-body">
				<h3 class="fffh3">91分钟 - 动画/剧情/爱情 - 2017年12月1日中国上映 - 3D</h3>
			</div>
			</div>
		
		<div class="panel panel-success">
			<div class="panel-heading">
		<p class="fffp">“如果那时是我赢得了比赛”心烦意乱的典道将在泳池中捡到的玉丢了出去。等回过神来，
		典道和祐介正在进行游泳比赛的途中。反反复复的一天，荠和典道最终的命运究竟如何？还有，升空的烟火，
		从旁边看究竟是圆的还是平的？烟花绽开的时刻，恋爱的奇迹将会出现。</p>
		</div>
		</div>
	
		<div class="panel panel-info">
			<div class="panel-heading">
		<p class="fffp">影片讲述一群学生在夏天因为烟花展开了争论，他们打算趁着夏季烟花大会去探寻烟花的秘密。同时，他们的同学少女奈砂因为父母离异而决定离家出走。于是他们在烟花表演的夜晚，一起爬山去那个灯塔。</p>
		</div>
		</div>
		
		<div class="row">
		<div class="col-lg-6">   
		<div class="panel panel-danger">
			<div class="panel-heading">
		<p class="fffp">导演:&nbsp;新房昭之 武内宣之</p>
		<hr style="border : 1px dashed ;" />
		<p class="fffp">编剧:&nbsp;大根仁 岩井俊二</p>
		</div>
		</div>
		</div>
		
		<div class="col-lg-6">   
		<div class="panel panel-warning">
		<div class="panel-heading">
		<p class="fffp">国家地区:&nbsp;日本</p>
		<hr style="border : 1px dashed ;" />
		<p class="fffp">发行公司:&nbsp;东宝国际</p>
		</div>
		</div>
		</div>
		</div>
		
		</article>	
		</div><!--row1-->
	</div>
</div>
	<%
		}			
	%>	
     <form action="http://localhost:8080/Dazuoye/goupiaojiluServlet" method="post">
		<%
			Connection con=null;
			Statement stmt=null;
			ResultSet rs=null;
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/dazuoye?useUnicode=true&characterEncoding=gbk";
			con=DriverManager.getConnection(url,"root","123456");
			stmt=con.createStatement();
			%>
			<input type="hidden" name="username" value="<%=username%>">
			<input type="hidden" name="se" value="<%=mn%>">
			
			<label><%=username%>用户选择影院</label>
			<select class="form-control" name="se0">
			<%
			String sql="select * from cinema";
			rs=stmt.executeQuery(sql);
			while(rs.next()){
				String na=rs.getString("cinemaname");
			%>
				<option value=<%=na%>><%=na%></option>
		
			<% 				
			}
			rs.close();
			stmt.close();
			%>
		</select>
		<label><%=username%>用户选择房间</label>
		<select  class="form-control" name="se1">
		<%		
			Statement stmt1=con.createStatement();
			String 	sql1="select * from cinema";
			ResultSet rs1=stmt1.executeQuery(sql1);
			rs1.last();
			String n=rs1.getString("housenum");
			for(int i=1;i<=Integer.parseInt(n);i++){
			%>			
				<option value=<%=i%>><%=i%></option>		
			<%
				}
			rs1.close();
			stmt1.close();

			%>
		</select>
		<label><%=username%>用户选择排</label>
		<select  class="form-control" name="se2">
		<%		
			Statement stmt2=con.createStatement();
			String 	sql2="select * from cinema";
			ResultSet rs2=stmt2.executeQuery(sql2);
			rs2.last();
			String r=rs2.getString("row");
			for(int i=1;i<=Integer.parseInt(r);i++){
			%>			
				<option value=<%=i%>><%=i%></option>		
			<%
				}
			rs2.close();
			stmt2.close();

			%>
		</select>
		<label><%=username%>用户选择列</label>
		<select  class="form-control" name="se3">
		<%		
			Statement stmt3=con.createStatement();
			String 	sql3="select * from cinema";
			ResultSet rs3=stmt3.executeQuery(sql3);
			rs3.last();
			String c=rs3.getString("col");
			for(int i=1;i<=Integer.parseInt(c);i++){
			%>			
				<option value=<%=i%>><%=i%></option>		
			<%
				}
			rs3.close();
			stmt3.close();

			%>
		</select><br><br>		
			<input type="submit" class="btn btn-primary" name="submit" value="确定"/>
		</form>
			<%
			con.close();
			%>		
			
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
