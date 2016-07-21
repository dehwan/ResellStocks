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
    
<!--     <link rel="stylesheet" href="../resources/css/creative.css" type="text/css"> -->

    <!-- Custom Fonts -->
    <link href="../resources/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
<!-- 	<link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>     -->

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
                <a class="navbar-brand topnav" href="/stocks.do">Resell Stocks</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="#about">About</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>


    <!-- Header -->
    <div class="intro-header">
        <div class="container">

			<form name="search" method="POST" action="stocks.do">
	            <div class="row">
	                <div class="col-lg-12">
	                    <div class="intro-message">
	                        <h1>Resell Stocks</h1>
	                        <h3>Prototype</h3>
	                        <hr class="intro-divider">
	                        <br/><br/><br/>
	                        <div class="col-md-2"></div>
							<div class="col-md-8">
								<div class="input-group">
									<input type="text" class="form-control input-lg" placeholder="Search for brand, color, etc." name="search" value="${search.search }"/>
									<span class="input-group-btn">
										<button class="btn btn-default btn-lg" type="button" onclick="submit();">
										  <span class="glyphicon glyphicon-search" aria-hidden="true"></span> Get it
										</button>
									</span>
								</div>
							</div>
							<div class="col-md-2"></div>
	                    </div>
	                </div>
	            </div>
			</form>

        </div>
        <!-- /.container -->

    </div>
    <!-- /.intro-header -->
    
<!--     <div class="content-section-a"> -->

<!--         <div class="container"> -->
<!--             <div class="row"> -->
<!--                 <div class="col-lg-5 col-sm-6"> -->
<!--                     <hr class="section-heading-spacer"> -->
<!--                     <div class="clearfix"></div> -->
<!--                     <h2 class="section-heading">Current Stocks:&nbsp;250</h2> -->
<!--                     <p class="lead">go for <a target="_blank" href="http://join.deathtothestockphoto.com/">stocks !!</a></p> -->
<!--                 </div> -->
<!--             </div> -->

<!--         </div> -->
<!--         /.container -->

<!--     </div> -->
<br>
<br>
    <!-- Page Content -->

	<div class="container">
		<p class="lead" style="padding-bottom:7px; border-bottom:1px solid #bdbdbd;" ><img src="../resources/images/price-tag-icon.svg" style="width:2.7%;" align="top">&nbsp;STOCKS</p> 
		<div class="row">
			<c:choose>
				<c:when test="${fn:length(stocks) > 0}">
					<c:forEach items="${stocks }" var="stock">
						<a href="/detail.do?official=${stock.OC_ID }">
							<div class="col-xs-6 col-md-3">
							<img src="${stock.OC_PIC }" class="img-responsive" alt="">
							<div style="min-height: 38px;">
								<h4 style="text-align: left; letter-spacing:1.2px">${stock.OC_NAME }</h4>
							</div>
							<p>Price<img src="../resources/images/up.png" style="width:7%">${stock.MAX_PRICE }<img src="../resources/images/down.png" style="width:7%">${stock.MIN_PRICE }</p>
							</div>
						</a>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<div class="col-xs-6 col-md-3">
						<img src="../resources/images/default-sneaker.jpg" class="img-responsive" alt="">
						<p>검색한 매물이 없습니다</p>
					</div>
				</c:otherwise>
			</c:choose>
		</div>
		<br />
	</div>
	<br>
	<br>
	<br>
	<!-- /.container -->

	<div class="banner">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <h2>Go to Start SneakerHeads:</h2>
                </div>
                <div class="col-lg-6">
                    <ul class="list-inline banner-social-buttons">
                        <li>
                            <a href="https://twitter.com/SBootstrap" class="btn btn-default btn-lg"><i class="fa fa-twitter fa-fw"></i> <span class="network-name">FootSell</span></a>
                        </li>
                        <li>
                            <a href="https://github.com/IronSummitMedia/startbootstrap" class="btn btn-default btn-lg"><i class="fa fa-github fa-fw"></i> <span class="network-name">Nike Mannia</span></a>
                        </li>
                    </ul>
                </div>
            </div>

        </div>
        <!-- /.container -->
    </div>
    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <ul class="list-inline">
                        <li>
                            <a href="/stocks.do">Home</a>
                        </li>
                        <li class="footer-menu-divider">&sdot;</li>
                        <li>
                            <a href="#about">About</a>
                        </li>
                    </ul>
                    <p class="copyright text-muted small">Copyright &copy; dehawn 2016. All Rights Reserved</p>
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
