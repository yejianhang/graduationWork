<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>发起话题---会员</title>
    <link href="http://cn.inspinia.cn/html/inspiniaen/css/bootstrap.min.css" rel="stylesheet">
    <link href="http://cn.inspinia.cn/html/inspiniaen/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="http://cn.inspinia.cn/html/inspiniaen/css/plugins/summernote/summernote.css" rel="stylesheet">
    <link href="http://cn.inspinia.cn/html/inspiniaen/css/plugins/summernote/summernote-bs3.css" rel="stylesheet">
    <link href="http://cn.inspinia.cn/html/inspiniaen/css/plugins/datapicker/datepicker3.css" rel="stylesheet">
    <link href="http://cn.inspinia.cn/html/inspiniaen/css/animate.css" rel="stylesheet">
    <link href="http://cn.inspinia.cn/html/inspiniaen/css/style.css" rel="stylesheet">
    <style type="text/css">
 	 .grade span {
    margin-left: 15px;
    line-height: 30px;
	}
	.star {
	    width: 100%;
	    height: 50%;
	}
	.ul {
	    width: 50%;
	    height: 70%;
	    padding: 0;
	}
	.ul-li {
	    width: 30px;
	    height:30px;
	    display: inline-block;
	    background: url("yangshi/picture/emptyStar.png") no-repeat;
	}
	.ul-li-a {
	    height: 30px;
	    width: 15px;
	    display: inline-block;
	    float: left;
	}
	.sure {
	    width: 100%;
	    height: 30%;
	}
	.sure button {
	    margin-right: 10px;
	    float: right;
	}
  </style>
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
                                <li><a href="contacts.html">好友</a></li>
                                <li><a href="mailbox.html">信箱</a></li>
                                <li class="divider"></li>
                                <li><a onclick="quit()">登出</a></li>
                            </ul>
                        </div>
                        <div class="logo-element">
                            IN+
                        </div>
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
                <h2>课程评价</h2>
                <ol class="breadcrumb">
                    <li>
                        <a href="index.html">主页</a>
                    </li>
                    <li>
                        <a>课程</a>
                    </li>
                    <li class="active">
                        <strong>课程评价</strong>
                    </li>
                </ol>
            </div>
        </div>
		
        <div class="wrapper wrapper-content animated fadeInRight ecommerce">

            <div class="row">
            	
                <div class="col-lg-12">
                    <div class="tabs-container">
                            <ul class="nav nav-tabs">
                                <li class="active"><a data-toggle="tab" href="#tab-1"> 课程评价</a></li>
                                
                            </ul>
                            <div class="tab-content">
                                <div id="tab-1" class="tab-pane active">
                                    <div class="panel-body">

                                        <fieldset class="form-horizontal">
                                        	
                                        	<input type="hidden" name="q_rise_id" value=${sessionScope.user.user_id }>
                                            <div class="form-group"><label class="col-sm-2 control-label">评分:</label>
                                            
                                                <div class="star">
                                                
											        <ul id="star"  class="ul">
											            <li class="ul-li">
											                <a  onclick="halfStar(1)"  class="ul-li-a"></a>
											                <a  onclick="halfStar(2)" class="ul-li-a"></a>
											            </li>
											            <li class="ul-li">
											                <a  onclick="halfStar(3)" class="ul-li-a"></a>
											                <a  onclick="halfStar(4)" class="ul-li-a"></a>
											            </li>
											            <li class="ul-li">
											                <a  onclick="halfStar(5)" class="ul-li-a"></a>
											                <a  onclick="halfStar(6)" class="ul-li-a"></a>
											            </li>
											            <li class="ul-li">
											                <a  onclick="halfStar(7)" class="ul-li-a"></a>
											                <a  onclick="halfStar(8)" class="ul-li-a"></a>
											            </li>
											            <li  class="ul-li">
											                <a onclick="halfStar(9)" class="ul-li-a"></a>
											                <a onclick="halfStar(10)" class="ul-li-a"></a>
											            </li>
											        </ul>
										    	</div>
										    	
                                            </div>
                                            <form action="UserSubmitAssess.do" method="post">
                                            <input type="hidden" id="getgrade" name="assess_starnum">
                                            <input type="hidden" name="course_id" value="${course_id}">
                                            <input type="hidden" name="user_id" value="${sessionScope.user.user_id }">
                                            <input type="hidden"  name="book_id" value="${book_id}">
                                            <div class="form-group"><label class="col-sm-2 control-label">内容：</label>
                                                <div class="col-sm-10">
                                                    <div class="social-avatar">
				                                      		<textarea rows="10" cols="128" name="assess_text" id="assess_text"></textarea>
                                        			</div>
                                        		</div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-11 control-label"></label>
                                            <button class="btn btn-primary btn-sm" onclick="return checkBeforeSubmit()"> 发送</button>	
                                            </div>
                                            </form>
                                        </fieldset>

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
    function checkBeforeSubmit(){
    	var star=$("#getgrade").val();
    	var assess=$("#assess_text").val();
    	if(star==""){
    		swal("请选择评价星级");
    		return false;
    	}
    	if(assess==""){
    		swal("请输入评价内容");
    		return false;
    	}
    	
    }
    
	function halfStar(x) {
	    var star = document.getElementById('star');
	    var items = star.getElementsByTagName("li");
	    x = parseInt(x) - 1;
	    var tem = -1;
	    for(var i = 0; i < items.length; i++) {
	        if(x > i*2) {
	            items[i].style.background = "url('yangshi/picture/fullStar.png') no-repeat";
	            items[i].style.backgroundSize = "100% 100%";
	        } else {
	            if(tem == -1) {
	                tem = i;
	            } 
	            items[i].style.background = "url('yangshi/picture/emptyStar.png') no-repeat";
	            items[i].style.backgroundSize = "100% 100%";
	        }
	    }
	    if(x == parseInt(tem)*2) {
	        items[tem].style.background = "url('yangshi/picture/halfStar.png') no-repeat";
	        items[tem].style.backgroundSize = "100% 100%";
	    }
	    document.getElementById('getgrade').value = parseInt(x)+1;
	}

</script>

</script>

</body>

</html>

    