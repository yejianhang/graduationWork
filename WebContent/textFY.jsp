<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title></title>
	<link rel="stylesheet" href="yangshi/css/bootstrap.min.css">
</head>
<body>

		<!-- 表格 -->
		<div id="d"></div>
	                 
	    <!-- 分页 -->   
		<div id="u"></div>
	
</body>

<script src="yangshi/js/jquery-1.10.1.min.js" type="text/javascript"></script>
<script src="yangshi/js/lTable.js" type="text/javascript"></script>
<script>
	var pageSize=10;
	var myTable;
	var dataUrl="";
	//初始化页面
	initPage(1,pageSize,"");
	//ajax获取数据
	function initPage(num,ps,url){
		
		$.ajax({
	   		url:"yangshi/json/data.json",
	   		type:"GET",
        	
	   		//type:"POST",
	   		//data:"userinfoVO.pageid="+num+"&userinfoVO.pagecount="+ps,
	   		dataType: "json", 
	     	success:function(data){
	         	initTable(data);
	   		},
	   		error:function(e){
	   			console.log(e)
	       		alert("数据获取错误");
	   		}
  		});
	}
  	
  	//初始化table和分页数据
  	function initTable(data){
  	  	//var obj = eval("("+data+")");
  	  	var obj=data;
  			//table
  			myTable=$.lTable(
			'#d',
				{
					data:obj.list	//json数据
					,title:["userid","username","password","userrolename","status","<button onclick='updF(id)'>修改</button>&nbsp;<button onclick='delF(id)'>删除</button>"]	//标题对应字段 
					,name:["用户id","用户名称","密码","权限名称","状态","_opt"]
					,tid:"userid"
					,checkBox:"userid"
				}
			 );
			 //myTable.getCheckboxIds(); //获取checkbox选中的值
			 //分页
			 $.lPaging(
			 	'#u',	//对应id
			 	{
			 		pageNumber:obj.pageNumber 	//当前页数
			 		,totalPage:obj.totalPage	//总页数
			 		,countSize:5	//分页显示个数	(可省略)
			 		,count:obj.count
			 		,inputSearch:true//显示查询输入框
			 		,onPageChange: function (num) {
		            	initPage(num,pageSize,dataUrl);
		        	}
			 	}
		   	 );
  	}
  	
  	//修改方法
  	function updF(id){
  		alert("修改："+id);
  	}
  	
  	//删除方法
  	function delF(id){
  		alert("删除："+id);
  	}
  	
</script>
</html>