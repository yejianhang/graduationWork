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
    <link href="http://cn.inspinia.cn/html/inspiniaen/css/bootstrap.min.css" rel="stylesheet">
    <link href="http://cn.inspinia.cn/html/inspiniaen/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="http://cn.inspinia.cn/html/inspiniaen/css/plugins/summernote/summernote.css" rel="stylesheet">
    <link href="http://cn.inspinia.cn/html/inspiniaen/css/plugins/summernote/summernote-bs3.css" rel="stylesheet">
    <link href="http://cn.inspinia.cn/html/inspiniaen/css/plugins/datapicker/datepicker3.css" rel="stylesheet">
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
        </div>

        <div class="wrapper wrapper-content animated fadeInRight ecommerce">

            <div class="row">
                <div class="col-lg-12">
                    <div class="tabs-container">
                            <ul class="nav nav-tabs">
                            
                                <li class="active"><a data-toggle="tab" href="#tab-2" aria-expanded="true"> 私教信息</a></li>
                                <li class=""><a data-toggle="tab" href="#tab-4" aria-expanded="false"> 私教照片</a></li>
                            </ul>
                            <div class="tab-content">
                                
                                <div id="tab-2" class="tab-pane active">
                                    <div class="panel-body">

                                        <fieldset class="form-horizontal">
                                            <div class="form-group"><label class="col-sm-2 control-label">教练ID:</label>
                                                <div class="col-sm-10"><input type="text" class="form-control" value=${coach.coach_id }></div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-2 control-label">姓名:</label>
                                                <div class="col-sm-10"><input type="text" class="form-control" value="${coach.coach_name }"></div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-2 control-label">性别:</label>
                                         
                                            	<c:if test="${coach.coach_sex eq 'F'}"> 
                                                <div class="col-sm-10"><input type="text" class="form-control" value="女"></div>
                                                </c:if>
                                                <c:if test="${coach.coach_sex eq 'M' }" >
                                                <div class="col-sm-10"><input type="text" class="form-control" value="男"></div>
                                                </c:if>
                                            </div>
                                            <div class="form-group"><label class="col-sm-2 control-label">证书:</label>
                                                <div class="col-sm-10"><input type="text" class="form-control" value="${coach.coach_quality }"></div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-2 control-label">描述:</label>
                                                <div class="col-sm-10"><input type="text" class="form-control" value="${coach.coach_text }"></div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-2 control-label">主要课程:</label>
                                                <div class="col-sm-10"><input type="text" class="form-control" value="${coach.coach_maintech }"></div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-2 control-label">身高:</label>
                                                <div class="col-sm-10"><input type="text" class="form-control" value="${coach.coach_height }"></div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-2 control-label">体重:</label>
                                                <div class="col-sm-10"><input type="text" class="form-control" value="${coach.coach_weight }"></div>
                                            </div>

                                        </fieldset>


                                    </div>
                                </div>
                                <div id="tab-4" class="tab-pane">
                                    <div class="panel-body">

                                        <div class="table-responsive">
                                            <table class="table table-bordered table-stripped">
                                                <thead>
                                                <tr>
                                                    <th>
                                                        图像预览
                                                    </th>
                                                    <th>
                                                        图片网址
                                                    </th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <img src="/Gym_manage_local/${coach.coach_picsrc }" height="100" width="100">
                                                    </td>
                                                    <td>
                                                        <input type="text" class="form-control"  value="G:/gym_manage_local/${coach.coach_picsrc }">
                                                    </td>
                                                </tr>
                                                
                                                
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
        <div class="footer">
            <div class="pull-right">
                <script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1271199127'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s19.cnzz.com/z_stat.php%3Fid%3D1271199127%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script><span id="cnzz_stat_icon_1271199127"><a href="https://www.cnzz.com/stat/website.php?web_id=1271199127" target="_blank" title="站长统计"><img border="0" hspace="0" vspace="0" src="http://icon.cnzz.com/img/pic.gif"></a></span><script src=" http://s19.cnzz.com/z_stat.php?id=1271199127&amp;show=pic" type="text/javascript"></script><script src="http://c.cnzz.com/core.php?web_id=1271199127&amp;show=pic&amp;t=z" charset="utf-8" type="text/javascript"></script>
            </div>
            <div>
                <strong>Copyright</strong> inspinia中文 © 2017-2018
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
</script>
</body>
</html>




