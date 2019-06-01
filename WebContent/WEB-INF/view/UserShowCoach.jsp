<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>用户主页</title>
	<style>
	.product-imitation1 {
  		text-align: center;
 	 	padding: 90px 0;
  		background-color: #f8f811;
  		color: #bebe33;
 		font-weight: 600;
 		background-size: 100% 100%;
    	background-repeat: no-repeat;
    	background-image: url(/Gym_manage_local/jack.jpg);
	}
	</style>
    <link href="http://cn.inspinia.cn/html/inspiniaen/css/bootstrap.min.css" rel="stylesheet">
    <link href="http://cn.inspinia.cn/html/inspiniaen/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="http://cn.inspinia.cn/html/inspiniaen/css/animate.css" rel="stylesheet">
    <link href="http://cn.inspinia.cn/html/inspiniaen/css/style.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="/yangshi/css/sweetalert.css"/>
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
                <h2>教练页</h2>
                <ol class="breadcrumb">
                    <li>
                        <a href="index.html">主页</a>
                    </li>
                    <li class="active">
                        <strong>教练页</strong>
                    </li>
                </ol>
            </div>
            <div class="col-lg-2">

            </div>
        </div>

        <div class="wrapper wrapper-content animated fadeInRight">
            <div class="row">
            <c:forEach items="${list}" var="coach"> 
                <div class="col-md-3">
                    <div class="ibox">
                        <div class="ibox-content product-box">

                            <div class="divclass"  style="text-align: center;
 	 									padding: 90px 0;
								  		background-color: #f8f811;
								  		color: #bebe33;
								 		font-weight: 600;
								 		background-size: 100% 100%;
								    	background-repeat: no-repeat;
								    	background-image: url(/Gym_manage_local/${coach.coach_picsrc});">
                            </div>
                            <div class="product-desc">
                      
                                <small class="text-muted">教练姓名</small>
                                <a href="#" class="product-name">${coach.coach_name} </a>



                                <div class="small m-t-xs">
                                   	${coach.coach_text}
                                </div>
                                <div class="m-t text-righ">

                                    <a href="UserShowCoachDetail.do?coach_id=${coach.coach_id}" class="btn btn-xs btn-outline btn-primary" >详情  </a>
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
<script type="text/javascript">
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
	    		alert("选课成功");
	    	}
	    	if(st=="true"){
	    		alert("你已经选过该课程，请按时上课");
	    	}
	        
	    },
	   //查询错误处理
	   error:function(){
	   		$("#bookName").val("选课异常");
		}
    });
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