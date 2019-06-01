<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>私教信息编辑------私教</title>
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
						<img alt="image" class="img-circle" src="/Gym_manage_local/${sessionScope.user.user_picsrc }" height="70" width="70" />                             </span>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="clear"> <span class="block m-t-xs"> <strong class="font-bold">${sessionScope.user.user_name }</strong>
                             </span> <span class="text-muted text-xs block">会员 <b class="caret"></b></span> </span> </a>
                            <ul class="dropdown-menu animated fadeInRight m-t-xs">
                               <li><a href="UserShowInfo.do?user_id=${sessionScope.user.user_id }">个人信息</a></li>
                                <li class="divider"></li>
                                <li><a onclick="quit()">登出</a></li>
                            </ul>
                        </div>
                        <div class="logo-element">
                            IN+
                        </div>
                    </li>
                    <li>
                        <a href="returnProfile.do"><span class="nav-label">主页</span> </a>
                    </li>
                    <li>
                        <a href="ShowCardInfo.do?user_id=${sessionScope.user.user_id }"><span class="nav-label">会员卡信息</span></a>
                    </li>
                     <li>
                        <a href="#"><span class="nav-label">课程</span></a>
                        <ul class="nav nav-second-level ui-sortable collapse" style="height: 0px;">
                            <li><a href="listCourse.do">所有课程</a></li>
                            <li><a href="UseShowBookedCourse.do?user_id=${sessionScope.user.user_id }">已选课程</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="UserShowBodyMeas.do"> <span class="nav-label">体测信息</span></a>
                    </li>
                    <li>
                        <a href="listCoach.do"> <span class="nav-label">私人教练 </span><span class="label label-warning pull-right">${sessionScope.coachNum }</span></a></a>
                    </li>
                     <li>
                        <a href="UseShowBookedCoach.do?user_id=${sessionScope.user.user_id }"> <span class="nav-label">我的私教</span></a>
                    </li>
                    <li>
                        <a href="listQandA.do"> <span class="nav-label">健身论坛 </span></a>
                    </li>
                    <li>
                        <a href="UserEnterChatPanel.do"> <span class="nav-label">消息中心 </span></a>
                    </li>
                    
            </ul>

        </div>
    </nav>

    <div id="page-wrapper" class="gray-bg" style="min-height: 1263px;">
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
                <h2>资料页</h2>
                <ol class="breadcrumb">
                    <li>
                        <a href="index.html">主页</a>
                    </li>
                     <li>
                        <a href="index.html">个人资料</a>
                    </li>
                    <li class="active">
                        <strong>编辑</strong>
                    </li>
                </ol>
            </div>
        </div>

        <div class="wrapper wrapper-content animated fadeInRight ecommerce">

            <div class="row">
                <div class="col-lg-12">
                    <div class="tabs-container">
                            <ul class="nav nav-tabs">
                                <li class="active"><a data-toggle="tab" href="#tab-2" aria-expanded="true"> 个人信息</a></li>
                                <li class=""><a data-toggle="tab" href="#tab-4" aria-expanded="false">照片墙</a></li>
                            </ul>
                            <div class="tab-content">
                                
                                <div id="tab-2" class="tab-pane active">
                                    <div class="panel-body">
										<form action="EditUserText.do" method="post">
                                        <fieldset class="form-horizontal">
                                            <div class="form-group"><label class="col-sm-2 control-label">个人简介</label>
                                                <div class="col-sm-10"><input type="text" class="form-control" name="user_text" value="${user.user_text }"></div>
                                            </div>
                                            <div class="form-group">
                                            	<div class="col-sm-10">
                                            		<button class="btn btn-sm btn-primary">保存</button>
                                            	</div>
                                            </div>
                                        </fieldset>
                                        </form>


                                    </div>
                                </div>
                                <div id="tab-4" class="tab-pane">
                                    <div class="panel-body">

                                        <div class="table-responsive">
                                            <table class="table table-bordered table-stripped">
                                                <thead>
                                                <tr>
                                                    <th>
                                                        图像预览
                                                    </th>
                                                    <th>
                                                        更换照片
                                                    </th>
                                                    <th>
                                                        操作
                                                    </th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <img src="/Gym_manage_local/${user.user_picsrc }" height="100" width="100">
                                                    </td>
                                                    <td>
                                                    	<form  id ="form2" action="UserEditPic.do" enctype="multipart/form-data" method="post">
                                                    		<input type = "hidden"  name="user_id" value="${sessionScope.user.user_id}">
													    	<input type = "file" class="btn btn-white" name= 'file'>
													    	<input type ="submit" class="btn btn-white" value="上传">
														</form> 
                                                    </td>
                                                    <td>
                                                        <button class="btn btn-white" onclick="window.location.href='DeleteTX.do?user_id=${sessionScope.user.user_id}'">删除照片</button>
                                                    </td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>

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
</script>
</body>
</html>




