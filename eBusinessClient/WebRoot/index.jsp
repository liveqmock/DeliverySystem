<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page   language= "java" import= "com.bjtu.deliverysystem.model.User"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
String nickname=null;
User u=(User)request.getSession().getAttribute("user"); 
if(u!=null)
 nickname=u.getNickname(); 
else
 nickname="";
%>
<!DOCTYPE html>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>eBuy购物平台</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="seawee">
<meta name="copyright" content="Copyright (c) 2011 seawee All Rights Reserved.">
<link href="./assets/style.css" rel="stylesheet" type="text/css">
<link href="./css/hme.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="./js/jquery-1.6.2.js"></script>
<script type="text/javascript" src="./js/jqzoom_core.js"></script>
<script type="text/javascript" src="./js/show_face.js"></script>
<script type="text/javascript" src="./js/corner.js"></script>
<script type="text/javascript" src="./js/show_back.js"></script>
<script type="text/javascript">
function selectGood(goodId){
	var data = {
        goodId : goodId
    }; //JSON object
	jQuery.ajax({
		url:'viewGoodAction',
		data:data,
		type:"POST",
		dataType:"json",
		success:function(json){
			var json_object =eval("("+json+")");
            var suc = json_object.suc;
            var name = json_object.name;
            var price = json_object.price;
            var imgsrc = json_object.imgsrc;
            var info= json_object.info;
            var owner = json_object.owner;
            alert(name);
            if(suc==0 ){
                alert("获取物品信息失败！");
            }
            if(suc== 1){
               alert(name);
               alert(info);
               //var url="detail.jsp?name="+name+"&price="price+"&imgsrc="imgsrc+"&info="info+"&owner="+owner;
               var url="detail.jsp";
               window.location.href=url;
            }
		},
		error:AjaxFailed
	});
	function AjaxFailed(result)
	{
	  alert(result.status+"   "+ result.statusText);
	}
}

//获取物品信息 
function getGoodDetail(goodId){
    alert(goodId);
    var url = "viewGoodAction";
    var data = {
        goodId : goodId
    }; //JSON object
    //post方法请求 
    $.post( url ,data , callback , "json" );
    
        function callback(json){
           alert("hello");
            //解析json
            var json_object =eval("("+json+")");
            var suc = json_object.suc;
            var name = json_object.name;
            var price = json_object.price;
            var imgsrc = json_object.imgsrc;
            var info= json_object.info;
            var owner = json_object.owner;
            alert(name);
            if(suc==0 ){
                alert("获取物品信息失败！");
            }
            if(suc== 1){
               alert(name);
               alert(info);
               //var url="detail.jsp?name="+name+"&price="price+"&imgsrc="imgsrc+"&info="info+"&owner="+owner;
               var url="detail.jsp";
               window.location.href=url;
            }
        }
}
</script>

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
.page_cont{text-align: center; margin:0 auto; width:700px; font-size:13px;letter-spacing:1px;}
.page_cont ul li{ margin-left:5px; float:left; line-height:25px;}
.page_cont li img{ vertical-align:text-top; margin-left:5px;}
</style>
</head>





<body>
<div id="header">
<!--头部-->
    <div id="logo"><h1>eBuy购物平台</h1></div>
     
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



<div id="ww_content">
    <div class="slides">
        <ul class="slide-pic">
        	
        	
          <li class=" " style="display: none; "><a href="" target="_blank"><img alt="少儿服饰" src="./assets/20110926043613.jpg"></a> </li>
          
          
          <li style="display: none; " class=" "><a href="" target="_blank"><img alt="牛仔专区" src="./assets/20110926043725.jpg"></a> </li>
          
          
          <li style="display: none; " class=" "><a href="" target="_blank"><img alt="电子产品" src="./assets/20111009120205.jpg"></a> </li>
          
          <li style="display: none; " class=" "><a href="" target="_blank"><img alt="箱包鞋类" src="./assets/20111009120205.jpg"></a> </li>
          
          
          <li style="display: list-item; " class="  cur"><a href="" target="_blank"><img alt="运动休闲" src="./assets/focus_ozbkz_120625.jpg"></a> </li>
          
          </ul>
        <ul class="slide-li op">
          <li class=" "></li>
          <li class=" "></li>
          <li class=" "></li>
          <li class=" "></li>
          <li class="  cur"></li></ul>
        <ul class="slide-li slide-txt">
          <li class=" "><a href="" target="_blank">少儿服饰</a> </li>
          <li class=" "><a href="" target="_blank">牛仔专区</a></li>
          <li class=" "><a href="" target="_blank">电子产品</a> </li>
          <li class=" "><a href="" target="_blank">箱包鞋类</a> </li>
          <li class="  cur"><a href="" target="_blank">运动休闲</a> </li></ul>
    </div>
