<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
  <head>
<link href="css/index_style.css" rel="stylesheet" type="text/css">
<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
 <title>在线电影票售卖系统</title>
</head>
    <script>
		function addCheck(){
			var username=document.getElementById("username").value;
			var password=document.getElementById("password").value;
			var newword=document.getElementById("newword").value;
			var phonenum=document.getElementById("phonenum").value;
			if(username==""){
				alert("用户名不能为空!");
				document.getElementById("username").focus();  
				return false;
                }
			if(password==""){
				alert("密码不能为空!");
				 document.getElementById("password").focus();
				 return false;
				 }
			if(password != newword){
				alert("两次输入密码不相同!");
				 document.getElementById("newword").focus();
				 return false;
				 }
			if(phonenum==""){
				alert("手机不能为空！");
				 document.getElementById("phonenum").focus();
			}
		}
		function validate(){
		    var flag = addCheck();
		    if(flag == false)
		        return false;
		    return true;
	    }
	</script>
<body>
<center>
<div class="header" id="demo">

    <div class="nav">
    	<font face="宋体" color="pink" size="6">注册界面</font>
	<form action="recheck.jsp" method="post" onsubmit="return validate()">
  	<table>
  	  <tr>
		<th><font color="pink">用户名：</font></th>
		<td><input style="width: 140px;" type="text" name="username" maxlength="16" ></td>
 	  </tr>
 	  <tr>
 		<th><font color="pink">输入密码：</font></th>
 		<td><input style="width: 140px;" type="text" name="password" maxlength="20" ></td>
 	  </tr>
 	  <tr>
 		<th><font color="pink">确认密码：</font></th>
 		<td><input style="width: 140px;" type="text" name="newword" value="重新输入密码" maxlength="20" ></td>
 	  </tr>
 	   <tr>
 		<th><font color="pink">手机号：</font></th>
 		<td><input style="width: 140px;" type="text" name="phonenum"  maxlength="20" ></td>
 	  </tr>
	  <tr colspan ="4">
 		<td>
 		  <input class="gv" type="submit" value="注    册"></td>
 		 <td >
 		  <input class="gv" type="reset" value="重    置"></td>
 		 
	  </tr>
	</table>
    </form>
   </div>
    
  <div class="canvaszz"> </div>  <!-- 图片 -->
  <canvas id="canvas"></canvas>  <!-- 动画 -->
</div>



<!--用来解决视频右键菜单，用于视频上面的遮罩层 START-->
<div class="videozz"></div>
<!--用来解决视频右键菜单，用于视频上面的遮罩层 END-->


<script>
"use strict";
var canvas = document.getElementById('canvas'),
  ctx = canvas.getContext('2d'),
  w = canvas.width = window.innerWidth,
  h = canvas.height = window.innerHeight,

  hue = 217,
  stars = [],
  count = 0,
  maxStars = 1300;//星星数量

var canvas2 = document.createElement('canvas'),
  ctx2 = canvas2.getContext('2d');
canvas2.width = 100;
canvas2.height = 100;
var half = canvas2.width / 2,
  gradient2 = ctx2.createRadialGradient(half, half, 0, half, half, half);
gradient2.addColorStop(0.025, '#CCC');
gradient2.addColorStop(0.1, 'hsl(' + hue + ', 61%, 33%)');
gradient2.addColorStop(0.25, 'hsl(' + hue + ', 64%, 6%)');
gradient2.addColorStop(1, 'transparent');

ctx2.fillStyle = gradient2;
ctx2.beginPath();
ctx2.arc(half, half, half, 0, Math.PI * 2);
ctx2.fill();

// End cache

function random(min, max) {
  if (arguments.length < 2) {
    max = min;
    min = 0;
  }

  if (min > max) {
    var hold = max;
    max = min;
    min = hold;
  }

  return Math.floor(Math.random() * (max - min + 1)) + min;
}

function maxOrbit(x, y) {
  var max = Math.max(x, y),
    diameter = Math.round(Math.sqrt(max * max + max * max));
  return diameter / 2;
  //星星移动范围，值越大范围越小，
}

var Star = function() {

  this.orbitRadius = random(maxOrbit(w, h));
  this.radius = random(60, this.orbitRadius) / 8; 
  //星星大小
  this.orbitX = w / 2;
  this.orbitY = h / 2;
  this.timePassed = random(0, maxStars);
  this.speed = random(this.orbitRadius) / 50000; 
  //星星移动速度
  this.alpha = random(2, 10) / 10;

  count++;
  stars[count] = this;
}

Star.prototype.draw = function() {
  var x = Math.sin(this.timePassed) * this.orbitRadius + this.orbitX,
    y = Math.cos(this.timePassed) * this.orbitRadius + this.orbitY,
    twinkle = random(10);

  if (twinkle === 1 && this.alpha > 0) {
    this.alpha -= 0.05;
  } else if (twinkle === 2 && this.alpha < 1) {
    this.alpha += 0.05;
  }

  ctx.globalAlpha = this.alpha;
  ctx.drawImage(canvas2, x - this.radius / 2, y - this.radius / 2, this.radius, this.radius);
  this.timePassed += this.speed;
}

for (var i = 0; i < maxStars; i++) {
  new Star();
}

function animation() {
  ctx.globalCompositeOperation = 'source-over';
  ctx.globalAlpha = 0.5; //尾巴
  ctx.fillStyle = 'hsla(' + hue + ', 64%, 6%, 2)';
  ctx.fillRect(0, 0, w, h)

  ctx.globalCompositeOperation = 'lighter';
  for (var i = 1, l = stars.length; i < l; i++) {
    stars[i].draw();
  };

  window.requestAnimationFrame(animation);
}

animation();
</script>


</center>
</body>
</html>