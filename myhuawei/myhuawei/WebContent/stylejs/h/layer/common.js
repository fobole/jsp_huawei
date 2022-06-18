/*
*
* 返回随机的6位16进制数
*
* */
function get16JinZhi() {
    var arrColor = ["0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f"];
    var str ="";//存储16进制的字符串
    for(var i=0;i<6;i++){
        str+=arrColor[parseInt(Math.random()*17)];
    }
    return str;
}
/*
* 获取当前时间
*字符串形式返回2018年10月23日
* */
function getNowTime() {
    var day = new Date();//获得当前时间戳
    var year = day.getFullYear();//获得年份字段
    var month = day.getMonth() + 1;//获得月份字段,从0计数
    var dayM = day.getDate();//获得一个月中的某一天
    var dayK = parseInt(day.getDay().toString());//获得一周的某一天
    var weekDay = ["天","一","二","三","四","五","六"];
    var hours = day.getHours();//获得时间戳的小时
    var minitues = day.getMinutes();//获得时间戳的分钟
    var second = day.getSeconds();////获得时间戳的秒
    var str = year+"年"+month+"月"+dayM+"日 "+"星期"+weekDay[dayK]+" "+hours+":"+minitues+":"+second;
    return str;
}
//基于layer.js的自定义弹窗类
var myLayer = {
    msgTime:2000,//消息默认停留时间
    layerTime:3000,//弹窗默认停留时间
	tipTime:1000,//小提示弹窗时间
    systemErrorMsgConten:"服务器繁忙，请稍后再试~~如果多次请求失败，请联系管理员~",//默认系统错误消息
    iconError:2,//默认错误图标
    iconSuccess:1,//默认成功图标
    mySkin:"layui-layer-lan",//默认皮肤
	shade:[0.5, '#393D49'],
	shadeClose:false,
    //系统错误输出
    systemErrorMsg: function (message,time,icon) {
        var message = arguments[0]?arguments[0]:this.systemErrorMsgConten;
        var time = arguments[1]?arguments[1]:this.msgTime;
        var icon = arguments[2]?arguments[2]:this.iconError;
        layer.msg(message, {time: time, icon: icon});
    },
    //加载方法，返回加载对象
    load: function (shade,shadeClose) {
		var shade = arguments[0]?arguments[0]:this.shade;
		var shadeClose = arguments[1]?arguments[1]:this.shadeClose;
        return layer.load(1, {shade: shade,shadeClose:shadeClose});
    },
    //执行成功消息
    successMsg: function (message,time,icon) {
        var message = arguments[0]?arguments[0]:"成功";
        var time = arguments[1]?arguments[1]:this.msgTime;
        var icon = arguments[2]?arguments[2]:this.iconSuccess;
        layer.msg(message, {icon: icon, time: time});
    },
     //执行失败消息
    errorMsg: function (message,time,icon) {
        var message = arguments[0]?arguments[0]:"失败";
        var time = arguments[1]?arguments[1]:this.msgTime;
        var icon = arguments[2]?arguments[2]:this.iconError;
        layer.msg(message, {icon: icon, time: time,anim:6});
    },
    //执行成功弹窗
    successAlert: function (message,title,time,icon) {
        var message = arguments[0]?arguments[0]:"成功";
        var title = arguments[1]?arguments[1]:"消息";
        var time = arguments[2] ? arguments[2]:this.layerTime; //设置默认值为3000
        var icon = arguments[3]?arguments[3]:this.iconSuccess;
        layer.alert(message, {
            icon: icon,
            time: time,
            title: title,
            skin: this.mySkin,
            anim: 5
        });
    },
    //执行失败弹窗
    errorAlert: function (message,title,time,icon) {
        var message = arguments[0]?arguments[0]:"失败";
        var title = arguments[1]?arguments[1]:"警告";
        var time = arguments[2] ? arguments[2]:this.layerTime; //设置默认值为3000
        var icon = arguments[3]?arguments[3]:this.iconError;
        layer.alert(message, {
            icon: icon,
            time: time,
            title: title,
            skin: this.mySkin,
            anim: 5
        });
    },
	//普通弹窗
	message:function(message,time){
		var time = arguments[1] ? arguments[1]:this.tipTime; //设置默认值为1s
		layer.msg(message,{
			time:time
		});
	},
	//询问弹窗
	confirm:function(message,btnFun1){
		layer.confirm(message, {
		  btn: ['确认','取消'], //按钮
		  skin: this.mySkin
		}, btnFun1);
	},
}

