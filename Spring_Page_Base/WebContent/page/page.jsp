<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=request.getContextPath() +"/"%>"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="layui/css/layui.css" media="all">
<script type="text/javascript" src="js/jquery-1.8.2.js"></script>
<script src="layui/layui.js"></script>

<script>
layui.use('laypage', function(){
  var laypage = layui.laypage;
  
  //执行一个laypage实例
  laypage.render({
    elem: 'page', //注意，这里的 test1 是 ID，不用加 # 号
    count: ${page.total}, //数据总数，从服务端得到
    limit:${page.pageSize},//每页显示的条数
    limits:[3,6,9],
    curr:${page.pageNum},// 当前页
    groups:3,
    layout:['count','prev','page','next','limit','refresh','skip'],
    jump:function(obj, first){
        //obj包含了当前分页的所有参数，比如：
        console.log(obj.curr); //得到当前页，以便向服务端请求对应页的数据。
        console.log(obj.limit); //得到每页显示的条数
        if(!first){
        	location.href="${url}?pageNum="+obj.curr+"&pageSize="+obj.limit;
        }
    }
    
  });
});

</script>

</head>
<body>
	<div id="page"></div>
</body>
</html>