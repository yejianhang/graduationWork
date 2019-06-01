<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

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
                              <img alt="image" class="img-circle" src="/Gym_manage_local/${sessionScope.coach.coach_picsrc }" height="70" width="70"  />
                             </span>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="clear"> <span class="block m-t-xs"> <strong clas s="font-bold">${sessionScope.coach.coach_name }</strong>
                             </span> <span class="text-muted text-xs block">私教 <b class="caret"></b></span> </span> </a>
                            <ul class="dropdown-menu animated fadeInRight m-t-xs">
                                <li><a href="CoachEditInfo.do?coach_id=${sessionScope.coach.coach_id }">个人信息</a></li>
                                <li><a onclick="quit()">登出</a></li>
                            </ul>
                        </div>
                        <div class="logo-element">
                            IN+
                        </div>
                    </li>
                     <li>
                        <a href="returnCoachProfile.do"><span class="nav-label">主页</span></a>
                    </li>
                     <li>
                    	
                        <a href="CoachEditInfo.do?coach_id=${sessionScope.coach.coach_id }"> 个人信息</a>
                    </li>
                    <li>
                        <a href="CoachShowAllXY.do?coach_id=${sessionScope.coach.coach_id }"><span class="nav-label">学员</span></a>
                    
                    </li>
                    <li>
                        <a href="EnterCoachChat.do?coach_id=${sessionScope.coach.coach_id }"><span class="nav-label">消息中心</span></a>
                     
                    </li>
                    <li>
                        <a href="EnterFileCenter.do?Upload_id=${sessionScope.coach.coach_id }"><span class="nav-label">文件中心</span></a>
                     
                    </li>
            </ul>

        </div>
    </nav>

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
                <div class="col-lg-9">
                    <h2>文件管理器</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="index.html">主页</a>
                        </li>
                        <li>
                            应用
                        </li>
                        <li class="active">
                            <strong>文件管理器</strong>
                        </li>
                    </ol>
                </div>
            </div>
        <div class="wrapper wrapper-content">
            <div class="row">
                <div class="col-lg-3">
                    <div class="ibox float-e-margins">
                        <div class="ibox-content">
                            <div class="file-manager">
                                <h5>UPLOAD:</h5>
                                <div class="hr-line-dashed"></div>
                                <form  id ="form2" action="upload3.do" enctype="multipart/form-data" method="post">
                                <input type="hidden" id="upload_id" name="upload_id" value=${sessionScope.coach.coach_id }>
                                <input type="file" name="file">
                                <button class="btn btn-primary btn-block">上传文件</button>
                                </form>
                                <div class="hr-line-dashed"></div>
                                <h5>文件夹</h5>
                                <ul class="folder-list" style="padding: 0">
                                    <li><a href="SelectPic.do?Upload_id=${sessionScope.coach.coach_id }"><img src="yangshi/picture/file.png">图片</a></li>
                                    <li><a href="SelectNotPic.do?Upload_id=1"><img src="yangshi/picture/file.png"> 文档</a></li>
                                </ul>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-9 animated fadeInRight">
                    <div class="row">
                        <div class="col-lg-12">
                        <c:forEach items="${fileList }" var="file">
                        	<c:if test="${file.file_ispic eq 1 }">
                            <div class="file-box" id="file${file.fileID}">
                                <div class="file">
                                    <a href="#">
                                        <span class="corner"></span>

                                        <div class="icon">
                                            <img alt="image" class="img-responsive" src="/Gym_manage_local/${file.file_name }"   height="80" width="270">
                                        </div>
                                        <div class="file-name">
                                           ${file.file_name }
                                            <br/>
                                            <small>添加: ${file.file_uptime }</small><br>
                                            <small><button class="btn btn-sm btn-primary" onclick="deletefile(${file.fileID})">删除</button></small>
                                        </div>
                                    </a>
                                </div>

                            </div>
                           	</c:if>
                           	<c:if test="${file.file_ispic eq 0 }">
                            <div class="file-box" id="file${file.fileID}">
                                <div class="file">
                                    <a href="#">
                                        <span class="corner"></span>

                                        <div class="image">
                                            <img alt="image" class="img-responsive" src="yangshi/picture/uploadFile.png">
                                        </div>
                                        <div class="file-name">
                                           ${file.file_name }
                                            <br/>
                                            <small>上传时间: ${file.file_uptime }</small>
                                            <small><button class="btn btn-sm btn-primary" onclick="deletefile(${file.fileID})">删除</button></small>
                                            
                                        </div>
                                    </a>
                                </div>

                            </div>
                           	</c:if>
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
    <script src="yangshi/js/QuitJs.js"></script>

    <script>
        $(document).ready(function(){
            $('.file-box').each(function() {
                animationHover(this, 'pulse');
            });
        });
        
        function deletefile(x){
        	var coach_id=$("#upload_id").val();
        	swal({
  			  title: "是否删除该文件?",
  			  icon: "warning",
  			  buttons: true,
  			  dangerMode: true,
  			})
  			.then((willDelete) => {
  			  if (willDelete) {
  				  window.location.href="CoachdeleteFile.do?upload_id="+coach_id+"&fileID="+x;
  				  $("#file"+x).remove();
  			  } else {
  			    swal("已取消该操作!");
  			  }
  			});
        }
    </script>
</body>

</html>
