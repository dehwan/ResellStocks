<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Resell Stocks</title>

    <!-- Bootstrap Core CSS -->
    <link href="../resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../resources/css/landing-page.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../resources/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top topnav" role="navigation">
        <div class="container topnav">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand topnav" href="#">Start Bootstrap</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="#">About</a>
                    </li>
                    <li>
                        <a href="#">Services</a>
                    </li>
                    <li>
                        <a href="#">Contact</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
    <!-- Page Content -->

        <div class="container">
        <br /><br /><br /><br />
       		<div class="row">
			<div class="panel panel-default">
				<div class="panel-body" style="height: 300px;">
					<div class="row">
		                <div class="col-md-6">
		                	<div align="center"><img class="img-responsive" src="../resources/image/official/106-300x214-Air-Jordan-4-Retro-Green-Glow.jpg" alt="" style="height: 250px;"></div>
		                </div>
		                <div class="col-md-6">
		                    <div class="clearfix"></div>
		                    <h2 class="section-heading">Air Jordan 4<br/>Retro Green Glow</h2>
                    			<h4>가격 : 210,000</h4>
				                <h4>갯수 : 21</h4>
				                <h4> 사이즈  &nbsp;&nbsp;&nbsp;
						            <div class="btn-group" role="group" aria-label="...">
										<button type="button" class="btn btn-default">200</button>
										<button type="button" class="btn btn-default">210</button>
										<button type="button" class="btn btn-default">220</button>
										<button type="button" class="btn btn-default">230</button>
										<button type="button" class="btn btn-default">240</button>
										<button type="button" class="btn btn-default">250</button>
								</h4>
						</div>
		                </div>
		            </div>
				</div>
			</div>

			<br /> <br />
	
			<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
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
			<div class="col-md-2"></div>
			
			</div>

        </div>
        <!-- /.container -->





    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <ul class="list-inline">
                        <li>
                            <a href="#">Home</a>
                        </li>
                        <li class="footer-menu-divider">&sdot;</li>
                        <li>
                            <a href="#about">About</a>
                        </li>
                        <li class="footer-menu-divider">&sdot;</li>
                        <li>
                            <a href="#services">Services</a>
                        </li>
                        <li class="footer-menu-divider">&sdot;</li>
                        <li>
                            <a href="#contact">Contact</a>
                        </li>
                    </ul>
                    <p class="copyright text-muted small">Copyright &copy; Your Company 2014. All Rights Reserved</p>
                </div>
            </div>
        </div>
    </footer>

    <!-- jQuery -->
    <script src="../resources/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../resources/js/bootstrap.min.js"></script>

</body>

</html>
