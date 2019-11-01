<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=request.getContextPath() +"/"%>"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="" method="post">
		<table class="layui-table">
			<tr>
				<td>ID</td>
				<td>姓名</td>
				<td>密码</td>
				<td>学号</td>
				<td>操作</td>
			</tr>
			<c:forEach items="${page.list}" var="l">
			<tr>
				<td>${l.id}</td>
				<td>${l.username}</td>
				<td>${l.password}</td>
				<td>${l.stunumber}</td>
				<td><a href=""> 编辑 </a> 丨 <a href=""> 删除 </a></td>
			</tr>
			</c:forEach>
		</table>
	</form>
	<jsp:include page="/page/page.jsp"></jsp:include>
</body>
</html>