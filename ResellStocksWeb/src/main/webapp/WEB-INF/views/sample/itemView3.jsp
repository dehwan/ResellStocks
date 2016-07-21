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
<!-- 	<link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>     -->

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
	<!-- jQuery -->
    <script>
    var id = "${id}";
    var size = "";
    
    function initChart() {
//     	myChart.clear();
		$.ajax({
		    url : "<c:url value='/drawChart.do'/>?official="+this.id+"&size="+this.size,    
		    type : "GET",   
		    async : false, 
		    success : function(data, status) {
		    	chartDate = new Array();
		    	chartDataMax = new Array();
		    	chartDataMin = new Array();
		    	
				$.each(data.chartData, function(key, value){
					chartDate.push(value.SL_REG_DATE);
					chartDataMax.push(value.MAX_PRICE);
					chartDataMin.push(value.MIN_PRICE);
				});
				drawPirceChart();
			},error:function(e) {
				myChart.clear();
		    }
		});
	}
    
	function bySize(size) {
		this.size = size;
		var comSubmit = new ComSubmit();
        comSubmit.setUrl("<c:url value='/detailBySize.do'/>?official="+this.id+"&size="+this.size);
        comSubmit.ajax();
        myChart.destroy();
        initChart();
	}
	
	function ComSubmit() {
		this.url="";
		
		this.setUrl = function setUrl(url){
			this.url = url;
	    };
	    this.ajax = function ajax(){
			$.ajax({
			    url : this.url,    
			    type : "GET",   
			    async : false, 
			    success : function(data, status) {
			    	makeTags(data)
				},error:function(e) {
			    	var str="<table id=\"listTable\" class=\"table table-striped\">";
			        str+="<thead>";
					str += "<tr>";
					str += "<th>사이즈</th>";
					str += "<th>가격</th>";
					str += "<th>등록날짜</th>";
					str += "<th>구매</th>";
					str += "</tr>";
					str += "</thead>";
					str += "<tr><td colspan=\"4\" style=\"align:center\">매물이 없습니다.</td></tr>"
					str += "</table>";
			    	$("#listTable").html(str);
			    }
			});
		}

	}
	
	function makeTags(data){
		var str ="<table id=\"listTable\" class=\"table table-striped\">";
        str +="<thead>";
		str += "<tr>";
		str += "<th>사이즈</th>";
		str += "<th>가격</th>";
		str += "<th>등록날짜</th>";
		str += "<th>구매</th>";
		str += "</tr>";
		str += "</thead>";
		var total = data.total;
		if(total > 0){
			$.each(data.stocks, function(key, value){
				str += "<tr>";
				str += "<td>"+value.SL_SIZE+"</td>";
				str += "<td>"+value.SL_PRICE+"</td>";
				str += "<td>"+value.SL_REG_DATE+"</td>";
				str += "<td><a href=\""+value.SL_URL+"\" target=\"_blank\">GO GET IT</a></td>";
				str += "</tr>";
			});
		} else {
			str += "<tr><td colspan=\"4\" style=\"align:center\">매물이 없습니다.</td></tr>"
			str += "</table>";
		}
		$("#listTable").html(str);
	}
	</script>
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


    <!-- Page Content -->
    <div class="detail-slide">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
	            </div>
	            <div class="col-md-9">
	
	                <div class="row carousel-holder">
	                    <div class="col-md-12">
	                        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
	                            <ol class="carousel-indicators">
	                                <li data-target="#carousel-example-generic" data-slide-to="0" class=""></li>
	                                <li data-target="#carousel-example-generic" data-slide-to="1" class=""></li>
	                                <li data-target="#carousel-example-generic" data-slide-to="2" class="active"></li>
	                            </ol>
	                            <div class="carousel-inner">
	                            	<c:if test="${fn:length(crushPics) > 0}">
	                            		<c:set var="cnt" value="1" />
										<c:forEach items="${crushPics}" var="pic">
										<c:choose>
											<c:when test="${cnt == 1 }">
												<div class="item active">
											</c:when>
											<c:otherwise>
												<div class="item">
											</c:otherwise>
										</c:choose>
	                                    		<img class="slide-image" src="${pic.CP_PIC}" alt="">
	                                		</div>
	                                		<c:set var="cnt" value="${cnt+1}" />
										</c:forEach>
									</c:if>
	                            </div>
	                            <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
	                                <span class="glyphicon glyphicon-chevron-left"></span>
	                            </a>
	                            <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
	                                <span class="glyphicon glyphicon-chevron-right"></span>
	                            </a>
	                        </div>
	                    </div>
	
	                </div>
	            </div>
			</div>
			<br />
		</div>
	</div>
	<div class="content-section-a">
        <div class="container">
            <div class="row">
                <div class="col-lg-5 col-sm-6" style="width:40%">
                    <hr class="section-heading-spacer">
                    <div class="clearfix"></div>
                    <h2 class="section-heading">${official.OC_NAME}</h2>
                  	<p>
                    	출시일:&nbsp;${official.OC_DATE}
                    	<br>
                    	제품번호:&nbsp;${official.OC_PRODUCT_NO}
                    	<br>
                    	<br>
