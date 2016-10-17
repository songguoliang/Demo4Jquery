<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>其他</title>
<script src="/js/jquery-1.7.1.js" type="text/javascript"></script>
<style type="text/css">
div{
	border: 1px solid black;
	margin: 10px;
}
.div{
	background-color: gray;
}
</style>
<script type="text/javascript">
$(function(){
	$("#btn1").click(function(){
		//单参数表示获取属性值
		console.log($("img").attr("src"));
		//两个参数设置属性值
		$("img").attr("src","3.gif");
	});
	
	$("#btn2").click(function(){
		//移除属性
		$("img").removeAttr("src");
	});
	
	$("#btn3").click(function(){
		//添加class样式
		$(this).parent().addClass("div");
	});
	$("#btn4").click(function(){
		//移除class样式
		$(this).parent().removeClass("div");
	});
	$("#btn5").click(function(){
		//切换class样式，包含就移除、不包含就添加
		$(this).parent().toggleClass("div");
	});
	
	$("#append").click(function(){
		//append  内部后面追加
		//prepend 内部前面追加
		//after	     外部后面追加
		//before  外部前面追加
		$("#appendDiv").append('<input value="append的内容">')
			.prepend($("#btn5"))
			.after($("#btn4"))
			.before($("#btn3"))
			.css({width:"400px",height:'100px'});
	});
	
	
});
</script>
</head>
<body style="padding-bottom: 20px;">
	<div>
		<button id="btn1">换图</button>
		<button id="btn2">移除</button>
		<button id="btn3">div添加样式</button>
		<button id="btn4">div移除样式</button>
		<button id="btn5">变换样式</button>
		<img src="2.jpg" width="200">
	</div>
	<button id="append">注意上面按钮的位置</button>
	<div id="appendDiv">
		<span>测试追加内容</span>
	</div>
	
	
</body>
</html>