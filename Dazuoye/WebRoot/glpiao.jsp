<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page  import="java.sql.*" %>
<%@page import="Bbean.gljlBean"%>

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
<script>
function showUsername(str)
{
	    $.ajax({
		        type: "POST",
		        url: "http://localhost:8080/Dazuoye/glpiaoServlet",
		        data: "un=" +str,
		        success: null,
		        error: null
		    });
	
  //alert("欢迎管理员对用户"+str+"进行查询");
    // var sel=document.getElementById('up');
	 // for(var i=0;i <sel.options.length;i++)
	 // {
	//	  if(sel.options[i].text==val)
	//	  {
	//		  sel.options[i].selected=true;
	//		  break;
	//	  }
	//  }
  /////////////
	var url = "http://localhost:8080/Dazuoye/glpiao.jsp"; //把当前页面的地址赋给变量 url
	var times = url.split("?"); //分切变量 url 分隔符号为 "?"
	if(times[1] != 1){ //如果?后的值不等于1表示没有刷新
	url += "?1"; //把变量 url 的值加入 ?1
	self.location.replace(url); //刷新页面
	}
	//

	
}

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
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse navbar-ex1-collapse">
          <ul class="nav navbar-nav side-nav">
            <li class="ffont"><a href="index.jsp">首  页</a></li>
            <li class="ffont "><a href="glindex.jsp">上传电影</a></li>            
            <li class="ffont active"><a href="glpiao.jsp">购票管理</a></li>
            <li class="ffont"><a href="glinfo.jsp">个人信息</a></li>  
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
            <h1>购票信息管理<small>A Blank Slate</small></h1>
            <ol class="breadcrumb">
              <li><a href="glpiao.jsp"><i class="icon-dashboard"></i>购票管理</a></li>
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
        <!---->
<hr>
	<div>
	   <center>
	  <form role="form">
	 		<p>请输入你要查询用户的姓名 </p>
	 	   <div class="form-group">
			<select name="up" class="form-control" onchange="showUsername(this.value)">
		<%
			Connection con=null;
			Statement stmt=null;
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/dazuoye?useUnicode=true&characterEncoding=gbk";
			con=DriverManager.getConnection(url,"root","123456");
			stmt=con.createStatement();
			String sql0="select * from user where value='u'";
			ResultSet rs0=stmt.executeQuery(sql0);
			while(rs0.next()){
				String un=rs0.getString("Name");
			%>
			<option value="<%=un%>"><%=un%></option>
			<%
			}
			stmt.close();
			con.close();
		%>
		
		   </select>
		   </div>	
		
	    </from>
	 </center>
   </div>
<hr>
		<%
			String uu=(String)session.getAttribute("un");
			System.out.println("9999999999999"+uu);
    		int dongzuo=0;
			int aiqing=0;
			int donghua=0;
			int dz1=0;
			int dz2=0;
			int dz3=0;
			int aq1=0;
			int aq2=0;
			int aq3=0;
			int dh1=0;
			int dh2=0;
			int dh3=0;
			int wanda=0;
			int xingfu=0;
			int baisheng=0;
			Connection con1=null;
			Statement stmt1=null;
			Class.forName("com.mysql.jdbc.Driver");
			String url1="jdbc:mysql://localhost:3306/dazuoye?useUnicode=true&characterEncoding=gbk";
			con1=DriverManager.getConnection(url1,"root","123456");
			stmt1=con1.createStatement();
			String sql1="select * from gljilu where username='"+uu+"'";
			ResultSet rs1=stmt1.executeQuery(sql1);
			while(rs1.next()){
				System.out.println("77777777777777");
				dongzuo=rs1.getInt("dongzuo");
				aiqing=rs1.getInt("aiqing");
				donghua=rs1.getInt("donghua");
				dz1=rs1.getInt("dz1");
				dz2=rs1.getInt("dz2");
				dz3=rs1.getInt("dz3");
				aq1=rs1.getInt("aq1");
				aq2=rs1.getInt("aq2");
				aq3=rs1.getInt("aq3");
				dh1=rs1.getInt("dh1");
				dh2=rs1.getInt("dh2");
				dh3=rs1.getInt("dh3");
				wanda=rs1.getInt("wanda");
				xingfu=rs1.getInt("xingfu");
				baisheng=rs1.getInt("baisheng");
				System.out.println("************"+dongzuo+"/"+aiqing+"/"+donghua);
			}
				stmt1.close();
				con1.close();
			
		%>

	 <div id="container" style="height: 100%"></div>
	 <hr>
	 <div id="container1" style="height: 100%"></div>
	 <hr>
	 <div id="container2" style="height: 100%"></div>
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
	<!--  -->
	   <script type="text/javascript" src="js/echarts.js"></script>
	   <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/echarts-all-3.js"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-stat/ecStat.min.js"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/extension/dataTool.min.js"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/china.js"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/world.js"></script>
       <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=ZUONbpqGBsYGXNIYHicvbAbM"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/extension/bmap.min.js"></script>
	
