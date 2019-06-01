<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="/yangshi/css/sweetalert.css"/>
    <link href="http://cn.inspinia.cn/html/inspiniaen/css/bootstrap.min.css" rel="stylesheet">
    <link href="http://cn.inspinia.cn/html/inspiniaen/font-awesome/css/font-awesome.css" rel="stylesheet">

    <link href="http://cn.inspinia.cn/html/inspiniaen/css/animate.css" rel="stylesheet">
    <link href="http://cn.inspinia.cn/html/inspiniaen/css/style.css" rel="stylesheet">

</head>

<body class="fixed-navigation">
	<input type="hidden" id="monthLength" value="${sessionScope.monthLength }">
	<input type="hidden" id="OrderMonth" value="${sessionScope.OrderMonth }">
    <div id="wrapper">
    <nav class="navbar-default navbar-static-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav metismenu" id="side-menu">
                <li class="nav-header">
                    <div class="dropdown profile-element"> <span>
                             </span>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="clear"> <span class="block m-t-xs">
                             </span> <span class="text-muted text-xs block">管理员 <b class="caret"></b></span> </span> </a>
                            <ul class="dropdown-menu animated fadeInRight m-t-xs">
                                <li><a href="profile.html">个人信息</a></li>
                                <li><a href="contacts.html">好友</a></li>
                                <li><a href="mailbox.html">信箱</a></li>
                                <li class="divider"></li>
                                <li><a href="login.html">登出</a></li>
                            </ul>
                        </div>
                        <div class="logo-element">
                            IN+
                        </div>
                        <li>
                        <a href="ReturnAdIndex.do"> <span class="nav-label">订单中心</span> </a>
                    </li>
                    <li>
                        <a href="AdCourse.do"></i> <span class="nav-label">课程信息管理</span></a>
                    </li>
                    <li>
                        <a href="AdShowAllCoach.do"><span class="nav-label">私教管理</span></a>
                    
                    </li>
                    <li>
                        <a href="AdShowAllUser.do"><span class="nav-label">会员管理 </span></a>
                     
                    </li>
                   
                    </li>
            </ul>

        </div>
    </nav>
	 
        <div id="page-wrapper" class="gray-bg sidebar-content">
        <div class="row border-bottom">
        <nav class="navbar navbar-static-top white-bg" role="navigation" style="margin-bottom: 0">
            <ul class="nav navbar-top-links navbar-right">
                <li>
                    <span class="m-r-sm text-muted welcome-message">欢迎来到JH健身管理后台</span>
                </li>

                <li>
                    <a onclick="quit()">
                        <img  src="/Gym_manage_local/quit.png"> 注销
                    </a>
                </li>
            </ul>
        </nav>
        </div>
            <div class="wrapper wrapper-content">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="ibox float-e-margins">
                            <div class="ibox-content">
                                    <div>
                                        <span class="pull-right text-right">
                                            <br/>
                                            
                                           
                                        </span>
                                        <h1 class="m-b-xs">$ ${sessionScope.yearOrderMoney }</h1>
                                        <h3 class="font-bold no-margins">
                                            销售额
                                        </h3>
                                        <small>月份</small>
                                    </div>

                                <div>
                                    <canvas id="lineChart" height="70"></canvas>
                                </div>

                                <div class="m-t-md">
                                    <small class="pull-right">
                                       <img src="yangshi/picture/clock.png" width="20" height="20" >
                                        最后更新：${sessionScope.date }
                                    </small>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>


                <div class="row">

                    <div class="col-lg-4">
                        <div class="ibox float-e-margins">
                            <div class="ibox-title">
                                <span class="label label-info pull-right">当月</span>
                                <h5>订单</h5>
                            </div>
                            <div class="ibox-content">
                                <h1 class="no-margins">${sessionScope.CountOrderByMonth }笔</h1>
                                <div class="stat-percent font-bold text-info"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="ibox float-e-margins">
                            <div class="ibox-title">
                                <span class="label label-info pull-right">当月</span>
                                <h5>收入</h5>
                            </div>
                            <div class="ibox-content">
                                <h1 class="no-margins">$ ${sessionScope.findOrderBythisMonth }</h1>
                                <div class="stat-percent font-bold text-info"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="ibox float-e-margins">
                            <div class="ibox-title">
                                <span class="label label-warning pull-right">全年</span>
                                <h5>收入</h5>
                            </div>
                            <div class="ibox-content">
                                <h1 class="no-margins">$ ${sessionScope.yearOrderMoney }</h1>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                </div>

            </div>
        

        </div>
    </div>

    <!-- Mainly scripts -->
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="yangshi/js/QuitJs.js"></script>
    <script src="http://cn.inspinia.cn/html/inspiniaen/js/jquery-3.1.1.min.js"></script>
    <script src="http://cn.inspinia.cn/html/inspiniaen/js/bootstrap.min.js"></script>
    <script src="http://cn.inspinia.cn/html/inspiniaen/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="http://cn.inspinia.cn/html/inspiniaen/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Flot -->
    <script src="http://cn.inspinia.cn/html/inspiniaen/js/plugins/flot/jquery.flot.js"></script>
    <script src="http://cn.inspinia.cn/html/inspiniaen/js/plugins/flot/jquery.flot.tooltip.min.js"></script>
    <script src="http://cn.inspinia.cn/html/inspiniaen/js/plugins/flot/jquery.flot.spline.js"></script>
    <script src="http://cn.inspinia.cn/html/inspiniaen/js/plugins/flot/jquery.flot.resize.js"></script>
    <script src="http://cn.inspinia.cn/html/inspiniaen/js/plugins/flot/jquery.flot.pie.js"></script>
    <script src="http://cn.inspinia.cn/html/inspiniaen/js/plugins/flot/jquery.flot.symbol.js"></script>
    <script src="http://cn.inspinia.cn/html/inspiniaen/js/plugins/flot/curvedLines.js"></script>

    <!-- Peity -->
    <script src="http://cn.inspinia.cn/html/inspiniaen/js/plugins/peity/jquery.peity.min.js"></script>
    <script src="http://cn.inspinia.cn/html/inspiniaen/js/demo/peity-demo.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="http://cn.inspinia.cn/html/inspiniaen/js/inspinia.js"></script>
    <script src="http://cn.inspinia.cn/html/inspiniaen/js/plugins/pace/pace.min.js"></script>

    <!-- jQuery UI -->
    <script src="http://cn.inspinia.cn/html/inspiniaen/js/plugins/jquery-ui/jquery-ui.min.js"></script>

    <!-- Jvectormap -->
    <script src="http://cn.inspinia.cn/html/inspiniaen/js/plugins/jvectormap/jquery-jvectormap-2.0.2.min.js"></script>
    <script src="http://cn.inspinia.cn/html/inspiniaen/js/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>

    <!-- Sparkline -->
    <script src="http://cn.inspinia.cn/html/inspiniaen/js/plugins/sparkline/jquery.sparkline.min.js"></script>

    <!-- Sparkline demo data  -->
    <script src="http://cn.inspinia.cn/html/inspiniaen/js/demo/sparkline-demo.js"></script>

    <!-- ChartJS-->
    <script src="http://cn.inspinia.cn/html/inspiniaen/js/plugins/chartJs/Chart.min.js"></script>
    

    <script>
        $(document).ready(function() {
			var monthLength=$("#monthLength").val();
			var monthOrder=$("#OrderMonth").val();
			var monthOrderSplit=monthOrder.split(",");
			var dad1=[];			
			for (i=0;i<monthOrderSplit.length ;i++ ) 
			{ 
				dad1.push(monthOrderSplit[i]);
			} 
			if(monthLength==1){
				var da=["一月"]
			}
			if(monthLength==2){
				var da=["一月", "二月"]
			}
			if(monthLength==3){
				var da=["一月", "二月", "三月"]
			}
			if(monthLength==4){
				var da=["一月", "二月", "三月", "四月"]
			}
			if(monthLength==5){
				var da=["一月", "二月", "三月", "四月", "五月"]
			}
			if(monthLength==6){
				var da=["一月", "二月", "三月", "四月", "五月","六月"]
			}
			if(monthLength==7){
				var da=["一月", "二月", "三月", "四月", "五月","六月", "七月"]
			}
			if(monthLength==8){
				var da=["一月", "二月", "三月", "四月", "五月","六月", "七月", "八月"]
			}
			if(monthLength==9){
				var da=["一月", "二月", "三月", "四月", "五月","六月", "七月", "八月", "九月"]
			}
			if(monthLength==10){
				var da=["一月", "二月", "三月", "四月", "五月","六月", "七月", "八月", "九月", "十月"]
			}
			if(monthLength==11){
				var da=["一月", "二月", "三月", "四月", "五月","六月", "七月", "八月", "九月", "十月","十一月"]
			}
			if(monthLength==12){
				var da=["一月", "二月", "三月", "四月", "五月","六月", "七月", "八月", "九月", "十月","十一月", "十二月"]
			}
			
            var lineData = {
                labels:da,
                datasets: [
                    {
                        label: "",
                        backgroundColor: "rgba(26,179,148,0.5)",
                        borderColor: "rgba(26,179,148,0.7)",
                        pointBackgroundColor: "rgba(26,179,148,1)",
                        pointBorderColor: "#fff",
                        data: dad1
                    },
                ]
            };

            var lineOptions = {
                responsive: true
            };


            var ctx = document.getElementById("lineChart").getContext("2d");
            new Chart(ctx, {type: 'line', data: lineData, options:lineOptions});

        });
    </script>
</body>
</html>
 