<%--                     	발매가:&nbsp;${official.OC_PRICE_KO} --%>
                    </p>
                    <!-- Contextual button for informational alert messages -->
					<button type="button" class="btn btn-default btn-xs" onclick="javascript:bySize(230);">230</button>
					<button type="button" class="btn btn-default btn-xs" onclick="javascript:bySize(235);">235</button>
					<button type="button" class="btn btn-default btn-xs" onclick="javascript:bySize(240);">240</button>
					<button type="button" class="btn btn-default btn-xs" onclick="javascript:bySize(245);">245</button>
					<button type="button" class="btn btn-default btn-xs" onclick="javascript:bySize(250);">250</button>
					<button type="button" class="btn btn-default btn-xs" onclick="javascript:bySize(255);">255</button>
					<button type="button" class="btn btn-default btn-xs" onclick="javascript:bySize(260);">260</button>
					<button type="button" class="btn btn-default btn-xs" onclick="javascript:bySize(265);">265</button>
					<button type="button" class="btn btn-default btn-xs" onclick="javascript:bySize(270);">270</button>
					<button type="button" class="btn btn-default btn-xs" onclick="javascript:bySize(275);">275</button>
					<button type="button" class="btn btn-default btn-xs" onclick="javascript:bySize(280);">280</button>
					<button type="button" class="btn btn-default btn-xs" onclick="javascript:bySize(285);">285</button>
					<button type="button" class="btn btn-default btn-xs" onclick="javascript:bySize(290);">290</button>
					<button type="button" class="btn btn-default btn-xs" onclick="javascript:bySize(295);">295</button>
					<button type="button" class="btn btn-default btn-xs" onclick="javascript:bySize(300);">300</button>
                </div>
                <div class="col-lg-5 col-lg-offset-0 col-sm-6" style="width:60%">
                	<p class="copyright text-muted small" style="text-align: center;">최근 한달간 가격 변동 추이</p>
                	<canvas id="chart-price" style=""></canvas>
<!--                     <div id="container-chart" style="width:100%; min-width: 310px; height: 400px; margin: 0 auto"></div> -->
                </div>
            </div>

        </div>
        <!-- /.container -->

    </div>
    <div class="content-section-b">
        <div class="container">
            <div class="row">
	            <div class="col-lg-9-1">
		            <table id="listTable" class="table table-striped">
		            	<thead>
			            	<tr>
			            		<th>사이즈</th>
			            		<th>가격</th>
			            		<th>등록날짜</th>
			            		<th>구매</th>
			            	</tr>
		            	</thead>
		            	<c:choose>
							<c:when test="${fn:length(stocks) > 0}">
								<c:forEach items="${stocks }" var="stock">
									<tr>
										<td>${stock.SL_SIZE}</td>
										<td>${stock.SL_PRICE}</td>
										<td>${stock.SL_REG_DATE }</td>
										<td><a href="${stock.SL_URL }" target="_blank">GO GET IT</a></td>
									</tr>
								</c:forEach>
							</c:when>
							<c:otherwise>
								<tr>
									<td colspan="4" style="align:center">매물이 업습니다.</td>
								</tr>
							</c:otherwise>
						</c:choose>
					</table>
				</div>
            </div>
        </div>
    </div>
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
<!--                             <a href="https://twitter.com/SBootstrap" class="btn btn-default btn-lg"><i class="fa fa-twitter fa-fw"></i> <span class="network-name">FootSell</span></a> -->
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

    
    
    <!-- Custom  -->
<script src="../resources/js/jquery.js"></script>

<script src="../resources/js/jquery.min.js"></script>
    
<!-- Bootstrap Core JavaScript -->
<script src="../resources/js/bootstrap.min.js"></script>
<script src="../resources/chart/js/Chart.js"></script>
<!-- <script src="../resources/chart/js/Chart.min.js"></script> -->
<script type="text/javascript">
var ctx = document.getElementById("chart-price").getContext("2d");

var chartDate = new Array();
var chartDataMax = new Array();
var chartDataMin = new Array();
var myChart;

function drawPirceChart() {
	myChart = new Chart(ctx, {
	    type: 'line',
	    data: {
	    	labels: chartDate,
	        datasets: [
	            {
	                label: "최고가",
	                fill: false,
	                lineTension: 0.1,
	                backgroundColor: "rgba(11,201,4,0.7)",
	                borderColor: "rgba(11,201,4,0.7)",
	                borderCapStyle: 'butt',
	                borderJoinStyle: 'miter',
	                pointBorderColor: "rgba(11,201,4,0.7)",
	                pointBackgroundColor: "#41FF3A",
	                pointBorderWidth: 1,
	                pointHoverRadius: 5,
	                pointHoverBackgroundColor: "rgba(11,201,4,1)",
	                pointHoverBorderColor: "rgba(220,220,220,1)",
	                pointHoverBorderWidth: 2,
	                pointRadius: 1,
	                pointHitRadius: 10,
	                data: chartDataMax
	            },
	            {
	                label: "최저가",
	                fill: false,
	                lineTension: 0.1,
	                backgroundColor: "rgba(255,051,051,0.7)",
	                borderColor: "rgba(255,051,051,0.7)",
	                borderCapStyle: 'butt',
	                borderJoinStyle: 'miter',
	                pointBorderColor: "rgba(255,051,051,0.7)",
	                pointBackgroundColor: "#FF3333",
	                pointBorderWidth: 1,
	                pointHoverRadius: 5,
	                pointHoverBackgroundColor: "rgba(255,051,051,1)",
	                pointHoverBorderColor: "rgba(220,220,220,1)",
	                pointHoverBorderWidth: 2,
	                pointRadius: 1,
	                pointHitRadius: 10,
	                data: chartDataMin
	            }
	        ]
	    },
	    options: {
	        scales: {
	            yAxes: [{
	                ticks: {
	                    beginAtZero:true
	                }
	            }]
	        }
	    }
	});
}
$(document).ready(function() {
	initChart();
});
</script>
</body>
</html>
