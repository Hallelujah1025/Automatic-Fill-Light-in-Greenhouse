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
		background-image: url(11.png); 
		background-repeat:no-repeat; 
		background-size:100% 100%;
	}
	
	#login{
		float: right;
		height: 450px;
		width: 350px;
		margin-top: 50px;
		margin-right: 60px;
		background: white;
		border-radius: 0.25rem;
	}
	
	
	.nav-item a{
		font-size: 25px;
		text-align:center;
	}
	
	.nav-item{
		width: 175px;
	}
	
	.col-form-label{
		font-family:"SimHei";
		font-weight:bold;
		margin-left: 20px;
	}
	
	.form-control{
		margin-left: 20px;
		width: 105%;
	}
	
	#submitButton{
		margin-top: 80px;
		margin-left:30px;
		width: 100%;
		font-size: 25px;
	}
	
	.breadcrumb{
		background: white; 
		width: 350px;
		float: right;
	}
	.breadcrumb-item{
		font-size: 12px;
		padding-left: 50px;
	}
	
	.nav-pills .nav-link.active,
.nav-pills .show > .nav-link {
  color: #077bff;
  background-color: #fff;
}

#pills-profile-tab{
  color: #077bff;
  text-decoration: none;
  background-color: #fff;
}

	.btn-primary{
		background: #fff;
		color: #077bff;
	}
	
	
</style>



<body>
	<!-- 导航 -->
	<div id = "navigation">
		<div id = "nav-left">
		
		</div>
		<a href="index.jsp" style="color: white">Login</a>
		<a href="contact.jsp">Contact</a>
		<a href="about.jsp">About</a>
		<!--  <a href="index.jsp">Service</a>
		<a href="index.jsp">Sensor</a>-->
		<a href="index.jsp">Index</a>
	</div>

	<div id = "main">
		<div id = "login">
			<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
			  <li class="nav-item">
			    <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">Login</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link"  id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false">Register</a>
			  </li>
			</ul>
			
			
			<div class="tab-content" id="pills-tabContent">
			
			  <!-- 登录页面 -->	
			  <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
			  	<form>
				  <div class="form-group row">
				    <label for="inputEmail3" class="col-sm-2 col-form-label">Username</label>
				    <div class="col-sm-10">
				      <input type="email" class="form-control" id="inputEmail3">
				    </div>
				  </div>
				  <div class="form-group row">
				    <label for="inputPassword3" class="col-sm-2 col-form-label">Password</label>
				    <div class="col-sm-10">
				      <input type="password" class="form-control" id="inputPassword3">
				    </div>
				  </div>
				  
				  <div class="form-group row">
				    <div class="col-sm-10">
				      <div class="form-check">
				        <input class="form-check-input" type="checkbox" id="gridCheck1" style="margin-left: 5px; margin-top: 7px">
				        <label class="form-check-label" for="gridCheck1" style="margin-left: 25px">
				          Remember me
				        </label>
				      </div>
				    </div>
				  </div>
				  <div class="form-group row">
				    <div class="col-sm-10">
				     
				     	<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" id = "submitButton">
						  Log in!
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
						        You have logged in successfully!
						      </div>
						      <div class="modal-footer">
						        <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
						      </div>
						    </div>
						  </div>
						</div>
				    </div>
				  </div>
				  <nav aria-label="breadcrumb">
					  <ol class="breadcrumb">
					    <li class="breadcrumb-item"><a href="#">Forget password</a></li>
					    <li class="breadcrumb-item"><a href="#">New account</a></li>
					    <li class="breadcrumb-item"><a href="#">Feedback</a></li>
					  </ol>
				  </nav>
				</form>
			  </div>
			  
			  <!-- 注册页面 -->
			  <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
			  	<form>
				  <div class="form-group row">
				    <label for="inputEmail3" class="col-sm-2 col-form-label">Username</label>
				    <div class="col-sm-10">
				      <input type="email" class="form-control" id="inputEmail3">
				    </div>
				  </div>
				  <div class="form-group row">
				    <label for="inputPassword3" class="col-sm-2 col-form-label">Password</label>
				    <div class="col-sm-10">
				      <input type="password" class="form-control" id="inputPassword3">
				    </div>
				  </div>
				  <div class="form-group row">
				    <label for="inputPassword3" class="col-sm-2 col-form-label">Password&nbspAgain</label>
				    <div class="col-sm-10">
				      <input type="password" class="form-control" id="inputPassword3">
				    </div>
				  </div>
				  
				  <div class="form-group row">
				    <div class="col-sm-10">
				    
				        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" id = "submitButton" style = "margin-top: 10px">
						  Sign up!
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
						        You have created an account successfully!
						      </div>
						      <div class="modal-footer">
						        <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
						      </div>
						    </div>
						  </div>
						</div>
				    </div>
				  </div>
				  <nav aria-label="breadcrumb">
					  <ol class="breadcrumb">
					    <li class="breadcrumb-item" style="padding-left: 80px"><a href="#">Have an account? Login in here!</a></li>
					    <li class="breadcrumb-item"><a href="#">Help</a></li>
					  </ol>
				  </nav>
				</form>
			  </div>
			</div>
		</div>
	</div>
	
	<div id = "footer">
		©2019 All Rights Reserved 404 Info-Tech Co., Ltd
	</div>
	
	
</body>
</html>