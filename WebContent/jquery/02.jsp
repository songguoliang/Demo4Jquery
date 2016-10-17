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
	//属性选择，属性为标签里任意定义的属性
	console.log($("div[title='div1']"));
	
	console.log($(":input"));//选择input, textarea, select , button 
	
	console.log($(":text"));//选择单行文本框
	
	//选择可见的元素
	console.log($(":visible"));
	//选择不可见的元素，包括head、title等标签
	console.log($(":hidden")); 
	
	//选择可用的元素
	console.log($(":enabled"));
	//选择不可用的元素
	console.log($(":disabled"));
	//选择选中的radio、checkbox、option等
	console.log($(":checked"));
	 
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
	
	    <input type="password" />
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
</body>
</html>