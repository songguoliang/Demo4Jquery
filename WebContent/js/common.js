var ddd={};
ddd.v


var Dol={//公共方法根
	alert:{//提示框
		msg:function(obj){
			obj.fixed=true;
			if(obj.okValue===undefined){
				obj.okValue=obj.okText;
			}
			if(obj.cancelValue===undefined){
				obj.cancelValue=obj.cancelText;
			}
			if(obj.modal){
				if(!obj.useTime){
					obj.time=undefined;
				}
				dialog(obj).showModal();
			}else{
				if(!obj.useTime){
					obj.time=undefined;
				}
				dialog(obj).show();
			}
		}
	}
	
};
/*确认对话框*/
Dol.alert.confirm=function(obj){
	Dol.alert.msg({
		title:obj.title||'提示',
		content:obj.content||'提示！',
		width:obj.width||200,
	    height:obj.height,
	    modal:obj.modal,
		okValue: obj.okText||'确定',
	    ok:obj.ok||$.noop,
	    cancelValue: obj.cancelText||'取消',
	    cancel:obj.cancel||$.noop,
	    icon:'question',
	    onclose:obj.onclose
	});
};
/*失败提示框*/
Dol.alert.error=function(obj){
	Dol.alert.msg({
		title:obj.title||'提示',
		content:obj.content||'提示！',
		width:obj.width||200,
	    height:obj.height,
	    modal:obj.modal,
		time:obj.time||2,
		useTime:obj.useTime===false?false:true,
		okValue: obj.okText||'确定',
	    ok:obj.ok,
	    icon:'error',
	    onclose:obj.onclose
	});
};
/*成功提示框*/
Dol.alert.success=function(obj){
	Dol.alert.msg({
		title:obj.title||'提示',
		content:obj.content||'提示！',
		width:obj.width||200,
	    height:obj.height,
	    modal:obj.modal,
		time:obj.time||2,
		useTime:obj.useTime===false?false:true,
		okValue: obj.okText||'确定',
	    ok:obj.ok,
	    icon:'success',
	    onclose:obj.onclose
	});
};
/*警告提示框*/
Dol.alert.warning=function(obj){
	Dol.alert.msg({
		title:obj.title||'提示',
		content:obj.content||'提示！',
		width:obj.width||200,
	    height:obj.height,
	    modal:obj.modal,
		time:obj.time||2,
		useTime:obj.useTime===false?false:true,
		okValue: obj.okText||'确定',
	    ok:obj.ok,
	    icon:'warning',
	    onclose:obj.onclose
	});
};
/**浮层提示**/
Dol.alert.layer=function(dom,option){
	//'top','top left','left top','left','left bottom','bottom left','bottom','bottom right',
	//'right bottom','right','right top','top right'
	dialog({
		align: option.position||'left',
		content:option.content||'浮层提示',
		quickClose: true
	}).show(dom);
};
/**
 * 检查input剩余长度
 */
Dol.wordLenCheck = 	function (inputEle, numShowEle, maxNum){
	var words = $(inputEle).val();
	var wordCount = words.length;
	var remain = parseInt(maxNum) - parseInt(wordCount);
	
	if(remain < 0){
		$(inputEle).val(words.substring(0,maxNum));
		Dol.alert.error({content:'字数超过' + maxNum + '，不能输入！'});
		remain=0;
	}
	$(numShowEle).text(remain);
};
/**
 * 格式化金额,非数字时返回0
 * Del.format(12345.678,2) 输出 12,345.68
 * @param num 要格式化的金额
 * @param d 小数位  [0-20]
 * @param m 将num扩大(缩小)的倍数,如：扩大100倍 m=100,缩小100倍 m=0.01
 */
Dol.formatMoney=function(num,d,m){
	d=d===0||d>0&&d<=20?d:2;
	num=(""+num).replace(/[^\d\.-]/g,"");
	if(isNaN(num)||num===""){
		return 0;
	}
	num=isNaN(m)||m==0?num:num*m;
	num=parseFloat(num).toFixed(d)+"";
	var arr=num.split(".");
	var str1=arr[0].split("").reverse();
	var str2=arr[1];
	var result = ""; 
	for (var i = 0; i < str1.length; i++) { 
		result += str1[i] + ((i + 1) % 3 == 0 && (i + 1) != str1.length ? "," : ""); 
	} 
	return str2?result.split("").reverse().join("") + "." + str2: result.split("").reverse().join("");
};
/**
 * 取消格式化金额
 * @param num 要取消格式化的金额
 * @param d 小数位 [0-20]
 * @param m 将num扩大(缩小)的倍数,如：扩大100倍 m=100,缩小100倍 m=0.01
 */
Dol.unformatMoney=function(num,d,m){
	d=d===0||d>0&&d<=20?d:2;
	num=(""+num).replace(/[^\d\.-]/g, "");
	if(isNaN(num)||num===""){
		return 0;
	}
	num=isNaN(m)||m==0?num:num*m;
	return parseFloat(num+"").toFixed(d)+""; 
};
/**
 * 数字金额大写转换(可以处理整数,小数,负数) 
 * @param n 要转换的数字
 */
Dol.upDigit=function(n){  
    var fraction = ['角', '分'];  
    var digit = ['零', '壹', '贰', '叁', '肆', '伍', '陆', '柒', '捌', '玖'];  
    var unit = [ ['元', '万', '亿'], ['', '拾', '佰', '仟']  ];  
    var head = n < 0? '欠': '';  
    n = Math.abs(n);
    var s = '';  
    for (var i = 0; i < fraction.length; i++)   
    {  
        s += (digit[Math.floor(n * 10 * Math.pow(10, i)) % 10] + fraction[i]).replace(/零./, '');  
    }  
    s = s || '整';  
    n = Math.floor(n);  
    for (var i = 0; i < unit[0].length && n > 0; i++)   
    {  
        var p = '';  
        for (var j = 0; j < unit[1].length && n > 0; j++)   
        {  
            p = digit[n % 10] + unit[1][j] + p;  
            n = Math.floor(n / 10);  
        }  
        s = p.replace(/(零.)*零$/, '').replace(/^$/, '零')  + unit[0][i] + s;  
    }  
    return head + s.replace(/(零.)*零元/, '元').replace(/(零.)+/g, '零').replace(/^整$/, '零元整');  
};