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
<title>确认订单信息</title>
<link href="css/style.css" rel="stylesheet" type="text/css" media="screen" />
<link rel="stylesheet" type="text/css" href="css/chico-min-0.10.2.css" />
<script src="js/jquery.js" type="text/javascript"></script>
<script type="text/javascript">
function submitOrder()
{alert("ddd");
    var username='<%=nickname %>';
    var url = "addOrderAction";
    var data = {
        username : username
    }; //JSON object
    //post方法请求  
        $.post( url ,data , callback , "json" );
        function callback(json){
            //解析json
            var json_object =eval("("+json+")");
            var suc = json_object.suc;
            if(suc==0 ){
                alert("提交订单失败  ");
            }
            if(suc== 1){
                alert("亲，订单已经成功提交哦 ");
                window.location.href="step4.jsp";
            }
        }
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
					        <li><b></b><a>Step 2</a><s></s></li>
					        <li class="on"><b></b><a>Step 3</a><s></s></li>
					        <li><b></b><a>Step 4</a><s></s></li>
					  
					    </ul>
					</div>
					<div class="box"> 
						
						<form>
							<h3>确认订单信息:</h3>
							<div>
							    <div>
							      <fieldset class="form">
				                    <legend>订单基本信息</legend>
				                        <div id="username_notice" style="background-color:#EAC5C5; border-color:#BC6F6B;border-style:solid;border-width: 2px;padding: 2px;float: right;display: none;"></div>
				                        <div id="loading" style="float: right;display: none;"><img src="images/loading.gif" width="20px" alt="loading" /></div>
				                        <p>
				                            <label for="username" style="width:200px">收货人:</label>
				                            <label for="sendMethod" >${truename}</label>
				                        </p>
				                     
				                        <p>
				                            <label for="sendMethod" style="width:200px">送货方式:</label>
				                            <label for="sendMethod" >${sendmethod}</label>
				                        </p>
				                        <p>
				                            <label for="sendDay" style="width:200px">送货时间:</label>
				                            <label for="sendMethod" >${time}</label>
				                        </p>
				                         <p>
				                            <label for="address" style="width:200px">送货地址:</label>
				                            <label for="sendMethod" >${address}</label>
				                        </p>
				                        <p>
				                            <label for="fare" style="width:200px">预期运费:</label>
				                            <label for="sendMethod" >${fare}</label>
				                        </p>
				                        
				                    </fieldset>
				                    <fieldset class="form">
				                    <legend>物品信息</legend>
							          <ul>
							           
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
					                                <c:forEach items="${itemlist}" var="item">
					                                    <tr>
					                                        <td style="align:center">${item.good.name}</td>
					                                        <td style="align:center">${item.good.price}</td>
					                                        <td style="align:center">${item.amount}</td>
					                                </tr>
					                              </c:forEach>
					                            </tbody>
					                            <!-- /Tbody -->
					                       </table>
							            </li>
							            <li>
							                <strong>合计:${amt}元</strong>
							            </li>
							       </ul>
							       </fieldset>
							    </div>
								<div class="leftcolumn" style="height:320px;">
		                          <p class="ch-form-actions">
								    <input type="button" class="ch-btn ch-primary" value="提交订单" onclick="submitOrder()">
							      </p>
		                        </div>
		                    </div>
			
						</form>
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