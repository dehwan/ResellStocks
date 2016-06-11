<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">

<title>Theme Template for Bootstrap</title>

<!-- Bootstrap core CSS -->
<link href="/webjars/bootstrap/3.3.4/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Bootstrap theme -->
<link href="/webjars/bootstrap/3.3.4/dist/css/bootstrap-theme.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="theme.css" rel="stylesheet">

<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script src="../../assets/js/ie-emulation-modes-warning.js"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body role="document">

	<!-- Fixed navbar -->
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Bootstrap theme</a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Home</a></li>
					<li><a href="#about">About</a></li>
					<li><a href="#contact">Contact</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-expanded="false">Dropdown
							<span class="caret"></span>
					</a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li class="divider"></li>
							<li class="dropdown-header">Nav header</li>
							<li><a href="#">Separated link</a></li>
							<li><a href="#">One more separated link</a></li>
						</ul></li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</nav>

	<div class="container theme-showcase" role="main">

		<!-- Main jumbotron for a primary marketing message or call to action -->

		<br /> <br /> <br />
		<div class="row">
			<div class="panel panel-default">
				<div class="panel-body">
					<div class="col-md-6">
						<div align="center">
							<img src="../resources/images/.gif" alt="" style="height: 300px;">
						</div>
					</div>
					<div class="col-md-6">
						제품명 : 신발 <br /> 
						가격 :  <br /> 
						매물 갯수 : <br /> 
						사이즈 :
						<button type="button" class="btn btn-default">200</button>
						<button type="button" class="btn btn-default">210</button>
						<button type="button" class="btn btn-default">220</button>
						<button type="button" class="btn btn-default">230</button>
						<div class="btn-group" role="group" aria-label="...">
							<button type="button" class="btn btn-default">200</button>
							<button type="button" class="btn btn-default">210</button>
							<button type="button" class="btn btn-default">220</button>
							<button type="button" class="btn btn-default">230</button>
						</div>
					</div>
				</div>
			</div>
		</div>

		<br /> <br />

		<div class="row">
			<table class="table table-striped">
				<thead>
					<tr>
						<th>#</th>
						<th>이름</th>
						<th>사이즈</th>
						<th>가격</th>
						<th>갯수</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">1</th>
						<td>오빠룽</td>
						<td>210</td>
						<td>210000</td>
						<td>1</td>
					</tr>
					<tr>
						<th scope="row">2</th>
						<td>은아</td>
						<td>200</td>
						<td>210000</td>
						<td>1</td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td>은비</td>
						<td>190</td>
						<td>210000</td>
						<td>1</td>
					</tr>
				</tbody>
			</table>
		</div>



	</div>
	<!-- /container -->


	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="/webjars/bootstrap/3.3.4/dist/js/bootstrap.min.js"></script>
	<script src="../../assets/js/docs.min.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
