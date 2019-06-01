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


</head>

<body>

    <div id="wrapper">

    <nav class="navbar-default navbar-static-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav metismenu" id="side-menu">
                <li class="nav-header">
                    <div class="dropdown profile-element"> <span>
                            <img alt="image" class="img-circle" src="/Gym_manage_local/${sessionScope.user.user_picsrc }"  height="70" width="70"/>
                             </span>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="clear"> <span class="block m-t-xs"> <strong class="font-bold">${user.user_name}</strong>
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
                    <h2>会员卡续费</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="index.html">主页</a>
                        </li>
                        <li>
                            <a>会员卡</a>
                        </li>
                        <li class="active">
                            <strong>续费</strong>
                        </li>
                    </ol>
                </div>
                <div class="col-lg-2">

                </div>
            </div>

        <div class="wrapper wrapper-content animated fadeInRight">



            <div class="row">
                <div class="col-md-9">

                    <div class="ibox">
                        <div class="ibox-title">
                            <span class="pull-right"></span>
                            <h5>会员卡信息</h5>
                        </div>
                        <div class="ibox-content">


                            <div class="table-responsive">
                                <table class="table shoping-cart-table">

                                    <tbody>
                                    <tr>
                                        <td width="90">
                                            <div class="cart-product-imitation">
                                           		<img src="/Gym_manage_local/logo.png" height=50>
                                            </div>
                                        </td>
                                        <td class="desc">
                                            <h3>
                                            <a href="#" class="text-navy">
                                                JH健身房会员卡
                                            </a>
                                            </h3>
                                            <p class="small">
                                                
                                            </p>
                                            <dl class="small m-b-none">
                                                <dt>说明列表</dt>
                                                <dd>XXXX</dd>
                                            </dl>
                                        </td>
										<form action="Renewals.do">
                                       <input type="hidden" name="user_id" value=${sessionScope.user.user_id }>
                                        <td width="130">
                                        	<select class="form-control" name="uRenewals_Level" onchange="MonneyChange(this.value)">
	                                        	<option value='1'>月卡</option>
	                                        	<option value='2'>半年卡</option>
	                                        	<option value='3'>年卡</option>
	                                        	<option value='4'>两年卡</option>
	                                        </select>  
                                         
                                        </td>
                                        <td>
                                        <input type="hidden" name="pay_money" id="uRenewals_Money" value=180>
                                            <h4 id="Renewals_Money">
                                                $180,00
                                            </h4>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>

                        </div>
                       
                        </div>
                        <div class="ibox-content">
                            <button class="btn btn-primary pull-right">确认续费</button>
                            </form>
                            <button class="btn btn-white"></button>
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
	function MonneyChange(v){
		var monney=v*120;
		document.getElementById("uRenewals_Money").value=monney;
		document.getElementById("Renewals_Money").innerText="$"+monney;
	}
	</script>
</body>

</html>
