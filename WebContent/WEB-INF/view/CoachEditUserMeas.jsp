<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>私教信息编辑</title>
	<link rel="stylesheet" type="text/css" href="/yangshi/css/sweetalert.css"/>
    <link href="http://cn.inspinia.cn/html/inspiniaen/css/bootstrap.min.css" rel="stylesheet">
    <link href="http://cn.inspinia.cn/html/inspiniaen/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="http://cn.inspinia.cn/html/inspiniaen/css/plugins/summernote/summernote.css" rel="stylesheet">
    <link href="http://cn.inspinia.cn/html/inspiniaen/css/plugins/summernote/summernote-bs3.css" rel="stylesheet">
    <link href="http://cn.inspinia.cn/html/inspiniaen/css/plugins/datapicker/datepicker3.css" rel="stylesheet">
    <link href="http://cn.inspinia.cn/html/inspiniaen/css/animate.css" rel="stylesheet">
    <link href="http://cn.inspinia.cn/html/inspiniaen/css/style.css" rel="stylesheet">
</head>
<body class="pace-done"><div class="pace  pace-inactive"><div class="pace-progress" data-progress-text="100%" data-progress="99" style="transform: translate3d(100%, 0px, 0px);">
  <div class="pace-progress-inner"></div>
</div>
<div class="pace-activity"></div></div>

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
                             </span> <span class="text-muted text-xs block">管理员 <b class="caret"></b></span> </span> </a>
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
                        <a href="returnCoachProfile.do"><span class="nav-label">主页</span></a>
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

    <div id="page-wrapper" class="gray-bg" style="min-height: 1263px;">
        <div class="row border-bottom">
            <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                <ul class="nav navbar-top-links navbar-right">
                    <li>
                        <span class="m-r-sm text-muted welcome-message">私教管理</span>
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
                <h2>体测信息录入</h2>
                <ol class="breadcrumb">
                    <li>
                        <a href="index.html">主页</a>
                    </li>
                    <li>
                        <a href="index.html">会员管理</a>
                    </li>
                    <li class="active">
                        <strong>体测信息录入</strong>
                    </li>
                </ol>
            </div>
        </div>

        <div class="wrapper wrapper-content animated fadeInRight ecommerce">

            <div class="row">
                <div class="col-lg-12">
                    <div class="tabs-container">
                            <ul class="nav nav-tabs">
                                <li class="active"><a data-toggle="tab" href="#tab-2" aria-expanded="true"> 体测数据</a></li>
                            </ul>
                            <div class="tab-content">
                                
                                <div id="tab-2" class="tab-pane active">
                                    <div class="panel-body">
										<form action=SaveUserMear.do method="post">
                                        <fieldset class="form-horizontal">
                                        	<input type="hidden" name="user_id" value=${user_id }>
                                            <div class="form-group"><label class="col-sm-2 control-label">身高:</label>
                                                <div class="col-sm-10"><input type="text" class="form-control" id="user_height" name="user_height" value="${new_coachid}"></div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-2 control-label">体重:</label>
                                                <div class="col-sm-10"><input type="text" class="form-control" id="user_weight" name="user_weight"></div>
                                            </div>
                                            
                                            <div class="form-group"><label class="col-sm-2 control-label">体脂:</label>
                                                <div class="col-sm-10"><input type="text" class="form-control" id="user_bodyfat" name="user_bodyfat" ></div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-2 control-label">肌肉含量:</label>
                                                <div class="col-sm-10"><input type="text" class="form-control" id="user_bodymeascol" name="user_bodymeascol" ></div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-2 control-label">基础代谢率:</label>
                                                <div class="col-sm-10"><input type="text" class="form-control" id="user_basic_meta" name="user_basic_meta"></div>
                                            </div>
                                            
                                            <div class="form-group">
                                            	<div class="col-sm-10">
                                            		<button class="btn btn-sm btn-primary" onclick="return checkMeas()">保存</button>
                                            	</div>
                                            </div>
                                        </fieldset></form>


                                    </div>
                                </div>
                            </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>



<!-- Mainly scripts -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="http://cn.inspinia.cn/html/inspiniaen/js/jquery-3.1.1.min.js"></script>
<script src="http://cn.inspinia.cn/html/inspiniaen/js/bootstrap.min.js"></script>
<script src="http://cn.inspinia.cn/html/inspiniaen/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="http://cn.inspinia.cn/html/inspiniaen/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

<!-- Custom and plugin javascript -->
<script src="http://cn.inspinia.cn/html/inspiniaen/js/inspinia.js"></script>
<script src="http://cn.inspinia.cn/html/inspiniaen/js/plugins/pace/pace.min.js"></script>

<!-- SUMMERNOTE -->
<script src="http://cn.inspinia.cn/html/inspiniaen/js/plugins/summernote/summernote.min.js"></script>

<!-- Data picker -->
<script src="http://cn.inspinia.cn/html/inspiniaen/js/plugins/datapicker/bootstrap-datepicker.js"></script>
<script src="yangshi/js/QuitJs.js"></script>

<script>
    $(document).ready(function(){

        $('.summernote').summernote();

        $('.input-group.date').datepicker({
            todayBtn: "linked",
            keyboardNavigation: false,
            forceParse: false,
            calendarWeeks: true,
            autoclose: true
        });

    });
    function checkMeas(){
		 if($("#user_basic_meta").val()==""){
			 swal("基础代谢率值不能为空");
			 return false;
		 }
		 if($("#user_height").val()==""){
			 swal("身高不能为空");
			 return false;
		 }
		 if($("#user_weight").val()==""){
			 swal("体重不能为空");
			 return false;
		 }
		 if($("#user_bodyfat").val()==""){
			 swal("体脂率值不能为空");
			 return false;
		 }
		 if($("#user_bodymeascol").val()==""){
			 swal("肌肉含量值不能为空");
			 return false;
		 }
	 }
</script>
</body>
</html>




