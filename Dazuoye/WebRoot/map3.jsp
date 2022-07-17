<%@ page language="java" import="java.net.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
	<style type="text/css">
		body, html,#allmap {width: 100%;height: 100%;overflow: hidden;margin:0;font-family:"微软雅黑";}
	</style>
	<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=sSelQoVi2L3KofLo1HOobonW"></script>
	<title>单个标注点沿直线的轨迹运动</title>
</head>
<body>
	<div id="allmap"></div>
	<%
	String zhongdian=null;
	if(request.getParameter("zhongdian")!=null){
		 zhongdian=URLDecoder.decode(request.getParameter("zhongdian"),"utf-8");//对中文参数进行解码
	}		
	%>
</body> 
</html>
<script type="text/javascript">
	var myP2;
	var zhongdian="<%=zhongdian%>";
	if(zhongdian.indexOf("万达")!=-1){
		myP2= new BMap.Point(121.3992445248, 37.5418850912); 
	}else if(zhongdian.indexOf("大悦城")!=-1){
		myP2= new BMap.Point(121.3923490190, 37.5508752906); 
	}else if(zhongdian.indexOf("百盛")!=-1){
		myP2= new BMap.Point(121.3842941482, 37.5490537805); 	
   }else{
	    myP2= new BMap.Point(121.3655765023,37.5285652317); 	
   }
	// 百度地图API功能
	var map = new BMap.Map("allmap");
	map.centerAndZoom(new BMap.Point(121.3655765023,37.5285652317), 15);

	var myP1 = new BMap.Point(121.3655765023,37.5285652317);    //起点
	var myIcon = new BMap.Icon("http://lbsyun.baidu.com/jsdemo/img/Mario.png", new BMap.Size(32, 70), {    //小车图片
		//offset: new BMap.Size(0, -5),    //相当于CSS精灵
		imageOffset: new BMap.Size(0, 0)    //图片的偏移量。为了是图片底部中心对准坐标点。
	  });
	var driving2 = new BMap.DrivingRoute(map, {renderOptions:{map: map, autoViewport: true}});    //驾车实例
	driving2.search(myP1, myP2);    //显示一条公交线路

	window.run = function (){
		var driving = new BMap.DrivingRoute(map);    //驾车实例
		driving.search(myP1, myP2);
		driving.setSearchCompleteCallback(function(){
			var pts = driving.getResults().getPlan(0).getRoute(0).getPath();    //通过驾车实例，获得一系列点的数组
			var paths = pts.length;    //获得有几个点

			var carMk = new BMap.Marker(pts[0],{icon:myIcon});
			map.addOverlay(carMk);
			i=0;
			function resetMkPoint(i){
				carMk.setPosition(pts[i]);
				if(i < paths){
					setTimeout(function(){
						i++;
						resetMkPoint(i);
					},100);
				}
			}
			setTimeout(function(){
				resetMkPoint(5);
			},100)

		});
	}

	setTimeout(function(){
		run();
	},1500);
	
	map.enableScrollWheelZoom(true);     //开启鼠标滚轮缩放
	

</script>

</html>

