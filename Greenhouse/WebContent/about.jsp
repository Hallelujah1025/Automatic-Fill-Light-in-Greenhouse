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
		
	#footer{
		height: 27px;
		width: 100%;
		background: #f6f6f6;
		color: #999;
		text-align: center;
	}
	
	.jumbotron{
		width: 70%;
		margin: 70px auto;
	}
	
	#main{
		background: url(2.png);
		height: 1700px;
		float: left;
	}
		
	#target{
		color: white;
		text-decoration:none;
	}	
	
	#bottomButton{
		margin-top: 30px;
		margin-left: 340px;
	}
	
</style>



<body>
	<!-- 导航 -->
	<div id = "navigation">
		<div id = "nav-left">
		</div>
		<a href="login.jsp">Login</a>
		<a href="contact.jsp">Contact</a>
		<a href="about.jsp" style="color: white" id = "top">About</a>
		<!--  <a href="index.jsp">Service</a>
		<a href="index.jsp">Sensor</a>-->
		<a href="index.jsp">Index</a>
	</div>

	<div id = "main">
		<div class="jumbotron">
		  <p class="lead">Greenhouses are the most common crop cultivation facilities in China, 
		  	which are used to prevent the loss of heat and water as well as reduce the harm of diseases and insects. 
		  	The current greenhouse has been used for several areas, including potted and cut flowers cultivation, 
		  	fruit tree production for cultivation the fruits, such as grapes, strawberries, watermelon, melon, peach and 
		  	citrus, forestry production for forest seedlings and ornamental trees, and even used for rising silkworms, 
		  	chickens, cattle, pigs and fish.</p>
		  <hr class="my-4">
		  
		   <p class="lead">However, the light conditions of crops in greenhouses are much worse than those in the open air. 
		   	The light transmittance of the new shed film is about 80% - 90%, but during the using time, due to the daily 
		   	dust pollution, water mist adsorption and the aging of the membrane, the light transmittance will be reduced by 30%. 
		   	Unfortunately, if the membrane is used for a long time, the light transmittance will be much lower. In addition, the 
		   	light intensity changes from day to day. Different seasons and different orientation of the greenhouse will both affect the intensity of light. 
		   	As we all know, summer is the most brightest one in four seasons, but the 
		   	transmittance is no more than 59%, which means that the plants in the green house has a problem of lacking light.</p>
		   	<br>
		   	<hr class="my-4">
		   	
		   	<p class="lead">Moreover, lack of light have an noteworthy adverse impact on crops. It is well known that plants 
		   	have their own light saturation points and light compensation points during processes of photosynthesis and respiration. 
		   	If the light intensity is too weak, which is lower than the light compensation point of the plant, the respiration of 
		   	the plant will stronger than the photosynthesis, so that the production of the plant is not equal to its consumption, 
		   	that is to say, the plant will consume the organics and do not grow up. If the plants are not allowed to carry out 
		   	enough photosynthesis, especially in the season of weak light and low temperature, carbon dioxide in the greenhouse 
		   	will be too high, which not only affect the growth of the crops, also cut down the production. “According to the 
		   	summary of research and production practice, we generally divide the disasters caused by lack of light into three 
		   	levels.” (Quoted in “Greenhouse Supplementary Light”, n.d.) As table below illustrates, there are primary level, 
		   	middle level and high level. Firstly, it is primary level, which is the crops lack of light for consecutive 3 days. 
		   	At this stage, crops begin to arise some diseases. Secondly, the middle level is lacking for 4 to 7 days, more common 
		   	disease appear. But those diseases could be controlled by chemical control and other measures. In the most sever case, 
		   	in other words, the crops lack of light for over 10 days, the disease will be difficult to control, and most of the 
		   	production is reduced. Light is an important and indispensable element for the growth of crops, and maximum capture 
		   	of light energy and full play of plant photosynthesis potential will be directly related to the benefit of agricultural
		   	 production.
		   	</p>
		    <br>
		   	<img src="chart2.png" class="img-fluid" alt="Responsive image">
		   	
		   	<button type="button" class="btn btn-primary" id = "bottomButton"><a id = "target" href = "#top">Go back</a></button>
		   
		   
		</div>
	</div>
	
	
	<div id = "footer">
		©2019 All Rights Reserved 404 Info-Tech Co., Ltd
	</div>
</body>
</html>