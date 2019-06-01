<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

	<title>私教详情页面</title>
    <link href="http://cn.inspinia.cn/html/inspiniaen/css/bootstrap.min.css" rel="stylesheet">
    <link href="http://cn.inspinia.cn/html/inspiniaen/font-awesome/css/font-awesome.css" rel="stylesheet">

    <link href="http://cn.inspinia.cn/html/inspiniaen/css/plugins/slick/slick.css" rel="stylesheet">
    <link href="http://cn.inspinia.cn/html/inspiniaen/css/plugins/slick/slick-theme.css" rel="stylesheet">

    <link href="http://cn.inspinia.cn/html/inspiniaen/css/animate.css" rel="stylesheet">
    <link href="http://cn.inspinia.cn/html/inspiniaen/css/style.css" rel="stylesheet">
</head>
	<body class="pace-done"><div class="pace  pace-inactive"><div class="pace-progress" data-progress-text="100%" data-progress="99" style="transform: translate3d(100%, 0px, 0px);">
  <div class="pace-progress-inner"></div>
</div>
<div class="pace-activity"></div></div>
<input type="hidden" id="user_id" value="${sessionScope.user.user_id}">
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
                    </li>s
                    
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
                <h2>私人教练详情</h2>
                <ol class="breadcrumb">
                    <li>
                        <a href="index.html">主页</a>
                    </li>
                    <li>
                        <a>私教</a>
                    </li>
                    <li class="active">
                        <strong>私教详情</strong>
                    </li>
                </ol>
            </div>
            <div class="col-lg-2">

            </div>
        </div>

        <div class="wrapper wrapper-content animated fadeInRight">

            <div class="row">
                <div class="col-lg-12">
					 <div class="ibox product-detail">
                        <div class="ibox-content">

                            <div class="row">
                                <div class="col-md-5">


                                    <div class="product-images slick-initialized slick-slider" role="toolbar"><button type="button" data-role="none" class="slick-prev slick-arrow" aria-label="Previous" role="button" style="">Previous</button>

                                        <div aria-live="polite" class="slick-list draggable"><div class="slick-track" role="listbox" style="opacity: 1; width: 2825px; transform: translate3d(-1695px, 0px, 0px);"><div class="slick-slide slick-cloned" data-slick-index="-1" aria-hidden="true" tabindex="-1" style="width: 565px;">
                                            <div class="image-imitation">
                                              		
                                            </div>
                                        </div><div class="slick-slide" data-slick-index="0" aria-hidden="true" tabindex="-1" role="option" aria-describedby="slick-slide00" style="width: 565px;">
                                            <div class="image-imitation" >
                                               	
                                            </div>
                                        </div><div class="slick-slide" data-slick-index="1" aria-hidden="true" tabindex="-1" role="option" aria-describedby="slick-slide01" style="width: 565px;">
                                            <div class="image-imitation">
                                               
                                            </div>
                                        </div><div class="slick-slide slick-cloned" data-slick-index="3" aria-hidden="true" tabindex="-1" style="width: 565px;">
                                             <div class="image-imitation1" style="
                                             background-color: #f8f8f9;
  										text-align: center;
  											padding: 200px 0;
 	 									
								 		background-size: 100% 100%;
								    	background-repeat: no-repeat;
								    	background-image: url(/Gym_manage_local/${coach.coach_picsrc});">
                                               
                                            </div>
                                        </div></div></div>
                                        
                                        


                                    <button type="button" data-role="none" class="slick-next slick-arrow" aria-label="Next" role="button" style="">Next</button><ul class="slick-dots" style="" role="tablist"><li class="" aria-hidden="true" role="presentation" aria-selected="true" aria-controls="navigation00" id="slick-slide00"><button type="button" data-role="none" role="button" aria-required="false" tabindex="0">1</button></li><li aria-hidden="true" role="presentation" aria-selected="false" aria-controls="navigation01" id="slick-slide01" class=""><button type="button" data-role="none" role="button" aria-required="false" tabindex="0">2</button></li><li aria-hidden="false" role="presentation" aria-selected="false" aria-controls="navigation02" id="slick-slide02" class="slick-active"><button type="button" data-role="none" role="button" aria-required="false" tabindex="0">3</button></li></ul></div>

                                </div>
                                <div class="col-md-7">

                                    <h2 class="font-bold m-b-xs">
                                        	${coach.coach_name}
                                    </h2>
                                    <small>课程费用</small>
                                    <div class="m-t-md">
                                        <h2 class="product-main-price">￥${coach.coach_cost}/课时 </h2>
                                    </div>
                                    <hr>

                                    <h4>私教描述</h4>

                                    <div class="small text-muted">
                                      	${coach.coach_maintech}
                                    </div>
                                    <dl class="small m-t-md">
                                        <dt>个人信息列表</dt>
                                        <dd>身高${coach.coach_height}cm   体重${coach.coach_height}Kg</dd>
                                        <dt>个人资格证</dt>
                                        <dd>身高${coach.coach_quality}</dd>
                                        <dt>个人宣言</dt>
                                        <dd>${coach.coach_text}</dd>
                                    </dl>
                                    <hr>

                                    <div>
                                        <div class="btn-group">
                                            <button class="btn btn-primary btn-sm" onclick="window.location.href='userBookCoach.do?user_id='+document.getElementById('user_id').value+'&coach_id=${coach.coach_id}'"  >订购私教课程</button>
                                            <button class="btn btn-white btn-sm" onclick="window.location.href='EnterChat.do?user_id='+document.getElementById('user_id').value+'&coach_id=${coach.coach_id}'" >与私教联系 </button>
                                        </div>
                                    </div>

                                </div>
                            </div>

                        </div>
                        <div class="ibox-footer">
                            
                            私教简短介绍信息
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

<!-- slick carousel-->
<script src="http://cn.inspinia.cn/html/inspiniaen/js/plugins/slick/slick.min.js"></script>
<script src="yangshi/js/QuitJs.js"></script>
<script>
    $(document).ready(function(){
        $('.product-images').slick({
            dots: true
        });
        
    });
    
    function userBookCoach(ob){
    	alert("D");
		$.ajax({
			
	    	//发送请求URL，可使用相对路径也可使用绝对路径
	    	url:"userBookCoach.do",
	   	 	//发送方式为GET，也可为POST，需要与后台对应
	   		 type:"GET",
		    //设置接收格式为JSON
		    dataType:"json",
		    //编码设置
		    contentType:"application/json;charset=utf-8",
		    //向后台发送的数据
		    data:{
		    	user_id:$("#user_id").val(),
		    	coach_id:$(ob).attr("id"),
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
</script>
</body>
</html>




