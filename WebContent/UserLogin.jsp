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
	<link href="http://cn.inspinia.cn/html/inspiniaen/font-awesome/css/font-awesome.css" rel="stylesheet">
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
						<h1 class="display-4">会 员 登 录</h1>
						<p class="lead mb-5">
							Log in to start
						</p>
						
					</div>
					<div class="col-md-5 order-md-1 signin-left-column bg-white px-5" style="height: 783px;">
						<form action="checkLogin.do" method="post">
							<div class="form-group">
								<label for="exampleInputEmail1" class="active">会员ID</label>
								<input type="text" class="form-control" id="user_id"  name="user_id">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1" class="active">密码</label>
								<input type="password" class="form-control" id="user_passwd" placeholder="Password" name="user_passwd">
							</div>
							<div class="custom-control custom-checkbox mb-3">
								<input type="checkbox" class="custom-control-input" id="keep-signed-in">
								<label class="custom-control-label" for="keep-signed-in">记住账号密码</label>
							</div>
							<button type="submit" class="btn btn-primary btn-gradient btn-block waves-effect waves-light" onclick="return checkLog()"><span class="gradient">
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
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
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
	<script>
	function checkLog(){
		 var result=$("#user_id").val();
		 var password =$("#user_passwd").val();
		 if(result == "" ){
			swal("UserID不能为空!!!");
			return false;
		 }
		 if(password == "" ){
			swal("密码不能为空!!!");
			return false;
		 }else{
		 return true;
		 }
	}
	</script>

</html>