<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div>
		<strong> ${sessionScope.user.name}!!!!! </strong>
	</div>
	<form action="/userLogin/user/outLogin">
		<table>
			<tr>
				<td><input type="submit" value="退出登录" ></td>
			</tr>
		</table>
	</form>
</body>
</html>
