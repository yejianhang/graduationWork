 <%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>课程详情---用户</title>
    <link href="http://cn.inspinia.cn/html/inspiniaen/css/bootstrap.min.css" rel="stylesheet">
    <link href="http://cn.inspinia.cn/html/inspiniaen/font-awesome/css/font-awesome.css" rel="stylesheet">
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
                            <img alt="image" class="img-circle" src="/Gym_manage_local/${sessionScope.user.user_picsrc }" height="70" width="70"/>
                             </span>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="clear"> <span class="block m-t-xs"> <strong class="font-bold">${sessionScope.user.user_name}</strong>
                             </span> <span class="text-muted text-xs block">会员 <b class="caret"></b></span> </span> </a>
                            <ul class="dropdown-menu animated fadeInRight m-t-xs">
                                <li><a href="UserShowInfo.do?user_id=${sessionScope.user.user_id }">个人信息</a></li>
                                <li class="divider"></li>
                                <li><a href="login.html">登出</a></li>
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
	                            <li><a href="listCourse.do">所有课程</a></li>
	                            <li><a href="UseShowBookedCourse.do?user_id=${sessionScope.user.user_id }">已选课程</a></li>
	                        </ul>
	                    </li>
	                    <li>
	                        <a href="UserShowBodyMeas.do?user_id=${sessionScope.user.user_id }"><span class="nav-label">体测信息</span></a>
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
                    </li>
            </ul>

        </div>
    </nav>
		<input type="hidden" id="user_id" value="${sessionScope.user.user_id}">
        <div id="page-wrapper" class="gray-bg">
        <div class="row border-bottom">
        <nav class="navbar navbar-static-top  " role="navigation" style="margin-bottom: 0">
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
                <div class="col-sm-4">
                    <h2>课程详情</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="index.html">主页</a>
                        </li>
                         <li>
                            <a href="index.html">课程</a>
                        </li>
                        <li class="active">
                            <strong>课程详情</strong>
                        </li>
                    </ol>
                </div>
            </div>
        <div class="row">
            <div class="col-lg-9">
                <div class="wrapper wrapper-content animated fadeInUp">
                    <div class="ibox">
                        <div class="ibox-content">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="m-b-md">
                                    	<c:if test="${techOne.course_isOverDue eq 'true'}">
                                        <a href="#" class="btn btn-white btn-xs pull-right" onclick="BookCourse(this)" id=${techOne.tech_id}>选课</a>
                                        </c:if>
                                        <h2>${techOne.course_name}</h2>
                                    </div>
                                    <dl class="dl-horizontal">
                                    	
                                        <dt>状态:</dt> <dd>
                                        <c:choose>
										    <c:when test="${techOne.course_isOverDue eq 'false'}">
										       	<td class="project-status">
                                        			<span class="label label-danger">已结课</span>
                                        		</td>
										    </c:when>
										    <c:otherwise>
										       	<c:if test="${techOne.tech_num_now lt techOne.tech_num}"> 
		                                        <td class="project-status">
		                                        	<span class="label label-primary">可报名</span>
		                                        </td>
		                                        </c:if>
		                                        <c:if test="${techOne.tech_num_now eq techOne.tech_num}"> 
		                                        <td class="project-status">
		                                        	<span class="label label-danger">已满</span>
		                                        </td>
		                                        </c:if>
										    </c:otherwise>
										</c:choose>
                                    	</dd>
                                    </dl>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-5">
                                    <dl class="dl-horizontal">
                                        <dt>教练:</dt> <dd><a href="UserShowCoachDetail.do?coach_id=${techOne.coach_id}" class="text-navy"> ${techOne.coach_name}</a> </dd>
                                        <dt>上课地点:</dt> <dd> ${techOne.palace_name} </dd>
                                        <dt>课程简介:</dt> <dd> ${techOne.course_text} </dd>
                                    </dl>
                                </div>
                                <div class="col-lg-7" id="cluster_info">
                                    <dl class="dl-horizontal" >

                                        <dt>上课时间:</dt> <dd>${techOne.tech_time}</dd>
                                        <dt>创建项目时间:</dt> <dd>2017.12.12 23:36:57 </dd>
                                        <dt>参与者:</dt>
                                        <dd class="project-people">
                                        <c:forEach items="${tech_people}" var="user" >
                                        <a href=""><img alt="image" class="img-circle" src="/Gym_manage_local/${user.user_picsrc }"></a>
                                        </c:forEach>
                                        </dd>
                                    </dl>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12">
                                    <dl class="dl-horizontal">
                                        <dt>报名人数:</dt>
                                        <dd>
                                            <div class="progress progress-striped active m-b-sm">
                                                <div style="width: ${techOne.tech_num_now/techOne.tech_num*100}%;" class="progress-bar"></div>
                                            </div>
                                            ${techOne.tech_num_now}/ ${techOne.tech_num}
                                        </dd>
                                    </dl>
                                </div>
                            </div>
                            <div class="row m-t-sm">
                                <div class="col-lg-12">
                                <div class="panel blank-panel">
                                <div class="panel-heading">
                                    <div class="panel-options">
                                        <ul class="nav nav-tabs">
                                            <li class="active"><a href="#tab-1" data-toggle="tab">评价</a></li>
                                            <li class=""><a href="#tab-2" data-toggle="tab">历史记录</a></li>
                                        </ul>
                                    </div>
                                </div>

                                <div class="panel-body">

                                <div class="tab-content">
                                <div class="tab-pane active" id="tab-1">
                                    <div class="feed-activity-list">
                                        <div class="feed-element">
                                           <c:forEach items="${assess }" var="ass">
                                            <a href="#" class="pull-left">
                                                <img alt="image" class="img-circle" src="/Gym_manage_local/${ass.user_picsrc}">
                                            </a>
                                           
                                            <div class="media-body ">
                                                <small class="pull-right"></small>
                                                <strong>${ass.user_name}</strong> <img src="yangshi/picture/${ass.assess_starnum}s.png"><br>
                                                <small class="text-muted">${ass.assess_time}</small>
                                                <div class="well">
                                                    ${ass.assess_text}
                                                </div>
                                            </div>
                                            </c:forEach>
                                        </div>
                                    </div>

                                </div>
                                <div class="tab-pane" id="tab-2">

                                    <table class="table table-striped">
                                        <thead>
                                        <tr>
                                            <th>状态</th>
                                            <th>私教</th>
                                            <th>上课时间</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${coureHis}" var="hisCourse"> 
                                        <c:if test="${hisCourse.course_isOverDue eq 'false'}">
                                        <tr>
                                            <td>
                                                <span class="label label-primary"><img src="yangshi/picture/statusYes.png"> 已结束</span>
                                            </td>
                                            <td>
                                                ${hisCourse.coach_name}
                                            </td>
                                            <td>
                                                ${hisCourse.tech_time}
                                            </td>
                                        </tr>
                                        </c:if>
                                        </c:forEach>
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
            <div class="col-lg-3">
                <div class="wrapper wrapper-content project-manager">
                    <h4>课程教练</h4>
                    <img src="/Gym_manage_local/${techOne.coach_picsrc }" class="img-responsive" >
                    <p class="small">
                      ${techOne.coach_name }
                    </p>
                    <a href="UserShowCoachDetail.do?coach_id=${techOne.coach_id}" class="btn btn-xs btn-primary">查看私教详情</a>
                    
                </div>
            </div>
        </div>
        <div class="footer">
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

    <script>
    function BookCourse(ob){
		$.ajax({
	    	//发送请求URL，可使用相对路径也可使用绝对路径
	    	url:"userBookCourse.do",
	   	 	//发送方式为GET，也可为POST，需要与后台对应
	   		 type:"GET",
		    //设置接收格式为JSON
		    dataType:"json",
		    //编码设置
		    contentType:"application/json;charset=utf-8",
		    //向后台发送的数据
		    data:{
		    	user_id:$("#user_id").val(),
		    	course_id:$(ob).attr("id"),
		    },
		    //后台返回成功后处理数据，data为后台返回的json格式数据
		    success:function(data){
		    	var st=""+data;
		    	if(st=="false"){
		    		swal("选课成功！", "请准时上课","success")
		    		
		    	}
		    	if(st=="true"){
		    		swal("选课失败", "你已经选过该课程",
		    		"error"); 
		    	}
		        
		    },
		   //查询错误处理
		   error:function(){
			   swal("取消！", "选课出现错误)",
			   "error"); 
			}
        });
  		}
        $(document).ready(function(){

            $('#loading-example-btn').click(function () {
                btn = $(this);
                simpleLoad(btn, true)

                // Ajax example
//                $.ajax().always(function () {
//                    simpleLoad($(this), false)
//                });

                simpleLoad(btn, false)
            });
        });

        function simpleLoad(btn, state) {
            if (state) {
                btn.children().addClass('fa-spin');
                btn.contents().last().replaceWith(" Loading");
            } else {
                setTimeout(function () {
                    btn.children().removeClass('fa-spin');
                    btn.contents().last().replaceWith(" Refresh");
                }, 2000);
            }
        }
        function quit(){
        	swal({
    			  title: "是否退出登录?",
    			  icon: "warning",
    			  buttons: true,
    			  dangerMode: true,
    			})
    			.then((willDelete) => {
    			  if (willDelete) {
    				  window.location.href="index.jsp"
    			  } else {
    			    swal("已取消该操作!");
    			  }
    			});
        }
    </script>
</body>

</html>