</div>

<!--公告窗口-->
<div id="window_gonggao" style="display:none;" class="open_window">
    <div class="window_title">
        <div class="window_title1"><img src="./assets/window_ykt_point.gif"></div>
        <div class="window_title2">公告信息</div>
        <div class="window_title3"><img src="./assets/window_close.gif" onclick="BOX_remove(&#39;window_gonggao&#39;)" style="cursor:pointer" border="0"></div>
    </div>
    <div class="net_content_main">
    	<div class="net_news">
            <div class="net_news_title" id="noticeTitle"></div>
            <div class="net_news_time" id="noticeTime"></div>
            <div class="net_news_content" id="noticeContext"></div>
        </div>
    </div>
</div>
<div id="BOX_overlay"></div>
<script>
function getinfo(j)
{alert(j);}


</script>
<div class="ww_wwyl_title"><img src="./assets/ww_wwyl.gif" alt="物物一览" width="1000" height="35"></div>
<div class="ww_wwyl">
<!--物物一览主体内容-->
<div class="ww_wwyl_main">
<ul>
<li>

			<div class="ww_wwyl_div" style="overflow:hidden; white-space:nowrap;">
				<div class="ww_pic"><a href=""><img class="iradius10" style="height: 130px; width: 175px; visibility: visible; " height="130" width="175" onclick="null" src="./assets/0.png"></img></a></div>
    			<div  style="height: 36px; width: 36px; visibility: visible; "></div>
				<div class="mainwl_wwjh_p" title="永久自行车">永久自行车</div><div class="mainwl_wwjh_p1"><a href="detail.jsp?goodId=1"><img src="./assets/index_jinru_button.gif" width="60" height="20" border="0"  onclick=""></a></div>
			</div>
			
			<div class="ww_wwyl_div" style="overflow:hidden; white-space:nowrap;">
				<div class="ww_pic"><a href=""><img class="iradius10" style="height: 130px; width: 175px; visibility: visible; " height="130" width="175" onclick="null" src="./assets/1.jpg"></img></a></div>
    			<div  style="height: 36px; width: 36px; visibility: visible; "></div>
				<div class="mainwl_wwjh_p" title="小桌子">小桌子</div><div class="mainwl_wwjh_p1"><a href="detail.jsp?goodId=3"><img src="./assets/index_jinru_button.gif" width="60" height="20" border="0" onclick=""></a></div>
			</div>
			
			<div class="ww_wwyl_div" style="overflow:hidden; white-space:nowrap;">
				<div class="ww_pic"><a href=""><img class="iradius10" style="height: 130px; width: 175px; visibility: visible; " height="130" width="175" onclick="null" src="./assets/2.jpg"></img></a></div>
    			<div  style="height: 36px; width: 36px; visibility: visible; "></div>
				<div class="mainwl_wwjh_p" title="小型书架">小型书架</div><div class="mainwl_wwjh_p1"><a href="detail.jsp?goodId=4"><img src="./assets/index_jinru_button.gif" width="60" height="20" border="0" onclick=""></a></div>
			</div>
			
			<div class="ww_wwyl_div" style="overflow:hidden; white-space:nowrap;">
				<div class="ww_pic"><a href=""><img class="iradius10" style="height: 130px; width: 175px; visibility: visible; " height="130" width="175" onclick="null" src="./assets/3.jpg"></img></a></div>
    			<div  style="height: 36px; width: 36px; visibility: visible; "></div>
				<div class="mainwl_wwjh_p" title="光盘夹">光盘夹</div><div class="mainwl_wwjh_p1"><a href="detail.jsp?goodId=5"><img src="./assets/index_jinru_button.gif" width="60" height="20" border="0" onclick=""></a></div>
			</div>
			
			<div class="ww_wwyl_div1" style="overflow:hidden; white-space:nowrap;">
				<div class="ww_pic"><a href=""><img class="iradius10" style="height: 130px; width: 175px; visibility: visible; " height="130" width="175" onclick="null" src="./assets/4.jpg"></img></a></div>
   				<div  style="height: 36px; width: 36px; visibility: visible; "></div>
				<div class="mainwl_wwjh_p" title="跳绳">跳绳</div><div class="mainwl_wwjh_p1"><a href="detail.jsp?goodId=6"><img src="./assets/index_jinru_button.gif" width="60" height="20" border="0" onclick=""></a></div>
			</div>
			
			<div class="ww_wwyl_div" style="overflow:hidden; white-space:nowrap;">
				<div class="ww_pic"><a href=""><img class="iradius10" style="height: 130px; width: 175px; visibility: visible; " height="130" width="175" onclick="null" src="./assets/5.jpg"></img></a></div>
    			<div  style="height: 36px; width: 36px; visibility: visible; "></div>
				<div class="mainwl_wwjh_p" title="杯子夹">杯子夹</div><div class="mainwl_wwjh_p1"><a href="detail.jsp?goodId=7"><img src="./assets/index_jinru_button.gif" width="60" height="20" border="0" onclick=""></a></div>
			</div>
			
			<div class="ww_wwyl_div" style="overflow:hidden; white-space:nowrap;">
				<div class="ww_pic"><a href=""><img class="iradius10" style="height: 130px; width: 175px; visibility: visible; " height="130" width="175" onclick="null" src="./assets/6.jpg"></img></a></div>
    			<div  style="height: 36px; width: 36px; visibility: visible; "></div>
				<div class="mainwl_wwjh_p" title="轮滑">轮滑</div><div class="mainwl_wwjh_p1"><a href="detail.jsp?goodId=8"><img src="./assets/index_jinru_button.gif" width="60" height="20" border="0" onclick=""></a></div>
			</div>
			
			<div class="ww_wwyl_div" style="overflow:hidden; white-space:nowrap;">
				<div class="ww_pic"><a href=""><img class="iradius10" style="height: 130px; width: 175px; visibility: visible; " height="130" width="175" onclick="null" src="./assets/7.jpg"></img></a></div>
    			<div  style="height: 36px; width: 36px; visibility: visible; "></div>
				<div class="mainwl_wwjh_p" title="kitty耳钉">kitty耳钉</div><div class="mainwl_wwjh_p1"><a href="detail.jsp?goodId=9"><img src="./assets/index_jinru_button.gif" width="60" height="20" border="0" onclick=""></a></div>
			</div>
			
			<div class="ww_wwyl_div" style="overflow:hidden; white-space:nowrap;">
				<div class="ww_pic"><a href=""><img class="iradius10" style="height: 130px; width: 175px; visibility: visible; " height="130" width="175" onclick="null" src="./assets/8.jpg"></img></a></div>
    			<div  style="height: 36px; width: 36px; visibility: visible; "></div>
				<div class="mainwl_wwjh_p" title="呼啦圈">呼啦圈</div><div class="mainwl_wwjh_p1"><a href="detail.jsp?goodId=10"><img src="./assets/index_jinru_button.gif" width="60" height="20" border="0" onclick=""></a></div>
			</div>
			
			<div class="ww_wwyl_div1" style="overflow:hidden; white-space:nowrap;">
				<div class="ww_pic"><a href=""><img class="iradius10" style="height: 130px; width: 175px; visibility: visible; " height="130" width="175" onclick="null" src="./assets/9.jpg"></img></a></div>
   				<div  style="height: 36px; width: 36px; visibility: visible; "></div>
				<div class="mainwl_wwjh_p" title="多拉A梦5本">多拉A梦5本</div><div class="mainwl_wwjh_p1"><a href="detail.jsp?goodId=11"><img src="./assets/index_jinru_button.gif" width="60" height="20" border="0" onclick=""></a></div>
			</div>
		
</li>
</ul>
</div>


<!--物物一览结束-->
</div>
<div id="footer">
<!--页脚-->
	<dl>
    	<dt><a href="">关于我们</a>　||　<a href="">联系我们</a></dt>
    </dl>
</div>

</body>
</html>