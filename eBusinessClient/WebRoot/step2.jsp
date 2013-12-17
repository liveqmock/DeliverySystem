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
<title>选择交易方式</title>
<link href="css/style.css" rel="stylesheet" type="text/css" media="screen" />
<link rel="stylesheet" type="text/css" href="css/chico-min-0.10.2.css" />
<link rel="stylesheet" href="css/jquery.Jcrop.css" type="text/css" />
<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="js/jquery.Jcrop.js" type="text/javascript"></script>
<script type="text/javascript">
function next()
{
 var sendmode=$("input[name='sendmode']:checked").val(); 
 var sendtime=$("input[name='sendtime']:checked").val(); 
 window.location.href="getItemListToOrderAction.action?username="+"<%=nickname%>"+"&sendmode="+sendmode+"&sendtime="+sendtime;
  
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
					        <li><b></b><a>Step1</a><s></s></li>
					        <li class="on"><b></b><a>Step 2</a><s></s></li>
					        <li><b></b><a>Step 3</a><s></s></li>
					        <li><b></b><a>Step 4</a><s></s></li>
					        
					    </ul>
					</div>
					<div class="box"> 
						
						<form action="step3.html">
							<div>
							    <h3 style="color:red">选择送货方式:</h3>
								<div class="leftcolumn" style="width:500px;">
		                             <ul>
		                               <li>
		                               <input type="radio" name="sendmode" checked="checked" value="1"/>EMS
		                               </li>
		                               <li>
		                               <input type="radio" name="sendmode" value="2">普通快递
                                       </li>
		                             </ul>
		                        </div>
		                        <h3 style="color:red">选择送货时间:</h3>
								<div class="leftcolumn" style="width:500px;">
		                             <ul>
		                               <li>
		                               <input type="radio"  name="sendtime" checked="checked" value="1">工作日
		                               </li>
		                               <li>
		                               <input type="radio" name="sendtime" value="2">工作日或双休日
                                       </li>
                                       
                                       <li>
		                               <input type="radio"  name="sendtime" value="3">都可以
                                       </li>
		                             </ul>
		                        </div>
		                        <div>
								  <p></p>
								  <input type="button"  style="background-image:url('images/next.PNG ');width:85px;height:30" onclick="next()"></input>
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