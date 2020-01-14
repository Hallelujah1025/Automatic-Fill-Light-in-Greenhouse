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
	
	#main{
		height: 600px;
		float: left;
		width: 100%;
		background-image: url(2.png);
		background-repeat:no-repeat; 
		background-size:100% 100%;
		
	}
	
	.jumbotron{
		width: 60%;
		margin: 50px auto;
	}
	
	#submitButton{
		margin-left: 300px;
		margin-top: 25px;
		margin-bottom: -35px;
		font-size: 20px;
	}
	
	
	
	
	
</style>



<body>
	<!-- 导航 -->
	<div id = "navigation">
		<div id = "nav-left">
		</div>
		<a href="login.jsp">Login</a>
		<a href="contact.jsp" style="color: white">Contact</a>
		<a href="about.jsp">About</a>
		<!--  <a href="index.jsp">Service</a>
		<a href="index.jsp">Sensor</a>-->
		<a href="index.jsp">Index</a>
	</div>


	<div id = "main">
		<div class="jumbotron">
			<h1 style="text-align: center; margin-top: -30px">What can we help with?</h1>
		 	<div class="input-group mb-3" style="margin-top: 20px">
			  <div class="input-group-prepend">
			    <span class="input-group-text" id="basic-addon1">Subject</span>
			  </div>
			  <input type="text" class="form-control" placeholder="Please input a subject." aria-label="Username" aria-describedby="basic-addon1">
			</div>
			
			<div class="input-group">
			  <div class="input-group-prepend">
			    <span class="input-group-text">Content</span>
			  </div>
			  <textarea rows="7" class="form-control" aria-label="With textarea" placeholder="Please describe your problems and we will give you a feedback soon."></textarea>
			</div>
		  
		    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" id = "submitButton">
			  Submit
			</button>
			
			<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			  <div class="modal-dialog" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title" id="exampleModalLabel">Hint</h5>
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			          <span aria-hidden="true">&times;</span>
			        </button>
			      </div>
			      <div class="modal-body">
			        You have submitted successfully!
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
			      </div>
			    </div>
			  </div>
			</div>
			
			<p style="text-align: center; margin-top: 50px; margin-bottom: -30px">Email us: &nbsp 404Team@outlook.com</p>
		</div>
	
	</div>
		
		
	
	
	<div id = "footer">
		©2019 All Rights Reserved 404 Info-Tech Co., Ltd
	</div>
</body>
</html>