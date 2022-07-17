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
<script type="text/javascript">
$(function(){
	$('#submit').click(function() {
			var xhr = new XMLHttpRequest();
			var sss=document.getElementsByName("se").value();
			var sss0=document.getElementsByName("se0").value();
			var sss1=$('#se1').val();
			var sss2=$('#se2').val();
			var sss3=$('#se3').val(); 
				if (xhr.readyState == 4 && xhr.status == 200){
					if (xhr.responseText != 'pass') {
						alert("这张票已经被选了!");
					}
					alert("999999999");
					alert(sss+" ... "+sss0);
				}
			xhr.open("GET", "goupiaojiluServlet?sss="+sss+"&sss0="+sss0+"&sss1="+sss1+"&sss2="+sss2+"&sss3="+sss3+"", false);
			xhr.send();
	});
});


</script>
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
        <!-- Collect the nav links, forms, and other con tent for toggling  -->
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
              <li class="active"><i class="icon-file-alt">动作类</i></li>
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
		if(mn.equalsIgnoreCase("11")){
				mn="正义联盟";	
	%>
<div class="row text-center">
	<div class="col-sm-11">
		<div class="row">
		<article class="col-md-4">
			<img src="images/in1.jpg">
			<h3>正义联盟</h3>
		</article>
		<article class="col-md-8">
		
		  <div class="panel panel-primary">
		  	 <div class="panel-heading">
				<h1 class="fffh1">正义联盟(2017)</h1>
				<h2>Justice League</h2>
				</div>
			<div class="panel-body">
				<h3 class="fffh3">120分钟-动作/冒险/奇幻 - 2017年11月17日中国上映 - 3D/IMAX3D/中国巨幕</h3>
			</div>
			</div>
		
		<div class="panel panel-success">
			<div class="panel-heading">
		<p class="fffp">在对人性重新燃起的希望所驱使，以及被超人的英勇之举所感染，布鲁斯·韦恩与他最新的盟友戴安娜·普林斯一起，
			组建了一支超强队伍，应对更强劲敌的来袭。虽然这队联盟的各个超级英雄都大有来头——蝙蝠侠、神奇女侠、海王、钢骨与闪电侠，
			他们首度集结，力挽狂澜，拯救地球免遭灭顶之灾。</p>
		</div>
		</div>
	
		<div class="panel panel-info">
			<div class="panel-heading">
		<p class="fffp">“美国正义联盟”里聚集了DC Comics旗下几乎所有知名的漫画英雄，包括蝙蝠侠、超人、闪电侠等等，众多英雄们聚集在一起除暴安良，保卫地球。</p>
		</div>
		</div>
		
		<div class="row">
		<div class="col-lg-6">   
		<div class="panel panel-danger">
			<div class="panel-heading">
		<p class="fffp">导演:&nbsp;扎克·施奈德</p>
		<hr style="border : 1px dashed ;" />
		<p class="fffp">编剧:&nbsp;比尔·芬格 克里斯·特里奥</p>
		</div>
		</div>
		</div>
		
		<div class="col-lg-6">   
		<div class="panel panel-warning">
		<div class="panel-heading">
		<p class="fffp">国家地区:&nbsp;美国</p>
		<hr style="border : 1px dashed ;" />
		<p class="fffp">发行公司:&nbsp;华纳兄弟影片公司</p>
		</div>
		</div>
		</div>
		</div>
		
		</article>	
		</div><!--row1-->
	</div>
</div>
	<%
			
		}else if(mn.equalsIgnoreCase("12")){
				mn="复仇者联盟3";
	%>
	<div class="row text-center">
	<div class="col-sm-11">
		<div class="row">
		<article class="col-md-4">
			<img src="images/in6.jpg">
			<h3>复仇者联盟3</h3>
		</article>
		<article class="col-md-8">
		
		  <div class="panel panel-primary">
		  	 <div class="panel-heading">
				<h1 class="fffh1">复仇者联盟3：无限战争 (2018)</h1>
				<h2>Avengers: Infinity War</h2>
				</div>
			<div class="panel-body">
				<h3 class="fffh3">动作/冒险/奇幻 - 2018年5月4日美国上映</h3>
			</div>
			</div>
		
		<div class="panel panel-success">
			<div class="panel-heading">
		<p class="fffp">《复仇者联盟3：无限战争》是复仇者联盟系列电影的第三部，是漫威电影宇宙的第十九部电影，
		本片将与《雷神3》剧情连接，该片将于2018年5月4日在美国上映。《雷神3：诸神黄昏》将会成为本片主要引导线。
		漫威电影有史以来最强反派：灭霸登场，该片将会集齐所有漫威电影宇宙的超级英雄进行对抗灭霸，上演一场史无前例的拯救宇宙大战。</p>
		</div>
		</div>
	
		<div class="panel panel-info">
			<div class="panel-heading">
		<p class="fffp">《复仇者联盟3：无限战争》是漫威电影宇宙10周年历史性集结，将作为漫威宇宙第三阶段收官之作。</p>
		</div>
		</div>
		
		<div class="row">
		<div class="col-lg-6">   
		<div class="panel panel-danger">
			<div class="panel-heading">
		<p class="fffp">导演:&nbsp;安东尼·罗素 乔·罗素</p>
		<hr style="border : 1px dashed ;" />
		<p class="fffp">编剧:&nbsp;杰克·科比 克里斯托弗·马库斯</p>
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
			    mn="侏罗纪世界2";
	%>
	<div class="row text-center">
	<div class="col-sm-11">
		<div class="row">
		<article class="col-md-4">
			<img src="images/in7.jpg">
			<h3>侏罗纪世界2</h3>
		</article>
		<article class="col-md-8">
		
		  <div class="panel panel-primary">
		  	 <div class="panel-heading">
				<h1 class="fffh1">侏罗纪世界2：失落王国 (2018)</h1>
				<h2>Jurassic World: Fallen Kingdom</h2>
				</div>
			<div class="panel-body">
				<h3 class="fffh3">120分钟 - 动作/冒险/奇幻 - 2017年11月17日中国上映 - 3D/IMAX3D/中国巨幕</h3>
			</div>
			</div>
		
		<div class="panel panel-success">
			<div class="panel-heading">
		<p class="fffp">在环球的《侏罗纪世界》大卖后，片方宣布《侏罗纪世界2》正式启动，《侏罗纪世界》导演科林·特莱沃若
		将回归剧组与德拉科·康奈利一同编写剧本。特莱沃若在接受外媒采访时透露了《侏罗纪世界2》的一些细节，他暗示影片故事发生的地点
		有可能在岛外的世界，恐龙们也可能成为生物武器。</p>
		</div>
		</div>
	
		<div class="panel panel-info">
			<div class="panel-heading">
		<p class="fffp">自6月上映以来，《侏罗纪世界》全球横扫10亿美金，这个数字令许多制片方艳羡不已。《侏罗纪世界2》将于2018年6月22日上映。</p>
		</div>
		</div>
		
		<div class="row">
		<div class="col-lg-6">   
		<div class="panel panel-danger">
			<div class="panel-heading">
		<p class="fffp">导演:&nbsp;胡安·安东尼奥·巴亚纳</p>
		<hr style="border : 1px dashed ;" />
		<p class="fffp">编剧:&nbsp;科林·特莱沃若 德里克·康纳利</p>
		</div>
		</div>
		</div>
		
		<div class="col-lg-6">   
		<div class="panel panel-warning">
		<div class="panel-heading">
		<p class="fffp">国家地区:&nbsp;西班牙 | 美国</p>
		<hr style="border : 1px dashed ;" />
		<p class="fffp">发行公司:&nbsp;环球影业</p>
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
			
			<input type="submit" class="btn btn-primary" id="submit" name="submit" value="确定购票"/>
			
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
