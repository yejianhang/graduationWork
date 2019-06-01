<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>私教信息编辑</title>
	<link rel="stylesheet" type="text/css" href="/yangshi/css/sweetalert.css"/>
	<link href="https://cdn.bootcss.com/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.min.css" rel="stylesheet" />
	<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/> 
    <link href="http://cn.inspinia.cn/html/inspiniaen/css/bootstrap.min.css" rel="stylesheet">
    <link href="http://cn.inspinia.cn/html/inspiniaen/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="http://cn.inspinia.cn/html/inspiniaen/css/plugins/summernote/summernote.css" rel="stylesheet">
    <link href="http://cn.inspinia.cn/html/inspiniaen/css/plugins/summernote/summernote-bs3.css" rel="stylesheet">
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
                </ul>
            </nav>
        </div>
        <div class="row wrapper border-bottom white-bg page-heading">
            <div class="col-lg-10">
                <h2>课程管理</h2>
                <ol class="breadcrumb">
                    <li>
                        <a href="index.html">主页</a>
                    </li>
                    <li class="active">
                        <strong>课程管理</strong>
                    </li>
                </ol>
            </div>
        </div>

        <div class="wrapper wrapper-content animated fadeInRight ecommerce">

            <div class="row">
                <div class="col-lg-12">
                    <div class="tabs-container">
                            <ul class="nav nav-tabs">
                                <li class="active"><a data-toggle="tab" href="#tab-2" aria-expanded="true"> 私教信息</a></li>
                            </ul>
                            <div class="tab-content">
                                
                                <div id="tab-2" class="tab-pane active">
                                    <div class="panel-body">
										<!--<form action="SaveNewTech.do" method="post">  -->
                                        <fieldset class="form-horizontal">
                                            <div class="form-group"><label class="col-sm-2 control-label">课程名称:</label>
                                                <div class="col-sm-10">
	                                                <select class="form-control" id="course_id">
	                                                	<option>请选择</option>
	                                                	<c:forEach items="${courseList}" var="course">
                                                        <option value='${course.course_id}'> ${course.course_name }</option>
		                                           		</c:forEach>
		                                            </select>
	                                            </div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-2 control-label">教练名称:</label>
                                                <div class="col-sm-10">
	                                                <select class="form-control" id="coach_id">
	                                                	<option>请选择</option>
	                                                	<c:forEach items="${coachList}" var="coach">
                                                        <option value='${coach.coach_id}'>${coach.coach_name }</option>
		                                           		</c:forEach>
		                                            </select>
	                                            </div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-2 control-label">课程开始时间:</label>
                                               	<div class="col-sm-10">
			                             		<div class="input-group date" id='date1'>  
									                <input type="text" class="form-control" id="tech_time"/>  
									                <span class="input-group-addon">  
									                    <i class="glyphicon glyphicon-calendar"></i>  
									                </span>  
								            	</div>  
			                           	    </div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-2 control-label">上课地点:</label>
                                                <div class="col-sm-10">
	                                                <select class="form-control" id="tech_palace">
	                                                	<option>请选择</option>
	                                                	<c:forEach items="${palaceList}" var="palace">
                                                        <option value='${palace.palace_id }'>${palace.palace_name }</option>
		                                           		</c:forEach>
		                                            </select>
	                                            </div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-2 control-label">总人数:</label>
                                                <div class="col-sm-10"><input type="text" class="form-control" id="tech_num" onkeyup="value=value.replace(/[^\d]/g,'')"></div>
                                            </div>
                                            <div class="form-group">
                                            	<div class="col-sm-10">
                                            		<button class="btn btn-sm btn-primary" onclick="return SavaNewtech()">保存</button>
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
<script src="https://cdn.bootcss.com/moment.js/2.18.1/moment-with-locales.min.js"></script>  
<script src="https://cdn.bootcss.com/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js"></script>  

<!-- SUMMERNOTE -->
<script src="http://cn.inspinia.cn/html/inspiniaen/js/plugins/summernote/summernote.min.js"></script>

<!-- Data picker -->
<script src="http://cn.inspinia.cn/html/inspiniaen/js/plugins/datapicker/bootstrap-datepicker.js"></script>
<script src="yangshi/js/QuitJs.js"></script>

<script>
    $('#date1').datetimepicker({  

        format: 'YYYY-MM-DD HH:00:00',  
        locale: moment.locale('zh-cn')  
    });
    
    function CompareDate(d1,d2)
    {
      return ((new Date(d1.replace(/-/g,"\/"))) > (new Date(d2.replace(/-/g,"\/"))));
    }

    function SavaNewtech(){
    	var date =$("#tech_time").val();
    	var technum=$("#tech_num").val();
    	var course_id=$("#course_id").val();
    	var tech_palace=$("#tech_palace").val();
    	var coach_id=$("#coach_id").val();
    	if(date==""||technum==""||course_id==""||tech_palace==""||coach_id==""){
    		swal("输入完整信息");
			return false;
    	}
		date = date.substring(0,19);    
		date = date.replace(/-/g,'/'); 
		var timestamp = new Date(date).getTime();
		var nowtime=new Date().getTime();
		if(technum==0){
			swal("人数不能为0");
			return false;
		}
		if(technum>99){
			swal("人数不能超过99");
			return false;
		}
		if(nowtime<timestamp){
			var data={
					course_id:$("#course_id").val(),
					coach_id:$("#coach_id").val(),
					tech_time:$("#tech_time").val(),
					tech_palace:$("#tech_palace").val(),
					tech_num:$("#tech_num").val()
	        };
	    	$.ajax({
		    	//发送请求URL，可使用相对路径也可使用绝对路径
		    	url:"SaveNewTechByAjax.do",
		   	 	//发送方式为GET，也可为POST，需要与后台对应
		   		 type:"post",
			    //设置接收格式为JSON
			    dataType:"text",
			    //编码设置
			    contentType:"application/json;charset=utf-8",
			    //向后台发送的数据
			    data:JSON.stringify(data),
			    //后台返回成功后处理数据，data为后台返回的json格式数据
			    success:function(data){
			    	swal(data);
			    },
			   //查询错误处理
			   error:function(){
				   swal("取消", "出现错误)",
				   "error"); 
				}
	        });
		}
		else{
			swal("课程时间必须大于今天");
			return false;
		}
		
    }     
</script>
</body>
</html>




