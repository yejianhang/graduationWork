<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
	<meta name="author" content="">
	<title>用户登录</title>

	<!-- Fonts -->.
	<link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,700&amp;subset=latin-ext" rel="stylesheet">

	<!-- CSS - REQUIRED - START -->
	<!-- Batch Icons -->
	<link rel="stylesheet" href="http://cn.inspinia.cn/html/inspiniacn/quillpro/assets/fonts/batch-icons/css/batch-icons.css">
	<!-- Bootstrap core CSS -->
	<link rel="stylesheet" href="http://cn.inspinia.cn/html/inspiniacn/quillpro/assets/css/bootstrap/bootstrap.min.css">
	<!-- Material Design Bootstrap -->
	<link rel="stylesheet" href="http://cn.inspinia.cn/html/inspiniacn/quillpro/assets/css/bootstrap/mdb.min.css">
	<!-- Custom Scrollbar -->
	<link rel="stylesheet" href="http://cn.inspinia.cn/html/inspiniacn/quillpro/assets/plugins/custom-scrollbar/jquery.mCustomScrollbar.min.css">
	<!-- Hamburger Menu -->
	<link rel="stylesheet" href="http://cn.inspinia.cn/html/inspiniacn/quillpro/assets/css/hamburgers/hamburgers.css">

	<!-- CSS - REQUIRED - END -->

	<!-- CSS - OPTIONAL - START -->
	<!-- Font Awesome -->
	<link rel="stylesheet" href="http://cn.inspinia.cn/html/inspiniacn/quillpro/assets/fonts/font-awesome/css/font-awesome.min.css">

	<!-- CSS - DEMO - START -->
	<link rel="stylesheet" href="http://cn.inspinia.cn/html/inspiniacn/quillpro/assets/demo/css/ui-icons-batch-icons.css">
	<!-- CSS - DEMO - END -->

	<!-- CSS - OPTIONAL - END -->

	<!-- QuillPro Styles -->
	<link rel="stylesheet" href="http://cn.inspinia.cn/html/inspiniacn/quillpro/assets/css/quillpro/quillpro.css">
</head>
<body>

	<div class="container-fluid">
		<div class="row">
			<div class="right-column sisu">
				<div class="row mx-0">
					<div class="col-md-7 order-md-2 signin-right-column px-5 bg-secondary">
						<h1 class="display-4">私 教 登 录</h1>
						<p class="lead mb-5">
							Log in to start
						</p>
						
					</div>
					<div class="col-md-5 order-md-1 signin-left-column bg-white px-5" style="height: 783px;">
						<form action="adiminLogin.do" method="post">
							<div class="form-group">
								<label for="exampleInputEmail1" class="active">Admin ID</label>
								<input type="text" class="form-control"   name="coach_id">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1" class="active">密码</label>
								<input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" name="coach_passwd">
							</div>
							<div class="custom-control custom-checkbox mb-3">
								<input type="checkbox" class="custom-control-input" id="keep-signed-in">
								<label class="custom-control-label" for="keep-signed-in">记住账号密码</label>
							</div>
							<button type="submit" class="btn btn-primary btn-gradient btn-block waves-effect waves-light" onclick="this.form.submit()"><span class="gradient">
								<i class="batch-icon batch-icon-key"></i>
								登录
							</span></button>
							<hr>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- SCRIPTS - REQUIRED START -->
	<!-- Placed at the end of the document so the pages load faster -->
	<!-- Bootstrap core JavaScript -->
	<!-- JQuery -->
	<script type="text/javascript" src="http://cn.inspinia.cn/html/inspiniacn/quillpro/assets/js/jquery/jquery-3.1.1.min.js"></script>
	<!-- Popper.js - Bootstrap tooltips -->
	<script type="text/javascript" src="http://cn.inspinia.cn/html/inspiniacn/quillpro/assets/js/bootstrap/popper.min.js"></script>
	<!-- Bootstrap core JavaScript -->
	<script type="text/javascript" src="http://cn.inspinia.cn/html/inspiniacn/quillpro/assets/js/bootstrap/bootstrap.min.js"></script>
	<!-- MDB core JavaScript -->
	<script type="text/javascript" src="http://cn.inspinia.cn/html/inspiniacn/quillpro/assets/js/bootstrap/mdb.min.js"></script>
	<!-- Velocity -->
	<script type="text/javascript" src="http://cn.inspinia.cn/html/inspiniacn/quillpro/assets/plugins/velocity/velocity.min.js"></script>
	<script type="text/javascript" src="http://cn.inspinia.cn/html/inspiniacn/quillpro/assets/plugins/velocity/velocity.ui.min.js"></script>
	<!-- Custom Scrollbar -->
	<script type="text/javascript" src="http://cn.inspinia.cn/html/inspiniacn/quillpro/assets/plugins/custom-scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
	<!-- jQuery Visible -->
	<script type="text/javascript" src="http://cn.inspinia.cn/html/inspiniacn/quillpro/assets/plugins/jquery_visible/jquery.visible.min.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script type="text/javascript" src="http://cn.inspinia.cn/html/inspiniacn/quillpro/assets/js/misc/ie10-viewport-bug-workaround.js"></script>

	<!-- SCRIPTS - REQUIRED END -->

	<!-- SCRIPTS - OPTIONAL START -->
	<!-- Image Placeholder -->
	<script type="text/javascript" src="http://cn.inspinia.cn/html/inspiniacn/quillpro/assets/js/misc/holder.min.js"></script>
	<!-- SCRIPTS - OPTIONAL END -->

	<!-- QuillPro Scripts -->
	<script type="text/javascript" src="http://cn.inspinia.cn/html/inspiniacn/quillpro/assets/js/scripts.js"></script>


<div class="hiddendiv common"></div><div class="sogoutip" style="z-index: 2147483645; visibility: hidden; display: none;"></div><div class="sogoubottom" id="sougou_bottom" style="display: none;"></div><div id="ext_stophi" style="z-index: 2147483647;"><div class="extnoticebg"></div><div class="extnotice"><h2>关闭提示 <a href="#" title="关闭提示" id="closenotice" class="closenotice">关闭</a></h2><p id="sogouconfirmtxt"></p>  <a id="sogouconfirm" href="#" class="extconfirm">确 认</a> <a id="sogoucancel" href="#" class="extconfirm">取 消</a></div></div><div id="ext_overlay" class="ext_overlayBG" style="display: none; z-index: 2147483646;"></div><iframe class="sogou_sugg_feedbackquan" frameborder="0" scrolling="no" src="http://ht.www.sogou.com/websearch/features/yun6.jsp?pid=sogou-brse-d2a452edff079ca6&amp;w=1920&amp;v=7421&amp;st=1549090353311&amp;od=646&amp;ls=1546784457596&amp;lc=&amp;lk=1532586851406&amp;sd=0&amp;cd=0&amp;kd=0&amp;u=1505358832959757&amp;y=B064D2C9C3F0D7A290C5E19D89462969&amp;query=bootstrap%20%E6%A8%A1%E6%9D%BF_bootstrap%20%E5%90%8E%E7%AB%AF%E6%A8%A1%E6%9D%BF_bootstrap%20%E6%A8%A1%E6%9D%BF%E4%B8%8B%E8%BD%BD-QuillPro|http%3A%2F%2Fcn.inspinia.cn%2Fquillpro%2Fsisu-signin.html&amp;r=http%3A%2F%2Fcn.inspinia.cn%2Fquillpro%2Findex.html" style="background: transparent; border: none; display: none; height: 84px; width: 100%; z-index: 2147483645;"></iframe></body>
</html>