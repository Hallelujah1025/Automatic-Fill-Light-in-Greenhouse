<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>Greenhouse Project</title>
</head>

<style>
	
	#navigation{
		height: 45px;
		width: 100%;
		background:black;
	}

	#nav-left{
		color: green;
		float: left;
		font-size: 22px;
		padding-left: 20px;
		padding-top: 3px;
		width: 130px;
		height: 45px;
		background-repeat:no-repeat;
        background-size:100% 100%;
        background-image: url(logo.jpg);
	}
	
	#navigation a{
		text-decoration:none;
		color: #ccc;
		font-size: 16px;
		float: right;
		padding-right: 15px;
		padding-top: 10px;
	}
	
	#navigation a:hover{
		color: white;
	}
	
	#navigation a:active{
		color: white;
	}
	
	
	.carousel-item img{
		width: 100%; 
		height: 100%;
	}
	
	.carousel-indicators{
		border-top: 50px;
	}
	
	#footer{
		height: 27px;
		width: 100%;
		background: #f6f6f6;
		color: #999;
		text-align: center;
	}
	
	.jumbotron{
		height: 780px;
		width: 1000px;
		margin: 50px auto;
		
	}
	
	#demoTop{
		height: 270px;
		width: 900px;
		margin: 0px auto;
		background: black;
	}
	
	#demo1{
		width: 100%;	
		height: 100%;
	}
	
	#demo2{
		width: 100%;	
		height: 100%;
	}
	
	#demo3{
		width: 100%;	
		height: 100%;
	}
	
	#demoMain{
		height: 300px;
		width: 900px;
		margin-top: 20px;
		margin-left: 18px;
		float: left;
	}
	
	#demoLeft{
		height: 300px;
		width: 420px;
		float: left;
	}
	
	#demoRight{
		height: 300px;
		width: 420px;
		float: right;
	}
	
	.btn-primary{
		margin-top: 50px;
		margin-left: 405px;
	}
	
	#link{
		color: white;
	}
	
</style>



<body>
	<!-- 导航 -->
	<div id = "navigation">
		<div id = "nav-left"></div>
		<a href="login.jsp">Login</a>
		<a href="contact.jsp">Contact</a>
		<a href="about.jsp">About</a>
		<!--  <a href="index.jsp">Service</a>
		<a href="index.jsp">Sensor</a>-->
		<a href="index.jsp" style="color: white">Index</a>
	</div>

	<!-- 主页轮播 -->
	<div id="demo" class="carousel slide" data-ride="carousel">
	  <!-- 指示符 -->
	  <ul class="carousel-indicators">
	    <!-- <li data-target="#demo" data-slide-to="0" class="active"></li> -->
	    <li data-target="#demo" data-slide-to="0" class="active"></li>
	    <li data-target="#demo" data-slide-to="1"></li>
	  </ul>
	 
	  <!-- 轮播图片 -->
	  <div class="carousel-inner" style ="height: 400px">
	    <!--  <div class="carousel-item active">
	      <img src="13cc0e9e1ff5708e32a5528153bb708.jpg">
	    </div>-->
	    <div class="carousel-item active">
	      <img src="c34eea771e4ef5400a00610a215fc77.jpg">
	    </div>
	    <div class="carousel-item">
	      <img src="145df4ef0f51fbb1d81b6576c2fea56.jpg">
	    </div>
	  </div>
	 
	  <!-- 左右切换按钮 -->
	  <a class="carousel-control-prev" href="#demo" data-slide="prev">
	    <span class="carousel-control-prev-icon"></span>
	  </a>
	  <a class="carousel-control-next" href="#demo" data-slide="next">
	    <span class="carousel-control-next-icon"></span>
	  </a>
	 
	</div>

	<div id="main" style="height: 820px">
		<div class="jumbotron">
			<div id = "demoTop">
				<img src = "demo1.png" id = "demo1">
			</div>
			
			<div id = "demoMain">
				<div id = "demoLeft">
					<img src = "demo2.png" id = "demo2">
				</div>
				<div id = "demoRight">
					<img src = "demo3.png" id = "demo3">
				</div>
			</div>
			
			<button type="button" class="btn btn-primary" data-dismiss="modal"><a href="https://iot.console.aliyun.com/devices/a1lwV5asSXB/fill_light/1" id = "link">Check my data</a></button>
		
		</div>
	</div>
	
	
	<div id = "footer">
		©2019 All Rights Reserved 404 Info-Tech Co., Ltd
	</div>
</body>
</html>