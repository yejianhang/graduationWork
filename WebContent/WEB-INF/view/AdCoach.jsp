<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>私教管理</title>
	<link rel="stylesheet" type="text/css" href="/yangshi/css/sweetalert.css"/>
    <link href="http://cn.inspinia.cn/html/inspiniaen/css/bootstrap.min.css" rel="stylesheet">
    <link href="http://cn.inspinia.cn/html/inspiniaen/font-awesome/css/font-awesome.css" rel="stylesheet">
    <!-- FooTable -->
    <link href="http://cn.inspinia.cn/html/inspiniaen/css/plugins/footable/footable.core.css" rel="stylesheet">
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
                             </span>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="clear"> <span class="block m-t-xs"> 
                             </span> <span class="text-muted text-xs block">管理员 <b class="caret"></b></span> </span> </a>
                            <ul class="dropdown-menu animated fadeInRight m-t-xs">
                                <li><a href="profile.html">个人信息</a></li>
                                <li><a href="contacts.html">好友</a></li>
                                <li><a href="mailbox.html">信箱</a></li>
                                <li class="divider"></li>
                                <li><a href="login.html">登出</a></li>
                            </ul>
                        </div>
                        <div class="logo-element">
                            IN+
                        </div>
                    </li>
                    <li>
                        <a href="ReturnAdIndex.do"> <span class="nav-label">订单中心</span> </a>
                    </li>
                    <li>
                        <a href="AdCourse.do"></i> <span class="nav-label">课程信息管理</span></a>
                    </li>
                    <li>
                        <a href="AdShowAllCoach.do"><span class="nav-label">私教管理</span></a>
                    
                    </li>
                    <li>
                        <a href="AdShowAllUser.do"><span class="nav-label">会员管理 </span></a>
                     
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
        </nav>
        </div>
            <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2>私教管理</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="index.html">主页</a>
                        </li>
                        <li class="active">
                            <strong>私教管理</strong>
                        </li>
                    </ol>
                </div>
                <div class="col-lg-2">

                </div>
            </div>

        <div class="wrapper wrapper-content animated fadeInRight ecommerce">



            <div class="row">
                <div class="col-lg-12">
                    <div class="ibox">
                  

                    
                        <div class="ibox-content">

                            <table class="footable table table-stripped toggle-arrow-tiny footable-loaded tablet breakpoint" data-page-size="15">
                                <thead>
                                <tr>

                                    <th data-toggle="true" class="footable-visible footable-sortable footable-first-column">教练ID</th>
                                    <th data-hide="phone" class="footable-visible footable-sortable">教练名称</th>
                                    <th data-hide="phone" class="footable-visible footable-sortable">性别</th>
                                    
                                    <th class="text-right footable-visible footable-last-column" data-sort-ignore="true"><button class="btn btn-sm btn-primary" onclick="window.location.href='IntoInsertCoach.do'">新增</button></th>

                                </tr>
                                </thead>
                                <c:forEach items="${list}" var="coach">
                                <tr class="footable-even" style=""  id="${coach.coach_id}">
                                    <td class="footable-visible footable-first-column">
                                    	${coach.coach_id}
                                    </td>
                                    <td class="footable-visible">
                                   		${coach.coach_name}     
                                    </td>
                                    <td class="footable-visible">
                                    	<c:if test="${coach.coach_sex eq 'F'}"> 
                                        	<span class="label label-primary">女</span>
                                    	</c:if>
                                    	<c:if test="${coach.coach_sex eq 'M'}"> 
                                        	<span class="label label-danger">男</span>
                                    	</c:if>
                                    	
                                    </td>
                                    <td class="text-right footable-visible footable-last-column">
                                        <div class="btn-group">
                                            <button class="btn btn-sm btn-primary" onclick="window.location.href='AdShowCoachDetail.do?coach_id='+'${coach.coach_id}'" >查看</button>
                                            <button class="btn btn-sm btn-primary" onclick="window.location.href='AdEditCoachDetail.do?coach_id='+'${coach.coach_id}'" >编辑</button>
                                            <button class="btn btn-sm btn-primary" id=${coach.coach_id } onclick="deleteCoach(this)">删除</button>
                                        </div>
                                    </td>
                                </tr>
                               </c:forEach>
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

    <!-- FooTable -->
    <script src="http://cn.inspinia.cn/html/inspiniaen/js/plugins/footable/footable.all.min.js"></script>
    <script src="yangshi/js/QuitJs.js"></script>

    <!-- Page-Level Scripts -->
    <script>
        $(document).ready(function() {

            $('.footable').footable();

        });
        function deleteCoach(ob){
        	var coach_id=$(ob).attr("id");
    		swal({
    			  title: "你确认移除该私教?",
    			  text: "一旦确认，该私教信息将被删除",
    			  icon: "warning",
    			  buttons: true,
    			  dangerMode: true,
    			})
    			.then((willDelete) => {
    			  if (willDelete) {
    				  $.ajax({
    				    	url:"AdDeleteCoachByid.do",
    				   		type:"GET",
    					    dataType:"text",
    					    contentType:"application/json;charset=utf-8",
    					    data:{
    					    	coach_id:$(ob).attr("id"),
    					    },
    					    //后台返回成功后处理数据，data为后台返回的json格式数据
    					    success:function(data){
    					    	$("#"+coach_id).remove();
       					    	swal("删除成功！", "该私教被删除","success");
    					    },
    					   error:function(){
    						$("#"+coach_id).remove();
   					    	swal("删除成功！", "该私教被删除","success");
    						}
    			        });  
    			  } else {
    			    swal("已取消该操作!");
    			  }
    			});
    	}
    function add(){
    	swal("请输入私教名称", {
    		  content: "input",
    	}
    	)
    	.then((value) => {
    		  swal('You typed'+value);
    	});
    }
    </script>
</html>