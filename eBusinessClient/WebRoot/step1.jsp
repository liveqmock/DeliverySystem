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
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<title>购物车管理</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/chico-min-0.10.2.css" />
<link rel="stylesheet" href="css/jquery.Jcrop.css" type="text/css" />

<script src="js/jquery.js" type="text/javascript"></script>
<script type="text/javascript">
function next(){
    if(confirm("确定保存订单吗？"))
       window.location.href="step2.jsp";
	   //window.location.href="getItemListToOrderAction.action?user=hme";
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
		<div style="margin-left:750px">
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
							<li class="on"><b></b><a>Step 1</a><s></s></li>
					        <li><b></b><a>Step 2</a><s></s></li>
					        <li><b></b><a>Step 3</a><s></s></li>
					        <li><b></b><a>Step 4</a><s></s></li>
					       
					    </ul>
					</div>
					<div class="box">
						<h3>购物车管理</h3>
						<p><strong>请认真核对好订单信息哦，亲！</strong> </p> 
						<p style="font-size: smaller">核对好订单项后即可点击“结算”继续。</p> 
						<p style="font-size: smaller">购物车采取整单结算的机制。</p> 	
			<form action="#" name="orderform">
			<div align="center">
			    <hr width="100%" align="center" size=0>
				<table width="100%" border="0" cellspacing="0" cellpadding="0"
					height="35">
					
					<tr style="background-color:#DDDDDD">
						<td width="522" class="p1" height="14" nowrap>
							<img src="<%=path %>/images/mark_arrow_02.gif" width="14" height="14"/>
							&nbsp;&nbsp;&nbsp;
							<b>购物车&gt;&gt;查询列表</b>
						</td>
					</tr>
				</table>
			</div>
			
			<table style="width: 560px; height: 96px;border:5px">
                            <!-- Thead -->
                            <thead>
                                <tr style="background-color:#DDDDDD">
                                    <th style="width:50px;text-align:left">ID</th>
                                    <th style="width:50px;text-align:left">物品名称</th>
                                    <th style="width:50px;text-align:left">价格</th>
                                    <th style="width:50px;text-align:left">数量</th>
                                    <th style="width:50px;text-align:left">操作</th>
                            </tr>
                            </thead>
                            <!-- /Thead -->
                            <!-- Tbody -->
                            <tbody>
                                <c:forEach items="${itemlist}" var="item">
                                    <tr>
                                        <td style="align:center">${item.itemId}</td>
                                        <td style="align:center">${item.good.name}</td>
                                        <td style="align:center">${item.good.price}</td>
                                        <td style="align:center">${item.amount}</td>
                                        <td style="align:center">
		                                <script type="text/javascript">
		                                        document.write("<a href='deleteItemAction?itemId=${item.itemId}'>删除</a>");
		                                </script>
		                                </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                            <!-- /Tbody -->
            </table>
			<table width="100%" height="30" border="0" align="center"
				cellpadding="0" cellspacing="0" class="rd1">
				<tr>

					<td nowrap class="rd19">
						<div align="right">
							<input type="button" style="background:url('./images/next.PNG');width:85px" onclick="next()"/>
							
						</div>
					</td>
				</tr>
			</table>
			<p>
				&nbsp;
			</p>
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