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
<html>
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<title>选择支付方式</title>
<link href="css/style.css" rel="stylesheet" type="text/css" media="screen" />
<link rel="stylesheet" type="text/css" href="css/chico-min-0.10.2.css" />
<link rel="stylesheet" href="css/jquery.Jcrop.css" type="text/css" />
<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="js/jquery.Jcrop.js" type="text/javascript"></script>
<script type="text/javascript">
function next()
{
  alert("支付成功了哦，亲 ");
  window.location.href="viewOrderAction?username="+"<%=nickname%>";
}
</script>
<style>
.btn{   
display:inline-block;   
text-decoration:none;   
font-size:14px;   
font-weight:bold;   
color:#fff;   
color:rgba(255,255,255,1);   
padding:0.5em 1em;   
margin:0.5em;
}
</style>
</head>
<body>

<div id="wrapper"> 
	<div id="header" class="container">
		<div id="logo">
			<h1><a href="index.html">eBuy购物</a></h1>
			<p>还在等什么，赶快行动吧</p>
		</div>
		<div style="margin-left:750px" >
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
	<!-- end #header -->
	<div id="page" class="container">
		<div id="content">
					
					
					<div class="box">
						<ul class="flow-steps">
					        <li><b class="f"></b><a>Step1</a><s></s></li>
					        <li><b></b><a>Step 2</a><s></s></li>
					        <li><b></b><a>Step 3</a><s></s></li>
					        <li class="on"><b></b><a>Step 4</a><s></s></li>
					        
					    </ul>
					</div>
					<div class="box"> 
						
						<form action="step3.html">
							<h3>选择您的付款方式:</h3>
							<div class="ch-g1-2">
							  <div><h4>网银支付</h4></div>
							  <div style="width:500">
							  <div style="float:left;">
								<ul>
								  <li>
								    <input type="radio" name="channelToken" value="abc" checked="checked">
								    <img src="images/abc.PNG">
								  </li>
								  <li>
								    <input type="radio" name="channelToken"  value="boc">
								    <img src="images/boc.PNG">
								  </li>
								  <li>
								    <input type="radio" name="channelToken"  value="icbc">
								    <img src="images/icbc.PNG">
								  </li>
								</ul>
								</div>
								<div style="float:right">
								<ul>
								  <li>
								    <input type="radio" name="channelToken" value="gd">
								    <img src="images/gd.PNG">
								  </li>
								  <li>
								    <input type="radio" name="channelToken"  value="zs">
								    <img src="images/zs.PNG">
								  </li>
								  <li>
								    <input type="radio" name="channelToken"  value="zx">
								    <img src="images/zx.PNG">
								  </li>
								</ul>
								</div>
								<div style="clear: both;"></div>
								<div><h4>第三方支付工具</h4></div>
								<div style="float:left;">
								<ul>
								  <li>
								    <input type="radio" name="channelToken" value="zfb">
								    <img src="images/zfb.PNG">
								  </li>
								</ul>
								</div>
								
								<div style="float:left;">
								<ul>
								  <li>
								    <input type="radio" name="channelToken" value="cft">
								    <img src="images/cft.PNG">
								  </li>
								</ul>
								</div>
								<div style="clear: both;"></div>
								<div>
								  <p></p>
								  <input type="button"  style="background-image:url('images/next.PNG ');width:85px;height:30" onclick="next()"></input>
								</div>
		                    </div>
						  </div>
						</form>

							<div style="clear: both;"></div>
							<div style="clear: both;"></div>
							<div style="clear: both;"></div>

					</div>
				</div>		
		<!-- end #content -->
		<div id="sidebar">
					<img src="images/adsense.png" style="margin-left"></img>		</div>
		<!-- end #sidebar -->
		<div style="clear: both;"></div>
	</div>
	<!-- end #page -->
</div>
<div id="footer-content" class="container">
	<div id="footer-bg">
		<div id="column1">
			<h2>我们的使命</h2>
			<p>我们致力于服务广大客户，为客户提供一个安全可靠的电子商务交易平台。</p>
		</div>
		<div id="column2">
			<h2>我们的目标</h2>
			<p>eBuy购物平台将成为未来10年内最受客户喜爱的电子商务交易平台，引领国内电子商务发展的潮流。</p>
		</div>
		<div id="column3">
			<h2>联系我们</h2>
			<ul>
				<li><a href="#">twitter</a></li>
				<li><a href="#">微博</a></li>
				<li><a href="#">E-mail</a></li>
			</ul>
		</div>
	</div>
</div>
<div id="footer">
	<p>Copyright (c) 2011 babymaker.com. All rights reserved.</p>
</div>
</body>
</html>