<script type="text/javascript">
var dom = document.getElementById("container");
var myChart = echarts.init(dom);
var app = {};

var  dongzuo=<%=dongzuo%>;
var  aiqing=<%=aiqing%>;
var  donghua=<%=donghua%>;
var  dz1=<%=dz1%>;
var  dz2=<%=dz2%>;
var  dz3=<%=dz3%>;
var  aq1=<%=aq1%>;
var  aq2=<%=aq2%>;
var  aq3=<%=aq3%>;
var  dh1=<%=dh1%>;
var  dh2=<%=dh2%>;
var  dh3=<%=dh3%>;
var  wanda=<%=wanda%>;
var  xingfu=<%=xingfu%>;
var  baisheng=<%=baisheng%>;



option = null;
option = {
    title : {
        text: '电影类型购买数据分析',
        subtext: '数据来自数据库',
        x: 'center'
    },
    tooltip: {
        trigger: 'item',
        formatter: "{a} <br/>{b} : {c} ({d}%)"
    },
    legend: {
        orient: 'vertical',
        left: 'left',
        data: ['动作片','爱情片','动画片']
    },
    series : [
        {
            name: '访问来源',
            type: 'pie',
            radius : '55%',
            center: ['50%', '60%'],
            data:[
                {value:dongzuo, name:'动作片'},
                {value:aiqing, name:'爱情片'},
                {value:donghua, name:'动画片'}
            ],
            itemStyle: {
                emphasis: {
                    shadowBlur: 10,
                    shadowOffsetX: 0,
                    shadowColor: 'rgba(0, 0, 0, 0.5)'
                }
            }
        }
    ]
};



app.currentIndex = -1;

setInterval(function () {
    var dataLen = option.series[0].data.length;
    // 取消之前高亮的图形
    myChart.dispatchAction({
        type: 'downplay',
        seriesIndex: 0,
        dataIndex: app.currentIndex
    });
    //app.currentIndex = (app.currentIndex + 1) % dataLen;
    // 高亮当前图形
    myChart.dispatchAction({
        type: 'highlight',
        seriesIndex: 0,
        dataIndex: app.currentIndex
    });
    // 显示 tooltip
    myChart.dispatchAction({
        type: 'showTip',
        seriesIndex: 0,
        dataIndex: app.currentIndex
    });
}, 1000);
;
if (option && typeof option === "object") {
    myChart.setOption(option, true);
}
/////////////////////////////////////
 var myChart1 = echarts.init(document.getElementById('container1'));
app.title = '嵌套环形图';

