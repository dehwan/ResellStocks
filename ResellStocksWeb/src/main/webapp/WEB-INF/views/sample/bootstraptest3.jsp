<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="en">

<head>dd

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>오빠</title>

    <!-- Bootstrap core CSS -->
	<link href="../resources/css/bootstrap.min.css" rel="stylesheet">
	<!-- Bootstrap theme -->
	<link href="/webjars/bootstrap/3.3.4/dist/css/bootstrap-theme.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../resources/css/clean-blog.min.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='http://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-custom navbar-fixed-top">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">Start Bootstrap</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="index.html">Home</a>
                    </li>
                    <li>
                        <a href="about.html">About</a>
                    </li>
                    <li>
                        <a href="post.html">Sample Post</a>
                    </li>
                    <li>
                        <a href="contact.html">Contact</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Page Header -->
    <!-- Set your background image for this header on the line below. -->
    <header class="intro-header" style="background-image: url('../resources/img/home-bg.jpg')">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                    <div class="site-heading">
                        <h1>신발을 사자</h1>
                        <hr class="small">
                        <span class="subheading">호호호</span>
                        <br/><br/>
                        <div class="input-group">
							<input type="text" class="form-control" placeholder="Search for...">
							<span class="input-group-btn">
								<button class="btn btn-default" type="button">
								  <span class="glyphicon glyphicon-search" aria-hidden="true"></span> Go!
								</button>
							</span>
						</div>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- Main Content -->
    <div class="container">
    	<div class="row">
			
		</div>

		<br/>
		<br/>
		
		<div class="row">
			<div class="col-xs-6 col-md-3">
				<a href="/sample/itemView.do" class="thumbnail"><img src="../resources/image/official/106-300x214-Air-Jordan-4-Retro-Green-Glow.jpg" alt="" style="height: 200px;"></a>
				<h4 class="post-subtitle" style="text-align: center;">내가 좋아하는 신발</h4>
			</div>
			<div class="col-xs-6 col-md-3">
				<a href="#" class="thumbnail"><img src="../resources/image/official/1122-300x214-Air-Jordan-6-Retro-Sport-Blue-2014.jpg" alt=".." style="height: 200px;"></a>
				<h4 class="post-subtitle" style="text-align: center;">오빠가 좋아하는 신발</h4>
			</div>
			<div class="col-xs-6 col-md-3">
				<a href="#" class="thumbnail"><img src="../resources/image/official/1179-300x214-Air-Jordan-1-Retro-Chicago-2015.jpg" alt="..." style="height: 200px;"></a>
				<h4 class="post-subtitle" style="text-align: center;">오빠가 좋아하는 신발2</h4>
			</div>
			<div class="col-xs-6 col-md-3">
				<a href="#" class="thumbnail"><img src="../resources/image/official/1198-300x214-Air-Jordan-4-Retro-Oreo-Tech-Grey-2015.jpg" alt="..." style="height: 200px;"></a>
				<h4 class="post-subtitle" style="text-align: center;">내가 좋아하는 신발2</h4>
			</div>
		</div>
		<br/>
		<div class="row">
			<div class="col-xs-6 col-md-3">
				<a href="/sample/itemView.do" class="thumbnail"><img src="../resources/image/official/1203-300x214-Air-Jordan-6-Retro-Infrared-Black-2014.jpg" alt="" style="height: 200px;"></a>
				<h5 class="post-subtitle" style="text-align: center;">Air-Jordan-6-Retro-Infrared</h5>
			</div>
			<div class="col-xs-6 col-md-3">
				<a href="#" class="thumbnail"><img src="../resources/image/official/121-300x214-Air-Jordan-4-Retro-Toro-Bravo.jpg" alt=".." style="height: 200px;"></a>
				<h5 class="post-subtitle" style="text-align: center;">Air-Jordan-4-Retro-Toro-Bravo</h5>
			</div>
			<div class="col-xs-6 col-md-3">
				<a href="#" class="thumbnail"><img src="../resources/image/official/12159475982980304512-300x214-Air-Jordan-11-Retro-72-10.jpg" alt="..." style="height: 200px;"></a>
				<h5 class="post-subtitle" style="text-align: center;">Air-Jordan-11-Retro</h5>
			</div>
			<div class="col-xs-6 col-md-3">
				<a href="#" class="thumbnail"><img src="../resources/image/official/12200070047899859166-300x214-Air-Jordan-4-Retro-White-Cement-2016.jpg" alt="..." style="height: 200px;"></a>
				<h5 class="post-subtitle" style="text-align: center;">Air-Jordan-4-Retro-White-Cement</h5>
			</div>
		</div>
		<br/>
		<div class="row">
			<div class="col-xs-6 col-md-3">
				<a href="/sample/itemView.do" class="thumbnail"><img src="../resources/image/official/1222-300x214-Air-Jordan-11-Retro-Legend-Blue.jpg" alt="" style="height: 200px;"></a>
				<h5 class="post-subtitle" style="text-align: center;">ㅋ</h5>
			</div>
			<div class="col-xs-6 col-md-3">
				<a href="#" class="thumbnail"><img src="../resources/image/official/1223-300x214-Air-Jordan-11-Retro-Low-Bred.jpg" alt=".." style="height: 200px;"></a>
				<h5 class="post-subtitle" style="text-align: center;">ㅋ</h5>
			</div>
			<div class="col-xs-6 col-md-3">
				<a href="#" class="thumbnail"><img src="../resources/image/official/1225-300x214-Air-Jordan-11-Retro-Low-Georgetown.jpg" alt="..." style="height: 200px;"></a>
				<h5 class="post-subtitle" style="text-align: center;">ㅋ</h5>
			</div>
			<div class="col-xs-6 col-md-3">
				<a href="#" class="thumbnail"><img src="../resources/image/official/12261529158351386506-300x214-Nike-Air-Max-98-Supreme-Snakeskin.jpg" alt="..." style="height: 200px;"></a>
				<h5 class="post-subtitle" style="text-align: center;">ㅋ</h5>
			</div>
		</div>
		<br/>
		<div class="row">
			<div class="col-xs-6 col-md-3">
				<a href="/sample/itemView.do" class="thumbnail"><img src="../resources/image/official/12261531254308892381-300x214-Nike-Air-Max-98-Supreme-Black.jpg" alt="" style="height: 200px;"></a>
				<h5 class="post-subtitle" style="text-align: center;">ㅋ</h5>
			</div>
			<div class="col-xs-6 col-md-3">
				<a href="#" class="thumbnail"><img src="../resources/image/official/167-300x214-Air-Jordan-6-Retro-Carmine-2014.jpg" alt=".." style="height: 200px;"></a>
				<h5 class="post-subtitle" style="text-align: center;">ㅋ</h5>
			</div>
			<div class="col-xs-6 col-md-3">
				<a href="#" class="thumbnail"><img src="../resources/image/official/215422231-300x214-Air-Jordan-6-Retro-Maroon-2015.jpg" alt="..." style="height: 200px;"></a>
				<h5 class="post-subtitle" style="text-align: center;">ㅋ</h5>
			</div>
			<div class="col-xs-6 col-md-3">
				<a href="#" class="thumbnail"><img src="../resources/image/official/28222222-300x214-Air-Jordan-5-Retro-Supreme-Desert-Camo.jpg" alt="..." style="height: 200px;"></a>
				<h5 class="post-subtitle" style="text-align: center;">ㅋ</h5>
			</div>
		</div>
		<br/>
		<div class="row">
			<div class="col-xs-6 col-md-3">
				<a href="/sample/itemView.do" class="thumbnail"><img src="../resources/image/official/291-300x214-Air-Jordan-11-Retro-Gamma-Blue.jpg" alt="" style="height: 200px;"></a>
				<h5 class="post-subtitle" style="text-align: center;">ㅋ</h5>
			</div>
			<div class="col-xs-6 col-md-3">
				<a href="#" class="thumbnail"><img src="../resources/image/official/304-300x214-Air-Jordan-11-Retro-Playoffs-Bred-2012.jpg" alt=".." style="height: 200px;"></a>
				<h5 class="post-subtitle" style="text-align: center;">ㅋ</h5>
			</div>
			<div class="col-xs-6 col-md-3">
				<a href="#" class="thumbnail"><img src="../resources/image/official/aj11-low-concord1.jpg" alt="..." style="height: 200px;"></a>
				<h5 class="post-subtitle" style="text-align: center;">ㅋ</h5>
			</div>
			<div class="col-xs-6 col-md-3">
			
			</div>
		</div>
    </div>

    <hr>

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                    <ul class="list-inline text-center">
                        <li>
                            <a href="#">
                                <span class="fa-stack fa-lg">
                                    <i class="fa fa-circle fa-stack-2x"></i>
                                    <i class="fa fa-twitter fa-stack-1x fa-inverse"></i>
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span class="fa-stack fa-lg">
                                    <i class="fa fa-circle fa-stack-2x"></i>
                                    <i class="fa fa-facebook fa-stack-1x fa-inverse"></i>
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span class="fa-stack fa-lg">
                                    <i class="fa fa-circle fa-stack-2x"></i>
                                    <i class="fa fa-github fa-stack-1x fa-inverse"></i>
                                </span>
                            </a>
                        </li>
                    </ul>
                    <p class="copyright text-muted">Copyright &copy; Your Website 2014</p>
                </div>
            </div>
        </div>
    </footer>

    <!-- jQuery -->
    <script src="../resources/js/jquery.js"></script>
    
    <!-- Bootstrap Core JavaScript -->
    <script src="../resources/js/bootstrap.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../resources/js/clean-blog.min.js"></script>

</body>

</html>