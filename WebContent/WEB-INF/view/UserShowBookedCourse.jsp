 <%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

	<title>查看已预定课程---会员端</title>
	<link rel="stylesheet" type="text/css" href="/yangshi/css/sweetalert.css"/>
    <link href="http://cn.inspinia.cn/html/inspiniaen/css/bootstrap.min.css" rel="stylesheet">
    <link href="http://cn.inspinia.cn/html/inspiniaen/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="http://cn.inspinia.cn/html/inspiniaen/css/plugins/iCheck/custom.css" rel="stylesheet">
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
                            <span class="clear"> <span class="block m-t-xs"> <strong class="font-bold">${sessionScope.user.user_name}</strong>
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
                        <a href="returnProfile.do"> <span class="nav-label">主页</span></a>
                       
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
                        <a href="UseShowBookedCoach.do?user_id=${sessionScope.user.user_id }"> <span class="nav-label">我的私人教练</span></a>
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

        <div id="page-wrapper" class="gray-bg" style="min-height: 782px;">
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
                    <h2>已选课程</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="index.html">主页</a>
                        </li>
                        <li>
                            <a>课程</a>
                        </li>
                        <li class="active">
                            <strong>已选课程</strong>
                        </li>
                    </ol>
                </div>
                <div class="col-lg-2">

                </div>
            </div>
        <div class="wrapper wrapper-content">
            <div class="row animated fadeInRight">
                <div class="col-lg-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>已选课程</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                <i class="fa fa-wrench"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-user">
                                <li><a href="#">选项 1</a>
                                </li>
                                <li><a href="#">选项 2</a>
                                </li>
                            </ul>
                            <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>
                    </div>

                    <div class="ibox-content inspinia-timeline">
                    <input type="hidden" id="user_id" value=${sessionScope.user.user_id }>
						<c:forEach items="${tech_list }" var="tech">
                        <div class="timeline-item" id=${tech.tech_id }>
                            <div class="row">
                                <div class="col-xs-3 date">
                                    ${tech.tech_time }
                                    <br>
                                    <small class="text-navy"><c:if test="${tech.course_isOverDue eq 'false'}">已结课</c:if></small><br>
                                    <small class="text-navy"><c:if test="${tech.tech_isAssess eq 1}">(已评价)</c:if></small>
                                    
                                </div>
                                <div class="col-xs-7 content no-top-border">
                                    <p class="m-b-xs"><strong>${tech.course_name }</strong></p>
                                    <p>${tech.coach_name }教练</p>
	                                <div class="form-group">
						                <div class="col-sm-10">
						                <a href="CourseDetail.do?tech_id=${tech.tech_id}" class="btn btn-sm btn-primary" >查看 </a>
						                <c:if test="${tech.course_isOverDue eq 'true'}">
						                <button class="btn btn-sm btn-danger"   id=${tech.tech_id } onclick="deletetech(this)" >取消该课程</button>
						                </c:if>
						                <c:if test="${tech.course_isOverDue eq 'false'}">
							                <c:if test="${tech.tech_isAssess eq 0}">
							                		<button class="btn btn-sm btn-warning" onclick="window.location.href='UserAssessCourse.do?course_id=${tech.course_id }&book_id=${tech.book_id}'">课程评分</button>
							                </c:if>
							                
							            </c:if>
						                </div>
	                                </div>
                                </div>
                            </div>
                        </div>
                        </c:forEach>
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

    <!-- Peity -->
    <script src="http://cn.inspinia.cn/html/inspiniaen/js/plugins/peity/jquery.peity.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="http://cn.inspinia.cn/html/inspiniaen/js/inspinia.js"></script>
    <script src="http://cn.inspinia.cn/html/inspiniaen/js/plugins/pace/pace.min.js"></script>

    <!-- Peity -->
    <script src="http://cn.inspinia.cn/html/inspiniaen/js/demo/peity-demo.js"></script>
    <script src="yangshi/js/QuitJs.js"></script>
	<script>
	 function deletetech(ob){
		
     	var tech_id=$(ob).attr("id");
     	
 		swal({
 			  title: "你确认取消该课程?",
 			  text: "一旦确认，该课程将被删除",
 			  icon: "warning",
 			  buttons: true,
 			  dangerMode: true,
 			})
 			.then((willDelete) => {
 			  if (willDelete) {
 				  $.ajax({
 				    	url:"deleteBook.do",
 				   		type:"GET",
 					    dataType:"json",
 					    contentType:"application/json;charset=utf-8",
 					    data:{
 					    	user_id:$("#user_id").val(),
 					    	course_id:$(ob).attr("id"),
 					    	
 					    },
 					    //后台返回成功后处理数据，data为后台返回的json格式数据
 					    success:function(data){
 					    	$("#"+tech_id).remove();
					    	swal("删除成功！", "该课程被删除","success");
 					    	
 					    },
 					   error:function(){
 							$("#"+tech_id).remove();
					    	swal("删除成功！", "该课程被删除","success");
 						}
 			        });  
 			  } else {
 			    swal("已取消该操作!");
 			  }
 			});
 	}
	</script>
	

</html>