option = {
    title : {
        text: '电影类型具体数据分析',
        subtext: '数据来自数据库',
        x: 'center'
    },
    tooltip: {
        trigger: 'item',
        formatter: "{a} <br/>{b}: {c} ({d}%)"
    },
    legend: {
        orient: 'vertical',
        x: 'left',
        data:['动作片','爱情片','动画片','正义联盟','复仇者联盟3','侏罗纪世界2','微微一笑很倾城','请以你的名字呼唤我','怦然心动','疯狂动物城','寻梦环游记','烟花']
    },
    series: [
        {
            name:'访问来源',
            type:'pie',
            selectedMode: 'single',
            radius: [0, '30%'],

            label: {
                normal: {
                    position: 'inner'
                }
            },
            labelLine: {
                normal: {
                    show: false
                }
            },
            data:[
                {value:dongzuo, name:'动作片', selected:true},
                {value:aiqing, name:'爱情片'},
                {value:donghua, name:'动画片'}
            ]
        },
        {
            name:'访问来源',
            type:'pie',
            radius: ['40%', '55%'],
            label: {
                normal: {
                    formatter: '{a|{a}}{abg|}\n{hr|}\n  {b|{b}：}{c}  {per|{d}%}  ',
                    backgroundColor: '#eee',
                    borderColor: '#aaa',
                    borderWidth: 1,
                    borderRadius: 4,
                    // shadowBlur:3,
                    // shadowOffsetX: 2,
                    // shadowOffsetY: 2,
                    // shadowColor: '#999',
                    // padding: [0, 7],
                    rich: {
                        a: {
                            color: '#999',
                            lineHeight: 22,
                            align: 'center'
                        },
                        // abg: {
                        //     backgroundColor: '#333',
                        //     width: '100%',
                        //     align: 'right',
                        //     height: 22,
                        //     borderRadius: [4, 4, 0, 0]
                        // },
                        hr: {
                            borderColor: '#aaa',
                            width: '100%',
                            borderWidth: 0.5,
                            height: 0
                        },
                        b: {
                            fontSize: 16,
                            lineHeight: 33
                        },
                        per: {
                            color: '#eee',
                            backgroundColor: '#334455',
                            padding: [2, 4],
                            borderRadius: 2
                        }
                    }
                }
            },
            data:[
                {value:dz1, name:'正义联盟'},
                {value:dz2, name:'复仇者联盟3'},
                {value:dz3, name:'侏罗纪世界2'},
                {value:aq1, name:'微微一笑很倾城'},
                {value:aq2, name:'请以你的名字呼唤我'},
                {value:aq3, name:'怦然心动'},
                {value:dh1, name:'疯狂动物城'},
                {value:dh2, name:'寻梦环游记'},
                {value:dh3, name:'寻梦环游记'}
            ]
        }
    ]
};           
if (option && typeof option === "object") {
    myChart1.setOption(option, true);
}   
/////////////////////////////////////
var dom1 = document.getElementById("container2");
var myChart2 = echarts.init(dom1);
var app1 = {};
app1.title = '嵌套环形图';


option = {
    title: {
        text: '电影院数据统计',
        subtext: '数据来自数据库',
    },
    tooltip: {
        trigger: 'axis',
        axisPointer: {
            type: 'shadow'
        }
    },
    color: ['#3398DB'],
    tooltip : {
        trigger: 'axis',
        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
        }
    },
    grid: {
        left: '3%',
        right: '4%',
        bottom: '3%',
        containLabel: true
    },
    xAxis : [
        {
            type : 'category',
            data: ['万达影院','幸福蓝海影院','百盛影院'],
            axisTick: {
                alignWithLabel: true
            }
        }
    ],
    yAxis : [
        {
            type : 'value'
        }
    ],
    series : [
        {
            name:'直接访问',
            type:'bar',
            barWidth: '60%',
            data: [wanda, xingfu,baisheng]
        }
    ]
};
app1.currentIndex = -1;

setInterval(function () {
    var dataLen = option.series[0].data.length;
    // 取消之前高亮的图形
    myChart2.dispatchAction({
        type: 'downplay',
        seriesIndex: 0,
        dataIndex: app1.currentIndex
    });
    //app.currentIndex = (app.currentIndex + 1) % dataLen;
    // 高亮当前图形
    myChart2.dispatchAction({
        type: 'highlight',
        seriesIndex: 0,
        dataIndex: app1.currentIndex
    });
    // 显示 tooltip
    myChart2.dispatchAction({
        type: 'showTip',
        seriesIndex: 0,
        dataIndex: app1.currentIndex
    });
}, 1000);
;

if (option && typeof option === "object") {
    myChart2.setOption(option, true);
}
       </script>	
</body>
</html>