<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>用户主页</title>
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
                            <img alt="image" class="img-circle" src="/Gym_manage_local/${sessionScope.user.user_picsrc }" height="70" width="70" />
                             </span>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="clear"> <span class="block m-t-xs"> <strong clas s="font-bold">${user.user_name}</strong>
                             </span> <span class="text-muted text-xs block">会员 <c:if test="${sessionScope.IsOverdue eq 1}">(已过期)</c:if><b class="caret"></b></span> </span> </a>
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
                            <li><a href="listCourse.do" onclick="return checkIsDue(${sessionScope.IsOverdue })">所有课程</a></li>
                            <li><a href="UseShowBookedCourse.do?user_id=${sessionScope.user.user_id }" onclick="return checkIsDue(${sessionScope.IsOverdue })">已选课程</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="UserShowBodyMeas.do?user_id=${sessionScope.user.user_id }" onclick="return checkIsDue(${sessionScope.IsOverdue })"><span class="nav-label">体测信息</span></a>
                    </li>
                    <li>
                        <a href="listCoach.do" onclick="return checkIsDue(${sessionScope.IsOverdue })"> <span class="nav-label">私人教练 </span><span class="label label-warning pull-right">${sessionScope.coachNum }</span></a></a>
                    </li>
                    <li>
                        <a href="UseShowBookedCoach.do?user_id=${sessionScope.user.user_id }" onclick="return checkIsDue(${sessionScope.IsOverdue })"> <span class="nav-label">我的私教</span></a>
                    </li>
                    <li>
                        <a href="listQandA.do" onclick="return checkIsDue(${sessionScope.IsOverdue })"> <span class="nav-label">健身论坛 </span></a>
                    </li>
                    <li>
                        <a href="UserEnterChatPanel.do" onclick="return checkIsDue(${sessionScope.IsOverdue })"> <span class="nav-label" >消息中心 </span></a>
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
                    <h2>资料页</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="index.html">主页</a>
                        </li>
                        <li class="active">
                            <strong>个人资料页</strong>
                        </li>
                    </ol>
                </div>
                <div class="col-lg-2">

                </div>
            </div>
        <div class="wrapper wrapper-content">
            <div class="row animated fadeInRight">
                <div class="col-md-4">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5>资料详情</h5>
                        </div>
                        <div>
                            <div class="ibox-content no-padding border-left-right">
                                <img alt="image" class="img-responsive" src="/Gym_manage_local/${sessionScope.user.user_picsrc }" height="370" width="370">
                            </div>
                            <div class="ibox-content profile-content">
                                <h4><strong>${sessionScope.user.user_name}</strong></h4>
                                <p>北京</p>
                                <h5>
                                    我的简介
                                </h5>
                                <p>
                                    <c:if test="${empty sessionScope.user.user_text || sessionScope.user.user_text eq null}">这个家伙很懒，什么都不想告诉你！
                                     <button class="btn btn-white btn-sm"  onclick="return EditInfocheckIsDue(${sessionScope.IsOverdue})"  > 编辑</button>
                                    </c:if>
                                    
                                    <c:if test="${not empty sessionScope.user.user_text}">${sessionScope.user.user_text}
                                     <button class="btn btn-white btn-sm"  onclick="return EditInfocheckIsDue(${sessionScope.IsOverdue})" > 编辑</button>
                                    </c:if>
                                    
                                   
                                   
                                </p>
                                <div class="row m-t-lg">
                                    <a href="listCoach.do">
	                                    <div class="col-md-4">
	                                        <span class="bar">5,3,9,6,5,9,7,3,5,2</span>
	                                        <h5><strong>${sessionScope.coachNum }</strong> 私教</h5>
	                                    </div>
	                                    <div class="col-md-4">
                                    </a>
                                    <a href="listCourse.do">
                                        <span class="line">5,3,9,6,5,9,7,3,5,2</span>
                                        <h5><strong>${sessionScope.courseNum }</strong> 课程</h5>
                                    </a>
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
    <script>
    function checkIsDue(x) {
        if(x==1){
        	swal("您的会员卡已经到期!请到会员卡信息中心续费！");
        	return false;
        }
    }
    function EditInfocheckIsDue(x) {
        if(x==1){
        	swal("您的会员卡已经到期!请到会员卡信息中心续费！");
        	return false;
        }
        else{
        	window.location.href='IntoEdit.do?user_id=${sessionScope.user.user_id}';
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
