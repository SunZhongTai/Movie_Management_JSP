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
              <li class="active"><i class="icon-file-alt">爱情类</i></li>
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
		if(mn.equalsIgnoreCase("21")){
				mn="微微一笑很倾城";	
	%>
<div class="row text-center">
	<div class="col-sm-11">
		<div class="row">
		<article class="col-md-4">
			<img src="images/in9.jpg">
			<h3>微微一笑很倾城</h3>
		</article>
		<article class="col-md-8">
		
		  <div class="panel panel-primary">
		  	 <div class="panel-heading">
				<h1 class="fffh1">微微一笑很倾城 (2016)</h1>
				<h2>Love O2O</h2>
				</div>
			<div class="panel-body">
				<h3 class="fffh3">105分钟 - 爱情/剧情 - 2016年8月12日中国上映 - 3D</h3>
			</div>
			</div>
		
		<div class="panel panel-success">
			<div class="panel-heading">
		<p class="fffp">电影改编自顾漫同名小说。计算机系美女加高手贝微微（Angelababy饰），热爱网游，
		却因为技术高超不爆照片被认为是人妖，“惨遭”游戏里“老公”的抛弃！熟料“前夫”和知名游戏美女的结婚现场，
		她却遭遇了游戏里第一高手一笑奈何（井柏然饰）的求！一段始于二次元的奇幻网游爱情，就此开始！</p>
		</div>
		</div>
	
		<div class="panel panel-info">
			<div class="panel-heading">
		<p class="fffp">该片改编自顾漫同名小说，讲述了一对大学风云情侣在游戏世界相遇、在现实世界相爱的奇幻爱情故事。该片于2016年8月12日在中国上映。</p>
		</div>
		</div>
		
		<div class="row">
		<div class="col-lg-6">   
		<div class="panel panel-danger">
			<div class="panel-heading">
		<p class="fffp">导演:&nbsp;赵天宇</p>
		<hr style="border : 1px dashed ;" />
		<p class="fffp">编剧:&nbsp;顾漫 潘彧</p>
		</div>
		</div>
		</div>
		
		<div class="col-lg-6">   
		<div class="panel panel-warning">
		<div class="panel-heading">
		<p class="fffp">国家地区:&nbsp;中国</p>
		<hr style="border : 1px dashed ;" />
		<p class="fffp">发行公司:&nbsp;华策影业（天津）有限公司</p>
		</div>
		</div>
		</div>
		</div>
		
		</article>	
		</div><!--row1-->
	</div>
</div>
	<%
			
		}else if(mn.equalsIgnoreCase("22")){
				mn="请以你的名字呼唤我";
	%>
<div class="row text-center">
	<div class="col-sm-11">
		<div class="row">
		<article class="col-md-4">
			<img src="images/in10.jpg">
			<h3>请以你的名字呼唤我</h3>
		</article>
		<article class="col-md-8">
		
		  <div class="panel panel-primary">
		  	 <div class="panel-heading">
				<h1 class="fffh1">请以你的名字呼唤我 (2017)</h1>
				<h2>Call Me by Your Name</h2>
				</div>
			<div class="panel-body">
				<h3 class="fffh3">130分钟 - 剧情/爱情 - 2017年11月24日美国上映</h3>
			</div>
			</div>
		
		<div class="panel panel-success">
			<div class="panel-heading">
		<p class="fffp">根据安德烈·艾席蒙同名小说改编，故事发生在80年代意大利的里维埃拉。
		突如其来的爱彷佛林中奔出的兽，攫住17岁少年Elio的身与心。他爱上的人大他7岁，是一位来意大利游历的美国大学生。
		 两人对彼此的着迷、犹疑、试探，让情欲在流动中迸发，成就了一段仅仅 为时六周的初恋。它给男孩留下一生的印记，
		 因为他们在闷热仲夏夜里发现的，是此生再也无法寻找到的东西：完整的、彻底的亲密。</p>
		</div>
		</div>
	
		<div class="panel panel-info">
			<div class="panel-heading">
		<p class="fffp">该片改编自安德烈·艾席蒙的同名小说，讲述了24岁的美国博士生奥利弗在意大利结识了17岁的少年艾利欧，两人从而发展出一段暧昧的关系。</p>
		</div>
		</div>
		
		<div class="row">
		<div class="col-lg-6">   
		<div class="panel panel-danger">
			<div class="panel-heading">
		<p class="fffp">导演:&nbsp;卢卡·瓜达格尼诺</p>
		<hr style="border : 1px dashed ;" />
		<p class="fffp">编剧:&nbsp;詹姆斯·伊沃里 安德烈·艾席蒙</p>
		</div>
		</div>
		</div>
		
		<div class="col-lg-6">   
		<div class="panel panel-warning">
		<div class="panel-heading">
		<p class="fffp">国家地区:&nbsp;意大利 | 法国 | 巴西 | 美国</p>
		<hr style="border : 1px dashed ;" />
		<p class="fffp">发行公司:&nbsp;索尼经典</p>
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
			    mn="怦然心动";
	%>
	<div class="row text-center">
	<div class="col-sm-11">
		<div class="row">
		<article class="col-md-4">
			<img src="images/in8.jpg">
			<h3>怦然心动</h3>
		</article>
		<article class="col-md-8">
		
		  <div class="panel panel-primary">
		  	 <div class="panel-heading">
				<h1 class="fffh1">怦然心动 (2010)</h1>
				<h2>Flipped</h2>
				</div>
			<div class="panel-body">
				<h3 class="fffh3">90分钟 - 爱情/喜剧/剧情 - 2010年8月6日美国上映</h3>
			</div>
			</div>
		
		<div class="panel panel-success">
			<div class="panel-heading">
		<p class="fffp">朱莉·贝克虔诚地相信三件事：树是圣洁的（特别是她最爱的梧桐树）、
		她在后院里饲养的鸡生出来的鸡蛋是最卫生的、以及总有一天她会和布莱斯·罗斯基接吻。
		二年级时在看到布莱斯的蓝眼睛那一瞬间，朱莉的心就被他击中了。不幸的是，布莱斯对她从来没有感觉。
		而且，他认为朱莉有点怪，怎么会有人把养鸡和坐在树下看成乐趣呢？</p>
		</div>
		</div>
	
		<div class="panel panel-info">
			<div class="panel-heading">
		<p class="fffp">没想到，到了八年级，布莱斯开始觉得朱莉不同寻常的兴趣和对于家庭的自豪感使她显得很有魅力。
		而朱莉则开始觉得布莱斯漂亮的蓝眼睛也许和他本人一样其实很空洞，毕竟，怎么会有人不把别人对树和鸡的感情当回事呢？</p>
		</div>
		</div>
		
		<div class="row">
		<div class="col-lg-6">   
		<div class="panel panel-danger">
			<div class="panel-heading">
		<p class="fffp">导演:&nbsp;罗伯·莱纳</p>
		<hr style="border : 1px dashed ;" />
		<p class="fffp">编剧:&nbsp;罗伯·莱纳 安德鲁·沙因曼</p>
		</div>
		</div>
		</div>
		
		<div class="col-lg-6">   
		<div class="panel panel-warning">
		<div class="panel-heading">
		<p class="fffp">国家地区:&nbsp;美国</p>
		<hr style="border : 1px dashed ;" />
		<p class="fffp">发行公司:&nbsp;Warner Bros. Entertainment</p>
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
