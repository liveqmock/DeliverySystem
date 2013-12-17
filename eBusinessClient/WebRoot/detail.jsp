<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page   language= "java" import= "com.bjtu.deliverysystem.model.User"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<% 
  String goodId = request.getParameter("goodId");
 
  String nickname=null;
  User u=(User)request.getSession().getAttribute("user"); 
  if(u!=null)
      nickname=u.getNickname(); 
  else
      nickname="";
%>
<!DOCTYPE html>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>物品详细页</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="seawee">
<meta name="copyright" content="Copyright (c) 2011 seawee All Rights Reserved.">
<link href="./assets/style.css" rel="stylesheet" type="text/css">
<link href="./css/jqzoom.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="./js/jquery.js"></script>
<script type="text/javascript" src="./js/jqzoom_core.js"></script>
<script type="text/javascript" src="./js/show_face.js"></script>
<script type="text/javascript" src="./js/corner.js"></script>
<script type="text/javascript" src="./js/show_back.js"></script>
<style>
/*表情样式表*/
.p_top_say.myicon{ margin-top:100px;}
.p_top_say_l{width:700px;border:0px #ddd solid; font-size:12px;color:#999;}
.p_top_say_l a{ float:left;}
.p_top_say_l textarea{width:700px; height:50px;text-align:left; font-size:14px;border:1px solid #e1e1e1; margin:0;padding:4px; display:inline; color:#888; _overflow-y:hidden;font-family:tahoma; *overflow-y:hidden; overflow-y:hidden\9;_position:relative;_z-index:1;}
.p_top_say_r{width:0px;float:right;}
.p_top_say_r input{ width:0px;height:0px; margin-top:0px; float:left;  border:none; cursor:pointer;}
.mb-m{ padding-left:20px; height:80px;}
.p_top_say_new1{float:left;margin-left:40px;display:inline;_margin-top:-20px;color:#999;width:200px;padding-top:4px;_padding-top:1px;}
.mb-m .icon{width:220px;height:auto;padding:6px;display:inline-block;float:left;z-index:9999999;position:absolute;top:938px;left:436px;background:#fff;border:1px solid #FF9C00;}
.mb-m .cl{ clear:both;height:0;font-size:0; overflow:hidden;}
.cen_news_list .face_icon{width:220px; height:auto; padding:6px; display:inline-block; z-index:9999999;float:left; position:absolute ;*zoom:1; top:40px; left:85px; background:#fff; border:1px solid #FF9C00;}
.cen_news_list .face_icon img{padding:2px;}
#con_one_2 {_width:548px; _height:80px;}
.goodetail_submit { width:740px; text-align:center; }
</style>
<style type="text/css">
.PageSelectorNum {
	background: url(image/pageSelector_bg.gif) no-repeat;
	background-position: 0px 3px;
	padding-left: 0px;
	padding-right: 2px;
	padding-top: 4px;
	width: 20px;
	height: 20px;
	font-family: 宋体;
	text-align: center;
}
.PageSelectorSelected {
	color: #FF0000;
}
</style>
<style type="text/css">
	.mList {
	
		width: 702px;
		height: 50px;
		font-family: 宋体;
		margin-left:30px;
		margin-top:20px;
		border-radius:8px;
		padding-top:6px;
		padding-left:8px;
		background:#EEE5DE;
	}
	#TextArea1{
		background:#EEE5DE;
		border-radius:8px;
	}
</style>
<script type="text/javascript">

$(document).ready(function() {
	$('.jqzoom').jqzoom({
            zoomType: 'standard',
            lens:true,
            preloadImages: false,
            alwaysOn:false
        });
});




function init(){
    var goodId="<%=goodId%>";
    var url = "viewGoodAction";
    var data = {
        goodId : goodId
    }; //JSON object
    //post方法请求 
    $.post( url ,data , callback , "json" );   
        function callback(json){
            //解析json
            var json_object =eval("("+json+")");
            var suc = json_object.suc;
            var name = json_object.name;
            var price = json_object.price;
            var imgsrc = json_object.imgsrc;
            var info= json_object.info;
            var owner = json_object.owner;
            if(suc==0 ){
                alert("获取物品信息失败！");
            }
            if(suc== 1){
               $("#info").val(info);
               $("#price").val(price);
               $("#name").val(name);
               //$("#owner").val(owner);
               $("#imgsrc1").attr("src",imgsrc);
               $("#imgsrc2").attr("src",imgsrc);
               $("#goodId").val(goodId);
            }
        }
}


function addItem(){
    var goodId=$("#goodId").val();
    var username="<%=nickname%>";
    alert(goodId);
    var url = "addItemAction";
    var data = {
        goodId : goodId,
        username : username
    }; //JSON object
    //post方法请求 
    $.post( url ,data , callback , "json" );   
        function callback(json){
            //解析json
            var json_object =eval("("+json+")");
            var suc = json_object.suc;
            if(suc==0 ){
                alert("添加物品到购物车失败！");
            }
            if(suc== 1){
               alert("添加物品到购物车成功！");
               window.location.href="viewItemListAction.action?username="+username;
            }
        }
}
</script>

</head>

<body onload="init()">

<form>
 <input type="hidden" id="goodId" name="goodId" value=""/>
</form>

<div id="header">
<!--头部-->
    <div id="logo">
			<h1><a href="index.html">eBuy购物</a></h1>
			<p>还在等什么，赶快行动吧</p>
    </div>
     
    <div class="uc_login">
		 <a href="beginModifyUserAction">
		   <strong>
                        <script  type="text/javascript">
                            document.write("<%=nickname%>");
                        </script>
           </strong>
         </a>
    	| <a href="beginLoginAction">登录</a>
    	| <a href="beginRegistAction">注册</a>
    	| <a href="logoutAction">注销</a>
	</div>
    
    
</div>

<div id="nav">
<!--导航-->
	<div class="nav_menu">
    </div>
    
</div>



<div id="good_content">
<div id="good_left">
<!--左侧-->

<div class="good_l_title"></div>
<div class="good_l_content">

	<ul><li><a href=""><img src="./assets/20110922153155_2071.jpg" width="160" height="130"></a></li><li style="overflow:hidden; white-space:nowrap;" title="NBA球队标志POLO衫">NBA球队标志POLO衫</li></ul>	

	<ul><li><a href=""><img src="./assets/20110922145515_3211.jpg" width="160" height="130"></a></li><li style="overflow:hidden; white-space:nowrap;" title="真牛皮钱包">真牛皮钱包</li></ul>	

	<ul><li><a href=""><img src="./assets/20110921142247_2707.JPG" width="160" height="130"></a></li><li style="overflow:hidden; white-space:nowrap;" title="物流管理">物流管理</li></ul>	


</div>

</div>

<div id="good_right">
<!--右侧-->
<div class="good_xqtop">
<!--物品图片及介绍-->

<div class="good_xqpic">
	<div class="clearfix" id="content" style="height:370px;width:312px;">
        <div class="clearfix">
           <a> <img id="imgsrc1" src="./assets/20120323112520_4348.png" width="310" height="310" style="border: 1px solid #FF6600;"/>
            </a>
        </div>
        <br>
        <div class="clearfix">
        <ul id="thumblist" class="clearfix">
        	<li><a><img id="imgsrc2" src="./assets/20120323112520_4348.png" width="40" height="40"/></a></li>
        	
        </ul>
        </div>
    </div>

</div>

<div class="good_xqtxt">
<ul><li class="good_xqtxt_title">物　　品：</li><li class="good_xqtxt_txt" style="overflow:hidden; white-space:nowrap;"><input type="text" id="name" readonly="readonly"/></li></ul>
<ul><li class="good_xqtxt_title">单　　价：</li><li  class="good_xqtxt_txt"><input type="text" id="price" readonly="readonly"/></li></ul>
<ul><li class="good_xqtxt_xqline"><img  src="" width="405" height="1"/></li></ul>
<ul><li class="good_xqtxt_title">物品介绍：</li><li class="good_xqtxt_txt" style="overflow:hidden; white-space:nowrap;"><textarea rows="3" cols="19" id="info" readonly="readonly"></textarea></li></ul>
</div>

</div>

<div class="good_bg">
<div class="good_bg_huanye">
	<div class="good_huanye"><div class="uc_m_page">
		
	</div>
</div>
<div>
<input type="image" style="margin-left:500px" src="./assets/good_add_button.gif" onclick="addItem()">
<script>

function addToShoppingCart(){
	alert("已添加到购物车");
	window.location.href="viewOrderAction.action?orderId="+1;
}
</script>

</div>
</div>
</div>

<div id="messageList">
	</div>
	
<div class="good_ly">
	<div class="mb-m">
        <div class="p_top_say">
            <div class="p_top_say_l">
                <textarea name="TextArea1" id="TextArea1" onkeydown="savePos(this,&#39;num&#39;);" onkeyup="savePos(this,&#39;num&#39;);" onmousedown="savePos(this,&#39;num&#39;);textdown(event,&#39;TextArea1&#39;);" onmouseup="savePos(this,&#39;num&#39;)" onfocus="savePos(this,&#39;num&#39;);textfocus(this);" onblur="textblur(this);" cols="20" rows="2"></textarea>
            </div>
        </div>
     
    
<div class="goodetail_submit">
<input type="image" src="./assets/good_button3.gif" onclick="submits();"> </div>
<script>
function submits(){
	if($("#TextArea1").val() == ""){
		alert("留言不能为空！");
		return false;
	}
	else {
		var storage=window.localStorage;
		var aa=storage.getItem("bjtuID");
		$("#messageList").append("<div class='mList'>"+$("#TextArea1").val()+"<br/><br/><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;---交大人&nbsp; "+aa+"</p></div><br/>");
		document.getElementById("TextArea1").value="";
	}
}
</script>
</div>

<div class="gooddetail_hytxt">






</div>
<!--右侧结束-->
</div>
<!--详细页结束-->
</div>
</div>  





<div id="footer">
<!--页脚-->
	<dl>
    	<dt><a href="">关于我们</a>　||　<a href="">联系我们</a></dt>
      	<dd>Copyright 2011-2012 　<b><a href="">www.bjtu.edu.cn</a></b>　All Rights Reserved.</dd>
    </dl>
</div>


		
</body></html>