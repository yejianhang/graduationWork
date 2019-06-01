<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title></title>

    <link href="http://cn.inspinia.cn/html/inspiniaen/css/bootstrap.min.css" rel="stylesheet">
    <link href="http://cn.inspinia.cn/html/inspiniaen/font-awesome/css/font-awesome.css" rel="stylesheet">

    <link href="http://cn.inspinia.cn/html/inspiniaen/css/animate.css" rel="stylesheet">
    <link href="http://cn.inspinia.cn/html/inspiniaen/css/style.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="/yangshi/css/sweetalert.css"/>
</head>
<body class="pace-done"><div class="pace  pace-inactive"><div class="pace-progress" data-progress-text="100%" data-progress="99" style="transform: translate3d(100%, 0px, 0px);">
  <div class="pace-progress-inner"></div>
<input type="hidden" id="user_id" value="${sessionScope.user.user_id}">
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
                        <a href="returnProfile.do" ><span class="nav-label">主页</span> </a>
                    </li>
                    <li>
                        <a href="ShowCardInfo.do?user_id=${sessionScope.user.user_id }"><span class="nav-label">会员卡信息</span></a>
                    </li>
                     <li>
                        <a href="#"><span class="nav-label">课程</span></a>
                        <ul class="nav nav-second-level ui-sortable collapse" style="height: 0px;">
                            <li><a href="#">所有课程</a></li>
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

        <div id="page-wrapper" class="gray-bg" style="min-height: 783px;">
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
                    <h2>课程列表</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="index.html">主页</a>
                        </li>
                        <li class="active">
                            <strong>课程列表</strong>
                        </li>
                    </ol>
                </div>
            </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="wrapper wrapper-content animated fadeInUp">

                    <div class="ibox">
                        <div class="ibox-title">
                            <h5>当前所有课程</h5>
                            <div class="ibox-tools">
                                <form action="UseShowBookedCourse.do">
                                	<input type="hidden" name="user_id" value=${sessionScope.user.user_id }>
                                    <button type="submit" class="btn btn-sm btn-primary" > 查看已选课程</button>
                                    </form>
                            </div>
                        </div>
                        <div class="ibox-content">
                            <div class="row m-b-sm m-t-sm">
                                <div class="col-md-1">
									
                                </div>
                                <div class="col-md-11">
                                	 <form action="SearchCourseByName.do">
                                     <div class="input-group"><input type="text" placeholder="搜索" class="input-sm form-control" name="course_name"> <span class="input-group-btn">
                                     <button type="submit" class="btn btn-sm btn-primary"> 搜索</button> </span>
                                     </div>
                                     </form>
                                    
                                </div>
                            </div>
							
                            <div class="project-list">

                                <table class="table table-hover">
                               		<c:forEach items="${list}" var="tech"> 
                               		<c:if test="${tech.course_isOverDue eq 'true' }">
                                    <tbody>
                                    
                                    <tr>
                                    	<c:if test="${tech.tech_num_now lt tech.tech_num}"> 
                                        <td class="project-status">
                                        	<span class="label label-primary">可报名</span>
                                        </td>
                                        </c:if>
                                        <c:if test="${tech.tech_num_now eq tech.tech_num}"> 
                                        <td class="project-status">
                                        	<span class="label label-danger">已满</span>
                                        </td>
                                        </c:if>
                                        <td class="project-title">
                                            <a href="project_detail.html">${tech.course_name}</a>
                                            <br>
                                            <small>${tech.tech_time}</small>
                                        </td>
                                        <td class="project-completion">
                                                <small>当前报名人数:${tech.tech_num_now}/ ${tech.tech_num}</small>
                                                <div class="progress progress-mini">
                                                    <div style="width: ${tech.tech_num_now/tech.tech_num*100}%;" class="progress-bar"></div>
                                                </div>
                                        </td>
                                        
                                        <td class="project-people">
                                        	${tech.coach_name}教练
                                            <a href=""><img alt="image" class="img-circle" src="/Gym_manage_local/${tech.coach_picsrc}"></a>
                                       
                                        </td>
                                        <td class="project-actions">
                                            <a href="CourseDetail.do?tech_id=${tech.tech_id}" class="btn btn-white btn-sm" >查看 </a>
                                            <c:if test="${tech.tech_num_now lt tech.tech_num}"> 
                                            <a href="#" class="btn btn-white btn-sm" onclick="BookCourse(this)" id=${tech.tech_id}>选课 </a>
                                            </c:if>
                                        </td>
                                    </tr>
                                  <div id="context1" style="background-color:#D9ffff; border: 1px solid black;width:800px;position: absolute;top: 145px;left:175px;display:none" >
                                    </tbody>
                                    </c:if>
                                    </c:forEach>
                                </table>
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
	<script src="yangshi/js/QuitJs.js"></script>
    <script>
    function showText(ob){
    	var id=$(ob).attr("id"); 
       	$.post("FindCourseTextById.do",{'course_id':id},function(data){
       		swal({ 
       		  title: "课程详细信息",
       		  text: data, 
       		  html: true 
       		});
       		
       		
       	});
    }
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
			simpleLoad(btn, false)
        });
	});

    function simpleLoad(btn, state) {
    	if (state) {
        	btn.children().addClass('fa-spin');
            btn.contents().last().replaceWith(" Loading");
        } 
    	else {
        	setTimeout(function () {
            btn.children().removeClass('fa-spin');
            btn.contents().last().replaceWith(" Refresh");
        	}, 2000);
        }
	}
    
    $("input[name='course_name']").keyup(function(){
		var content=$(this).val();
	  	//如果当前搜索内容为空，无须进行查询
	  	if(content==""){
	   		$("#context1").css("display","none");
	   		return ;
	  	}
	    //由于浏览器的缓存机制 所以我们每次传入一个时间
	 	$.ajax({
	    	//发送请求URL，可使用相对路径也可使用绝对路径
	    	url:"ajaxSearchCourse.do",
	   	 	//发送方式为GET，也可为POST，需要与后台对应
		    //设置接收格式为JSON
		    dataType:"text",
		    //编码设置
		    contentType:"application/json;charset=utf-8",
		    //向后台发送的数据
		    data:{
		    	course_name:content,
		    },
		    //后台返回成功后处理数据，data为后台返回的json格式数据
		    success:function(data){
		    	  //拼接html
			    var res=data.split(",");
			    var html="";
			    for(var i=0;i<res.length;i++){
			     //每一个div还有鼠标移出、移入点击事件
			     html+="<div onclick='setSearch_onclick(this)' onmouseout='changeBackColor_out(this)' onmouseover='changeBackColor_over(this)'>"+res[i]+"</div>";
			     
			    }
			    $("#context1").html(html);
			    //显示为块级元素
			    $("#context1").css("display","block");	        
		    },
		   //查询错误处理
		   error:function(){
			   alert("err");
			}
        });
  
	    
 	 });
	  //鼠标移动到内容上
	  function changeBackColor_over(div){
	  	$(div).css("background-color","#CCCCCC");
	  }
	  //鼠标离开内容
	  function changeBackColor_out(div){
	   	$(div).css("background-color","");
	  }
	  //将点击的内容放到搜索框
	  function setSearch_onclick(div){
	   	$("input[name='course_name']").val(div.innerText);
	   	$("#context1").css("display","none");
	  }
    </script>



