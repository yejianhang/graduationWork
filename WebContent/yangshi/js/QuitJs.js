 function quit(){
	 swal({
		  title: "是否退出登录?",
		  icon: "warning",
		  buttons: true,
		  dangerMode: true,
		})
		.then((willDelete) => {
		  if (willDelete) {
			  window.location.href="index.jsp"
		  } else {
		    swal("已取消该操作!");
		  }
		});
 }