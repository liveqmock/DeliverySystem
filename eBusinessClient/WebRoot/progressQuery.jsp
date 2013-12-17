<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<title>选择交易方式</title>
<link href="css/style.css" rel="stylesheet" type="text/css" media="screen" />
<link rel="stylesheet" type="text/css" href="css/chico-min-0.10.2.css" />
<link rel="stylesheet" href="css/jquery.Jcrop.css" type="text/css" />
<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="js/jquery.Jcrop.js" type="text/javascript"></script>
<script type="text/javascript">
function next()
{
 window.location.href="getItemListToOrderAction.action?user=hme";
  
}
</script>
</head>
<body>
<div id="wrapper"> 
	<div id="header" class="container">
		<div id="logo">
			<h1><a href="index.html">eBuy购物</a></h1>
			<p>还在等什么，赶快行动吧</p>
		</div>
		<div id="menu">
			<ul>
				<li id="a_user" ><a href="userinfo.html" ><script>showUser()</script></a></li>
				<li id="a_login"><a href="login.html" onclick="logout()">登录</a></li>
				<li id="a_register"><a href="register.html" onclick="logout()">注册</a></li>
				<li id="a_logout"><a href="index.html" onclick="logout()">注销</a></li>
			</ul>
		</div>
	</div>
	<!-- end #header -->
	<div id="page" class="container">
		<div id="content">
					
					<div class="box"> 
						
						<form action="step3.html">
							<div>
							    <fieldset>
							    <legend>当前订单内容:</legend>
								<div class="leftcolumn" style="width:500px;">
		                          <ul>
							            <li style="font-size:large">订单号:</li>
							            <li>OO123458762</li>
							       </ul>
							        <ul>
							            <li style="font-size:large">送货地址:</li>
							            <li>北京市  海淀区  北京交通大学16号楼</li>
							       </ul>
							       <ul>
							            <li style="font-size:large">物品信息:</li>
							            <li>
							               <table style="width: 560px; height: 96px;border:5px">
					                            <!-- Thead -->
					                            <thead>
					                                <tr style="background-color:#DDDDDD">
					                                    <th style="width:50px;text-align:left">物品名称</th>
					                                    <th style="width:50px;text-align:left">价格</th>
					                                    <th style="width:50px;text-align:left">数量</th>                         
					                            </tr>
					                            </thead>
					                            <!-- /Thead -->
					                            <!-- Tbody -->
					                            <tbody>
					                                
					                                    <tr>
					                                        <td style="align:center">永久牌自行车</td>
					                                        <td style="align:center">200</td>
					                                        <td style="align:center">1</td>
					                                </tr>
					                             
					                            </tbody>
					                            <!-- /Tbody -->
					                       </table>
							            </li>
							            <li>
							                <strong>合计:200.0元</strong>
							            </li>
							       </ul>
		                        </div>
		                        </fieldset>
		                        <fieldset>
							    <legend>当前订单状态:</legend>
								<div class="leftcolumn" style="width:500px;">
		                          <ul>
		                               <li>
		                               <strong>货物已从仓库扫描打包完毕</strong>
		                               </li>
		                               <li>
		                               <strong>订单核查完毕</strong>
                                       </li>
                                       <li>
		                               <strong>货物已从广州货物集散中心装车</strong>
                                       </li>
                                       <li>
		                               <strong>已发往北京......</strong>
                                       </li>
		                             </ul>
		                        </div>
		                        </fieldset>
		                        <div>
								  <p></p>
								  <input type="submit" class="ch-btn ch-primary" value="确认">
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