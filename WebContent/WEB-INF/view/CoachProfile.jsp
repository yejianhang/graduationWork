<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>私教主页------私教</title>
	<link rel="stylesheet" type="text/css" href="/yangshi/css/sweetalert.css"/>
    <link href="http://cn.inspinia.cn/html/inspiniaen/css/bootstrap.min.css" rel="stylesheet">
    <link href="http://cn.inspinia.cn/html/inspiniaen/font-awesome/css/font-awesome.css" rel="stylesheet">
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
                            <img alt="image" class="img-circle" src="/Gym_manage_local/${sessionScope.coach.coach_picsrc }" height="70" width="70"  />
                             </span>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="clear"> <span class="block m-t-xs"> <strong clas s="font-bold">${sessionScope.coach.coach_name }</strong>
                             </span> <span class="text-muted text-xs block">私教 <b class="caret"></b></span> </span> </a>
                            <ul class="dropdown-menu animated fadeInRight m-t-xs">
                                <li><a href="CoachEditInfo.do?coach_id=${sessionScope.coach.coach_id }">个人信息</a></li>
                                <li><a onclick="quit()">登出</a></li>
                            </ul>
                        </div>
                        <div class="logo-element">
                            IN+
                        </div>
                    </li>
                    <li>
                        <a href="#"> <span class="nav-label">主页</span></a>
                    </li>
                    <li>
                    	
                        <a href="CoachEditInfo.do?coach_id=${sessionScope.coach.coach_id }"> 个人信息</a>
                    </li>
                    <li>
                        <a href="CoachShowAllXY.do?coach_id=${sessionScope.coach.coach_id }"><span class="nav-label">学员</span></a>
                    
                    </li>
                    <li>
                        <a href="EnterCoachChat.do?coach_id=${sessionScope.coach.coach_id }"><span class="nav-label">消息中心</span></a>
                     
                    </li>
                    <li>
                        <a href="EnterFileCenter.do?Upload_id=${sessionScope.coach.coach_id }"><span class="nav-label">文件中心</span></a>
                     
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
                <div class="col-lg-10">
                    <h2>管理界面</h2>
                    <ol class="breadcrumb">
                        
                    </ol>
                </div>
                <div class="col-lg-2">

                </div>
            </div>
       
    <!-- Mainly scripts -->
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="http://cn.inspinia.cn/html/inspiniaen/js/jquery-3.1.1.min.js"></script>
    <script src="http://cn.inspinia.cn/html/inspiniaen/js/bootstrap.js"></script>
    <script src="http://cn.inspinia.cn/html/inspiniaen/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="http://cn.inspinia.cn/html/inspiniaen/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="http://cn.inspinia.cn/html/inspiniaen/js/inspinia.js"></script>
    <script src="http://cn.inspinia.cn/html/inspiniaen/js/plugins/pace/pace.min.js"></script>

    <!-- Peity -->
    <script src="http://cn.inspinia.cn/html/inspiniaen/js/plugins/peity/jquery.peity.min.js"></script>
    <!-- Peity -->
    <script src="http://cn.inspinia.cn/html/inspiniaen/js/demo/peity-demo.js"></script>
    <script src="yangshi/js/QuitJs.js"></script>
    <script>

</script>
</body>

</html>
