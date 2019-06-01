<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<input type="button" onclick="sd()">
<tbody>
<td width='80px'>"+item.coach_name +"</td>
</tbody>
</body>
<script type="text/javascript" src="http://cn.inspinia.cn/html/inspiniacn/quillpro/assets/js/jquery/jquery-3.1.1.min.js"></script>
<script>
function sd(){
var url="AdShowAllCoach111.do";//这是要访问的路径及携带的参数
$.ajax({
	url:url,
	type:"post",
	dataType:"json",    //此处注明返回类型为json格式
	success:function(data){

 	$("tbody").children().remove();//清除原有的元素
		 $.each(data, function(index, item){//遍历json中每一个单元，随即为“tbody”添加元素
			 $("tbody").append(   
			 "<td width='80px'>"+item.coach_name +"</td>  "
			 )
	});
	}
})
}
</script>
</html>