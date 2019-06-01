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
                        <span class="m-r-sm text-muted welcome-message">私教管理</span>
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
                <h2>会员新增</h2>
                <ol class="breadcrumb">
                    <li>
                        <a href="index.html">主页</a>
                    </li>
                    <li class="active">
                        <strong>会员新增</strong>
                    </li>
                </ol>
            </div>
        </div>

        <div class="wrapper wrapper-content animated fadeInRight ecommerce">

            <div class="row">
                <div class="col-lg-12">
                    <div class="tabs-container">
                            <ul class="nav nav-tabs">
                                <li class="active"><a data-toggle="tab" href="#tab-2" aria-expanded="true"> 会员信息</a></li>
                            </ul>
                            <div class="tab-content">
                                
                                <div id="tab-2" class="tab-pane active">
                                    <div class="panel-body">
										<form action="InsertHY.do" method="post">
                                        <fieldset class="form-horizontal">
                                        	
                                            
                                            <div class="form-group"><label class="col-sm-2 control-label">姓名:</label>
                                                <div class="col-sm-10"><input type="text" class="form-control" id="user_name" name="user_name"></div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-2 control-label">性别:</label>
                                            	<div class="col-sm-10">
													<select class="form-control" name="user_sex" id="user_sex">
	                                                        <option value='M'>男</option>
	                                                        <option value='F'>女</option>
	                                                 </select>    
	                                            </div>                                        	
                                            </div>
                                            <div class="form-group"><label class="col-sm-2 control-label">年龄:</label>
                                                <div class="col-sm-10"><input type="text" class="form-control" id="user_age" name="user_age" onkeyup="value=value.replace(/[^\d]/g,'')"></div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-2 control-label">入会时间:</label>	
			                                    <div class="col-sm-10">
				                             		<div class="input-group date" id='date1'>  
										                <input type="text" class="form-control" id="user_menberStart" name="user_menberStart"/>  
										                <span class="input-group-addon">  
										                    <i class="glyphicon glyphicon-calendar"></i>  
										                </span>  
									            	</div>  
                                           		</div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-2 control-label">入会期限:</label>
                                                <div class="col-sm-10">
													<select class="form-control" id="user_menberTime" name="user_menberTime" onchange="MonneyChange(this.value)">
	                                                        <option value='1'>一月</option>
	                                                        <option value='6'>半年</option>
	                                                        <option value='12'>一年</option>
	                                                        <option value='24'>两年</option>
	                                                 </select>    
	                                            </div>  
                                            </div>
                                            <div class="form-group"><label class="col-sm-2 control-label">金额:</label>
                                            <div class="col-sm-10">
                                            <input type="hidden" name="pay_money" id="uRenewals_Money" value=180>
                                            <h4 id="Renewals_Money" >
                                                $180,00
                                            </h4>
                                            </div>
                                            </div>
                                            <div class="form-group">
                                            	<div class="col-sm-10">
                                            		<button class="btn btn-sm btn-primary" onclick="return SavaNewHY()">保存</button>
                                            	</div>
                                            </div>
                                        </fieldset></form>


                                    </div>
                                </div>
                            </div>
                    </div>
                </div>
            </div>

        </div>

    </div>
</div>



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
		
	    format: 'YYYY-MM-DD',  
	    locale: moment.locale('zh-cn')  
	});
	function MonneyChange(v){
		var level;
		if(v==1){
			level=1;
		}
		if(v==6){
			level=2;
		}
		if(v==12){
			level=3;
		}
		if(v==24){
			level=4;
		}
		var monney=level*120;
		document.getElementById("uRenewals_Money").value=monney;
		document.getElementById("Renewals_Money").innerText="$"+monney;
	}
	 function SavaNewHY(){
	    	var user_menberTime =$("#user_menberTime").val();
	    	var user_menberStart=$("#user_menberStart").val();
	    	var user_age=$("#user_age").val();
	    	var user_name=$("#user_name").val();
	    	var user_sex=$("#user_sex").val();
	    	date = user_menberStart.substring(0,19);    
			date = date.replace(/-/g,'/'); 
			var timestamp = new Date(date).getTime();
			var nowtime=new Date().getTime();
	    	if(user_name==""){
	    		swal("姓名不能为空！")
	    		return false;
	    	}
	    	if(user_sex==""){
	    		swal("性别不能为空！")
	    		return false;
	    	}
	    	if(user_age==""){
	    		swal("年龄不能为空！")
	    		return false;
	    	}
	    	if(user_menberStart==""){
	    		swal("入会时间不能为空！")
	    		return false;
	    	}
	    	if(timestamp<nowtime)
	    	{
	    		swal("入会时间不能小于当前时间！")
	    		return false;
	    	}
	    	if(user_menberTime==""){
	    		swal("入会期限不能为空！")
	    		return false;
	    	}
	 }
</script>
</body>
</html>




