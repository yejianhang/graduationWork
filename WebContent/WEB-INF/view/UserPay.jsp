<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="/yangshi/css/sweetalert.css"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="http://cn.inspinia.cn/html/inspiniaen/css/bootstrap.min.css" rel="stylesheet">
    <link href="http://cn.inspinia.cn/html/inspiniaen/font-awesome/css/font-awesome.css" rel="stylesheet">
    <!-- Toastr style -->
    <link href="http://cn.inspinia.cn/html/inspiniaen/css/plugins/toastr/toastr.min.css" rel="stylesheet">
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
                            <img alt="image" class="img-circle" src="/Gym_manage_local/${sessionScope.user.user_picsrc }" height="70" width="70"/>
                             </span>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="clear"> <span class="block m-t-xs"> <strong class="font-bold">${user.user_name}</strong>
                             </span> <span class="text-muted text-xs block">会员<c:if test="${sessionScope.IsOverdue eq 1}">(已过期)</c:if> <b class="caret"></b></span> </span> </a>
                            <ul class="dropdown-menu animated fadeInRight m-t-xs">
                                <li><a href="UserShowInfo.do?user_id=${sessionScope.user.user_id }">个人信息</a></li>
                                <li class="divider"></li>
                                <li><a onclick="quit()">登出</a></li>
                            </ul>
                        </div>
                        <div class="logo-element">
                            IN+
                        </div>
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
	                        <a href="UserShowBodyMeas.do?user_id=${sessionScope.user.user_id }"><span class="nav-label">体测信息</span></a>
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
        </div>
    </nav>

    <div id="page-wrapper" class="gray-bg">
        <div class="row border-bottom">
            <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                <ul class="nav navbar-top-links navbar-right">
                    <li>
                        <span class="m-r-sm text-muted welcome-message">欢迎来到JH健身管理后台</span>
                    </li>
                    <li class="dropdown">
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
                <h2>支付</h2>
                <ol class="breadcrumb">
                    <li>
                        <a href="index.html">主页</a>
                    </li>
                    <li>
                        <a>会员卡</a>
                    </li>
                    <li class="active">
                        <strong>续费支付</strong>
                    </li>
                </ol>
            </div>
            <div class="col-lg-2">

            </div>
        </div>

        <div class="wrapper wrapper-content animated fadeInRight">
            <div class="row">

                <div class="col-lg-12">

                    <div class="ibox">
                        <div class="ibox-title">
                            付款方式
                        </div>
                        <div class="ibox-content">

                            <div class="panel-group payments-method" id="accordion">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <div class="pull-right">
                                            <img src="/Gym_manage_local/pay.png"  height="20" width="20"></img>
                                        </div>
                                        <h5 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">PayPal</a>
                                        </h5>
                                    </div>
                                    <div id="collapseOne" class="panel-collapse collapse">
                                        <div class="panel-body">
                                             </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <div class="pull-right">
                                            <i class="fa fa-cc-amex text-success"></i>
                                            <i class="fa fa-cc-mastercard text-warning"></i>
                                            <i class="fa fa-cc-discover text-danger"></i>
                                        </div>
                                        <h5 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">Credit Card</a>
                                        </h5>
                                    </div>
                                    <div id="collapseTwo" class="panel-collapse collapse in">
                                        <div class="panel-body">

                                            <div class="row">
                                                <div class="col-md-4">
                                                    <h2>银行卡</h2>
                                                    <strong>产品名称:</strong> 
                                                    <c:if test="${ro.uRenewals_Level eq 1}">
                                                    	月卡<br/>
                                                    </c:if>
                                                    <c:if test="${ro.uRenewals_Level eq 2}">
                                                    	半年卡<br/>
                                                    </c:if>
                                                    <c:if test="${ro.uRenewals_Level eq 3}">
                                                    	年卡<br/>
                                                    </c:if>
                                                    <c:if test="${ro.uRenewals_Level eq 4}">
                                                    	两年卡<br/>
                                                    </c:if>
                                                    <strong>价格</strong>: <span class="text-navy" style="font-size:50px">${ro.uRenewals_Money }</span>

                                                    <p class="m-t">
                                                    健身房会员卡自助续费
                                                    </p>
                                                </div>
                                                <div class="col-md-8">
                                                        <div class="row">
                                                            <div class="col-xs-12">
                                                                <div class="form-group">
                                                                    <label>卡号</label>
                                                                    <div class="input-group">
                                                                        <input type="text" class="form-control" id="Number" name="Number" placeholder="Valid Card Number" required />
                                                                        <span class="input-group-addon"></span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-xs-12">
                                                                <div class="form-group">
                                                                    <label>持卡人姓名</label>
                                                                    <input type="text" class="form-control" name="nameCard" id="nameCard" placeholder="NAME" required/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-xs-12">
                                                                <button class="btn btn-primary" data-toggle="modal" data-target="#myModal" >我要付款</button>
                                                            </div>
                                                            
                                                            
                                                            <div class="modal inmodal" id="myModal" tabindex="-1" role="dialog" aria-hidden="true">
								                                <div class="modal-dialog">
								                                <form action="UserPay.do" method="post">
								                                <div class="modal-content animated bounceInRight">
								                                		<input type="hidden" name="pay_money" value=${ro.uRenewals_Money }>
								                                		<input type="hidden" name="user_id" value=${sessionScope.user.user_id }>
								                                		<input type="hidden" name="pay_card_level" value=${ro.uRenewals_Level }>
								                                		
								                                        <div class="modal-header">
								                                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
								                                            <img src="/Gym_manage_local/passwd.png" height="170" width="170">
								                                            <h4 class="modal-title">输入密码</h4>
								                                        </div>
								                                        <div class="modal-body">
								                                            <div class="form-group"><input type="password" placeholder="请输入你的密码" class="form-control"></div>
								                                        </div>
								                                        <div class="modal-footer">
								                                            <button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
								                                            <button type="submit" class="btn btn-primary">确认支付</button>
								                                        </div>
								                                    </div>
								                                  </form>
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
	$('#myModal').on('show.bs.modal', function () {
		if(document.getElementById("Number").value==""||document.getElementById("nameCard").value==""){
			swal("请完整输入银行卡信息");
		    return false;
		}
	})
</script>
</body>

</html>
