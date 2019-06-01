<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

	<title>论坛 问题详情---会员</title>
    <link href="http://cn.inspinia.cn/html/inspiniaen/css/bootstrap.min.css" rel="stylesheet">
    <link href="http://cn.inspinia.cn/html/inspiniaen/font-awesome/css/font-awesome.css" rel="stylesheet">

    <!-- Toastr style -->
    <link href="http://cn.inspinia.cn/html/inspiniaen/css/plugins/toastr/toastr.min.css" rel="stylesheet">

    <link href="http://cn.inspinia.cn/html/inspiniaen/css/animate.css" rel="stylesheet">
    <link href="http://cn.inspinia.cn/html/inspiniaen/css/style.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="/yangshi/css/sweetalert.css"/>



</head>

<body>

    <div id="wrapper">

    <nav class="navbar-default navbar-static-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav metismenu" id="side-menu">
                <li class="nav-header">
                    <div class="dropdown profile-element"> <span>
                    		<img alt="image" class="img-circle" src="/Gym_manage_local/${sessionScope.user.user_picsrc }" height="70" width="70" />
                             </span>
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
                        <a href="UserShowBodyMeas.do"><span class="nav-label">体测信息</span></a>
                        
                    </li>
                    <li>
                        <a href="listCoach.do"> <span class="nav-label">私人教练 </span><span class="label label-warning pull-right">${sessionScope.coachNum }</span></a></a>
                    </li>
                     <li>
                        <a href="UseShowBookedCoach.do?user_id=${sessionScope.user.user_id }"> <span class="nav-label">我的私教</span></a>
                    </li>
                    <li>
                        <a href="listQandA.do"> <span class="nav-label">健身论坛</span></a>
                    </li>
                    <li>
                        <a href="UserEnterChatPanel.do"> <span class="nav-label">消息中心 </span></a>
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
                    <h2>问题详情</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="index.html">主页</a>
                        </li>
                        <li>
                            <a>健身论坛</a>
                        </li>
                        <li class="active">
                            <strong>问题详情</strong>
                        </li>
                    </ol>
                </div>
                <div class="col-lg-2">

                </div>
            </div>

        <div class="wrapper wrapper-content  animated fadeInRight article">
            <div class="row">
                <div class="col-lg-10 col-lg-offset-1">
                    <div class="ibox">
                        <div class="ibox-content">
                            <div class="pull-right">
                                <button class="btn btn-white btn-xs" type="button">标签</button>
                                <button class="btn btn-white btn-xs" type="button">标签</button>
                                <button class="btn btn-white btn-xs" type="button">标签</button>
                            </div>
                            <div class="text-center article-title">
                            <span class="text-muted"><img src="yangshi/picture/clock.png" height="25" width="25">${QueAndAnsDetail.q_rise_time}</span>
                                <h1>
                                    ${QueAndAnsDetail.q_title }
                                </h1>
                            </div>
                            <p>
                            ${QueAndAnsDetail.q_text }
                            </p>
                            <hr>
                            <div class="row">
                                <div class="col-md-6">
                                </div>
                                <div class="col-md-6">
                                    <div class="small text-right">
                                        <h5>统计:</h5>
                                        <c:if test="${isResolve eq '1' }"> <div> ${ansNum } 评论 </div></c:if>
                                        <c:if test="${isResolve eq '0' }"> <div>  0评论 </div></c:if>
                                         ${QueAndAnsDetail.q_looked_num } 浏览
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-lg-12">

                                    <h2>评论:</h2>
                                    
                                    <c:if test="${isResolve eq '1' }">
                                    <c:forEach items="${AllQueAndAnsDetail }" var="ans">
                                    <div class="social-feed-box">
                                        <div class="social-avatar">
                                            <a href="" class="pull-left">
                                                <img alt="image" src="/Gym_manage_local/${ans.user_picsrc}">
                                            </a>
                                            <div class="media-body">
                                            	<a data-toggle="collapse" href="#${ans.ans_time}" class="faq-question collapsed" aria-expanded="false"> 
                                                    ${ans.user_name }
                                                </a>
                                                <small class="text-muted">${ans.ans_time}</small>
                                            </div>
                                        </div>
                                        <div class="social-body">
                                            <p>
                                                ${ans.ans_text }
                                            </p>
                                        </div>
                                    </div>
                                    <div class="row">
                                <div class="col-lg-12">
                                    <div id="${ans.ans_time}" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">
                                        <div class="faq-answer">
                                            <p>1111111
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                    </c:forEach>
                                    </c:if>
                                    
                                     <div class="social-feed-box">
                                        <div class="social-avatar">
                                        <h2>评论:</h2>
                                        <form action="riseAns.do" method="post">
                                        	<input type=hidden value=${QueAndAnsDetail.q_id} name="ans_id">
                                        	<input type="hidden" value=${QueAndAnsDetail.q_id} name="q_id">
                                        	<input type="hidden" value=${sessionScope.user.user_id} name="ans_solve_id">
                                      		<textarea rows="10" cols="120" name="ans_text"></textarea>
										 	<button class="btn btn-primary btn-sm"> 发送</button>	
										</form>
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
	<script src="yangshi/js/QuitJs.js"></script>
</body>

</html>
    