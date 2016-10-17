<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>筛选</title>
<script src="/js/jquery-1.7.1.js" type="text/javascript"></script>
<style type="text/css">
div{
	border: 1px solid black;
	margin: 10px;
}
</style>
<script type="text/javascript">
$(function(){
	//获取对象集合中的第一个元素
	console.log($("input").first());
	//获取对象集合中的最后一个元素
	console.log($("input").last());
	//判断是否包含样式pwd
	console.log($("input").first().hasClass("pwd"));
	//通配符*表示选择所有元素，not用来排除某些元素
	console.log($("body *").not("input"));
	
	//获取指定元素的下一个元素
	console.log($("select").next());
	//获取指定元素的上一个元素
	console.log($("select").prev());
	
	//选择元素的儿子子元素
	console.log($("#p").children());
	//从子孙元素中查找匹配的元素
	console.log($("#p").find("span"));
	
	//选择元素的直接父元素
	console.log($("#span2").parent());
	//选择元素的所有父元素，包括父元素的父元素
	console.log($("#span2").parents());
	//选择元素的所有父元素，但遇到#P元素时就停止继续查找，返回结果不含#P元素
	console.log($("#span2").parentsUntil("#p"));
	
});
</script>
</head>
<body>
	<div title="div1">根据属性选择</div>
	<form>
	    <input type="button" value="Input Button"/>
	    <input type="checkbox" />
	
	    <input type="file" />
	    <input type="hidden" />
	    <input type="image" />
	
	    <input type="password" class="pwd"/>
	    <input type="radio" />
	    <input type="reset" />
	
	    <input type="submit" />
	    <input type="text" />
	    <select>
	    	<option>Option1</option>
	    	<option>Option2</option>
	    </select>
	
	    <textarea></textarea>
	    <button>Button</button>
	    <input type="text" style="display: none;">
	    <input type="text" disabled="disabled">
	    <input type="text" readonly="readonly">
	
	</form>
	<div>
		<input type="checkbox" name="newsletter" checked="checked" value="Daily" />
		<input type="checkbox" name="newsletter" value="Weekly" />
		<input type="checkbox" name="newsletter" checked="checked" value="Monthly" />
	</div>
	<div id="p">
		<span>span1</span>
		<div>
			<span id="span2">span2</span>
		</div>
	</div>
</body>
</html>