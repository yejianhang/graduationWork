 <%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

	<title>聊天---私教端</title>
	<link rel="stylesheet" type="text/css" href="/yangshi/css/sweetalert.css"/>
    <link href="http://cn.inspinia.cn/html/inspiniaen/css/bootstrap.min.css" rel="stylesheet">
    <link href="http://cn.inspinia.cn/html/inspiniaen/font-awesome/css/font-awesome.css" rel="stylesheet">

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
                             </span> <span class="text-muted text-xs block">私教<b class="caret"></b></span> </span> </a>
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

<div id="page-wrapper" class="gray-bg" style="min-height: 1935px;">
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
        <h2>聊天窗口</h2>
        <ol class="breadcrumb">
            <li>
                <a href="index.html">主页</a>
            </li>
            <li class="active">
                <strong>聊天窗口</strong>
            </li>
        </ol>
    </div>
    <div class="col-lg-2">

    </div>
</div>


<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-lg-12">
            <div class="ibox float-e-margins">
                <div class="ibox-content">

                    <strong>聊天室 </strong> 你可以在此与你的会员进行沟通，
                    制定专属于他的健身计划。
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">

                <div class="ibox chat-view">

                    <div class="ibox-title">
                        <small class="pull-right text-muted">最后消息：${LastMesTime}</small>
                         聊天室面板
                    </div>


                    <div class="ibox-content">

                        <div class="row">

                            <div class="col-md-9 ">
                                <div class="chat-discussion">
                                <c:forEach items="${me}" var="Message"> 
									<c:if test="${Message.mes_sender eq 'c'}"> 
                                    <div class="chat-message right">
                                        <img class="message-avatar" src="http://cn.inspinia.cn/html/inspiniaen/img/a1.jpg" alt="">
                                        <div class="message">
                                            <a class="message-author" href="#"> 我 </a>
                                            <span class="message-date">  ${Message.mes_data}  </span>
                                            <span class="message-content">
											 ${Message.mes_text}
                                            </span>
                                        </div>
                                    </div>
                                    </c:if>
                                    <c:if test="${Message.mes_sender eq 'u'}"> 
                                    <div class="chat-message left">
                                        <img class="message-avatar" src="/Gym_manage_local/${userChat.user_picsrc}" alt="">
                                        <div class="message">
                                            <a class="message-author" href="#">  ${user_name}  </a>
                                            <span class="message-date">  ${Message.mes_data} </span>
                                            <span class="message-content">
											${Message.mes_text}
                                            </span>
                                        </div>
                                    </div>
                                    </c:if>
                                    </c:forEach>
                                   
									
                                   
                                   

                                </div>

                            </div>
                            <div class="col-md-3">
                                <div class="chat-users">
                                    <div class="users-list">
                                     <c:forEach items="${list}" var="user"> 
                                        <div class="chat-user">
                                            <span class="pull-right label label-primary">在线</span>
                                            <img class="chat-avatar" src="/Gym_manage_local/${user.user_picsrc}" alt="">
                                            <div class="chat-user-name">
                                                <a href="EnterCoachChatSingle.do?user_id=${user.user_id}&user_name=${user.user_name}&coach_id=${sessionScope.coach.coach_id}">${user.user_name}</a>
                                            </div>
                                        </div>
                                     </c:forEach>	
                                    </div>

                                </div>
                            </div>

                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="chat-message-form">
								<form action="UserSendMes.do" enctype="multipart/form-data" method="post">
                                    <div class="form-group">
                                   	    <input type="hidden" name="mes_user_id" value="${sessionScope.user.user_id}">
                                   	    <input type="hidden" name="mes_coach_id" value="${coach_id}">
										
										
										<input type="hidden" name="mes_sender" value="u">
										
                                        <textarea class="form-control message-input" name="mes_text" id="text" placeholder="输入聊天消息"></textarea>
                                    <input type="submit" class="btn btn-primary btn-sm" value="发送" onclick="return checkMes()">
                                    </div>
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

<!--  <script type="text/javascript">
       function yz()                      
       {
           var nn = document.getElementById("text");  
           if(nn=="" || "null")               
           {
             
               return false;
           }
           else
           {
               return true;      
           }
       }
        
</script>
-->

<!-- Mainly scripts -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="http://cn.inspinia.cn/html/inspiniaen/js/jquery-3.1.1.min.js"></script>
<script src="http://cn.inspinia.cn/html/inspiniaen/js/bootstrap.min.js"></script>
<script src="http://cn.inspinia.cn/html/inspiniaen/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="http://cn.inspinia.cn/html/inspiniaen/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

<!-- Custom and plugin javascript -->
<script src="http://cn.inspinia.cn/html/inspiniaen/js/inspinia.js"></script>
<script src="http://cn.inspinia.cn/html/inspiniaen/js/plugins/pace/pace.min.js"></script>

<script src="http://cn.inspinia.cn/html/inspiniaen/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="yangshi/js/QuitJs.js"></script>
<script>
function checkMes(){
		 if($("#text").val()==""){
			 swal("消息不能为空");
			 return false;
		 }
	 }
</script>

</body>
</html>