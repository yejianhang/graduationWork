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
    <link href="http://cn.inspinia.cn/html/inspiniaen/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="http://cn.inspinia.cn/html/inspiniaen/css/animate.css" rel="stylesheet">
    <link href="http://cn.inspinia.cn/html/inspiniaen/css/style.css" rel="stylesheet">

</head>

<body>

    <div id="wrapper">

    <nav class="navbar-default navbar-static-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav metismenu" id="side-menu">
                <li class="nav-header">
                    <div class="dropdown profile-element"> <span>
                            <img alt="image" class="img-circle" src="/Gym_manage_local/${sessionScope.user.user_picsrc }"  height="70" width="70" />
                             </span>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="clear"> <span class="block m-t-xs"> <strong class="font-bold">${user.user_name}</strong>
                             </span> <span class="text-muted text-xs block">会员<c:if test="${sessionScope.IsOverdue eq 1}">(已过期)</c:if> <b class="caret"></b></span> </span> </a>
                            <ul class="dropdown-menu animated fadeInRight m-t-xs">
                                <li><a href="UserShowInfo.do?user_id=${sessionScope.user.user_id }">个人信息</a></li>
                                <li class="divider"></li>
                                <li><a onclick="quit()">登出</a></li>
                            </ul>
                        </div>
                        <div class="logo-element">
                            IN+
                        </div>
                        <li>
                        <a href="returnProfile.do"><span class="nav-label">主页</span></a>
	                    </li>
	                    <li>
	                        <a href="ShowCardInfo.do?user_id=${sessionScope.user.user_id }"><span class="nav-label">会员卡信息</span></a>
	                    </li>
	                    <li>
	                        <a href="#"><span class="nav-label">课程</span></a>
	                        <ul class="nav nav-second-level ui-sortable collapse" style="height: 0px;">
	                            <li><a href="listCourse.do" onclick="return checkIsDue(${sessionScope.IsOverdue })">所有课程</a></li>
	                            <li><a href="UseShowBookedCourse.do?user_id=${sessionScope.user.user_id }" onclick="return checkIsDue(${sessionScope.IsOverdue })">已选课程</a></li>
	                        </ul>
	                    </li>
	                    <li>
	                        <a href="UserShowBodyMeas.do?user_id=${sessionScope.user.user_id }" onclick="return checkIsDue(${sessionScope.IsOverdue })"><span class="nav-label">体测信息</span></a>
	                    </li>
	                   <li>
                        <a href="listCoach.do" onclick="return checkIsDue(${sessionScope.IsOverdue })"> <span class="nav-label">私人教练 </span><span class="label label-warning pull-right">${sessionScope.coachNum }</span></a></a>
                        </li>
	                    <li>
	                        <a href="UseShowBookedCoach.do?user_id=${sessionScope.user.user_id }" onclick="return checkIsDue(${sessionScope.IsOverdue })"> <span class="nav-label">我的私教</span></a>
	                    </li>
	                    <li>
	                        <a href="listQandA.do" onclick="return checkIsDue(${sessionScope.IsOverdue })"> <span class="nav-label">健身论坛 </span></a>
	                    </li>
	                    <li>
                       	    <a href="UserEnterChatPanel.do" onclick="return checkIsDue(${sessionScope.IsOverdue })"> <span class="nav-label">消息中心 </span></a>
                    	</li>
	                    </ul>

        </div>
    </nav>

        <div id="page-wrapper" class="gray-bg">
        <div class="row border-bottom">
        <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
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
            <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-9">
                    <h2>会员卡信息</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="index.html">主页</a>
                        </li>
                        <li class="active">
                            <strong>会员卡信息</strong>
                        </li>
                    </ol>
                </div>
            </div>
        <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-lg-3">
                <div class="widget style1">
                        <div class="row">
                            <div class="col-xs-4 text-center">
                                <img alt="" src="/Gym_manage_local/1555655725(1).jpg">
                            </div>
                        </div>
                </div>
            </div>
            
            
        </div>
        <div class="row">
            <div class="col-lg-6">
                <div class="widget style1 yellow-bg">
                    <div class="p-m">
                        <h1 class="m-xs">
                  		<c:if test="${user.user_level eq 1}">月卡 </c:if>  
                  		<c:if test="${user.user_level eq 2}">半年卡 </c:if>  
                  		<c:if test="${user.user_level eq 3}">年卡 </c:if>  
                  		<c:if test="${user.user_level eq 4}">两年卡 </c:if>     
                        <c:if test="${user.user_card_isDue eq 1}">   (已到期)</c:if></h1>

                        <h3 class="font-bold no-margins">
                            日期截至
                        </h3>
                        <small>${user.user_menberStart }——${user.user_Due_date}</small>
                    </div>
                    <div class="flot-chart">
                        <div class="flot-chart-content" id="flot-chart1"></div>
                    </div>
                    <button type="button" class="btn btn-w-m btn-warning" onclick="window.location.href='IntoRenewals.do'">续费</button>
                </div>
            </div>
           
        </div>
          

        </div>

        </div>
        </div>

    <!-- Mainly scripts -->
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="http://cn.inspinia.cn/html/inspiniaen/js/jquery-3.1.1.min.js"></script>
    <script src="http://cn.inspinia.cn/html/inspiniaen/js/bootstrap.min.js"></script>
    <script src="http://cn.inspinia.cn/html/inspiniaen/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="http://cn.inspinia.cn/html/inspiniaen/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- jquery UI -->
    <script src="http://cn.inspinia.cn/html/inspiniaen/js/plugins/jquery-ui/jquery-ui.min.js"></script>

    <!-- Touch Punch - Touch Event Support for jQuery UI -->
    <script src="http://cn.inspinia.cn/html/inspiniaen/js/plugins/touchpunch/jquery.ui.touch-punch.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="http://cn.inspinia.cn/html/inspiniaen/js/inspinia.js"></script>
    <script src="http://cn.inspinia.cn/html/inspiniaen/js/plugins/pace/pace.min.js"></script>

    <!-- iCheck -->
    <script src="http://cn.inspinia.cn/html/inspiniaen/js/plugins/iCheck/icheck.min.js"></script>

    <!-- Jvectormap -->
    <script src="http://cn.inspinia.cn/html/inspiniaen/js/plugins/jvectormap/jquery-jvectormap-2.0.2.min.js"></script>
    <script src="http://cn.inspinia.cn/html/inspiniaen/js/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>

    <!-- Flot -->
    <script src="http://cn.inspinia.cn/html/inspiniaen/js/plugins/flot/jquery.flot.js"></script>
    <script src="http://cn.inspinia.cn/html/inspiniaen/js/plugins/flot/jquery.flot.tooltip.min.js"></script>
    <script src="http://cn.inspinia.cn/html/inspiniaen/js/plugins/flot/jquery.flot.resize.js"></script>
    <script src="yangshi/js/QuitJs.js"></script>
    <script>
       
    </script>
    <script>
	function checkIsDue(x) {
        if(x==1){
        	swal("您的会员卡已经到期!请到会员卡信息中心续费！");
        	return false;
        }
    }
	</script>

</body>

</html>
