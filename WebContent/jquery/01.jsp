<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>常用选择器</title>
<script src="/js/jquery-1.7.1.js" type="text/javascript"></script>
<style type="text/css">
div{
	border: 1px solid black;
	margin: 10px;
}
</style>
<script type="text/javascript">
$(function(){
	//id选择器，注意id不能重复
	console.log($("#input"));
	
	//样式选择器，只要包含该class便可
	console.log($(".class1"));
	console.log($(".class2"));
	
	//标签选择器，根据标签名称选择
	console.log($("div"));
	console.log($("span"));
	
	//复合选择，根据多个选择器来匹配，既选择div又选择span
	console.log($("div,span"));
	
	//层级选择，选取div下面的所有的input
	console.log($("div input"));
	//层级选择，选取div直接子元素input，不包括孙子级的
	console.log($("div>input"));
	
	//多条件选择，既包含class1又包含class2
	console.log($(".class1.class2"));
	
});
</script>
</head>
<body>
	<div style="padding: 50px;">
		<input id="input" type="text" value="aa">
		<span>还能输入<font color="red" id="show">0</font>字</span>
		<p>
			<label>Newsletter:</label>
			<input name="newsletter" />
		</p>
	</div>
	<div class="class1">测试样式选择器01</div>
	<div class="class1 class2">测试样式选择器02</div>
</body>
</html>