<div class="sogoutip" style="z-index: 2147483645; visibility: hidden; display: none;"></div><div class="sogoubottom" id="sougou_bottom" style="display: none;"></div><div id="ext_stophi" style="z-index: 2147483647;"><div class="extnoticebg"></div><div class="extnotice"><h2>关闭提示 <a href="#" title="关闭提示" id="closenotice" class="closenotice">关闭</a></h2><p id="sogouconfirmtxt"></p>  <a id="sogouconfirm" href="#" class="extconfirm">确 认</a> <a id="sogoucancel" href="#" class="extconfirm">取 消</a></div></div><div id="ext_overlay" class="ext_overlayBG" style="display: none; z-index: 2147483646;"></div><iframe class="sogou_sugg_feedbackquan" frameborder="0" scrolling="no" src="http://ht.www.sogou.com/websearch/features/yun6.jsp?pid=sogou-brse-d2a452edff079ca6&amp;w=1920&amp;v=7421&amp;st=1549117308852&amp;od=646&amp;ls=1546784457596&amp;lc=&amp;lk=1532586851406&amp;sd=0&amp;cd=0&amp;kd=0&amp;u=1505358832959757&amp;y=B064D2C9C3F0D7A290C5E19D89462969&amp;query=inspinia%E4%B8%AD%E6%96%87%20%7C%20%E9%A1%B9%E7%9B%AE%E5%88%97%E8%A1%A8%7C%20inspinia%20admin%E4%B8%AD%E6%96%87_inspinia%20admin%20%E4%B8%8B%E8%BD%BD_inspinia%20admin_inspinia%20admin%20%E6%9C%80%E6%96%B0%E7%89%88_inspinia%20admin%20v2.7_inspinia%20admin%202.7_inspinia%20admin%20theme_inspinia%20bootstrap|http%3A%2F%2Fcn.inspinia.cn%2Fprojects.html&amp;r=http%3A%2F%2Fcn.inspinia.cn%2Fform_basic.html" style="background: transparent; border: none; display: none; height: 84px; width: 100%; z-index: 2147483645;"></iframe></body>
</html>
