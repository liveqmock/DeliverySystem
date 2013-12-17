<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language= "java" import= "com.bjtu.deliverysystem.model.User"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../head.jsp"%>
<% 
  String goodId = request.getParameter("goodId");
 
  String nickname=null;
  User u=(User)request.getSession().getAttribute("user"); 
  if(u!=null)
      nickname=u.getNickname(); 
  else
      response.sendRedirect("beginLoginAction"); 
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>个人账号信息</title>
        <link href="./css/hme.css" rel="stylesheet" type="text/css">
        <script type="text/javascript" src="js/province.js"></script>
<script language="javascript" type="text/javascript">

}

</script>  
    </head>
    <body>
	<div id="header">
	<!--头部-->
	    <div><h1>eBuy购物平台</h1></div> 
	</div>
	
	<div id="nav">
	<!--导航-->
		<div class="nav_menu">
	    </div>
	    
	</div>
        <div>
        <form id="user_login" name="user_login" method="post" action="modifyUserAction">
                    <fieldset class="form">
                    <legend>您的订单列表</legend>
                        <table style="width: 560px; height: 96px;border:5px">
                            <!-- Thead -->
                            <thead>
                                <tr style="background-color:#DDDDDD">
                                    <th style="width:200px;text-align:left">订单编号</th>
                                    <th style="width:200px;text-align:left">下单时间</th>
                                    <th style="width:200px;text-align:left">订单状态</th>
                                    <th style="width:200px;text-align:left">操作</th>
                            </tr>
                            </thead>
                            <!-- /Thead -->
                            <!-- Tbody -->
                            <tbody>
                                <c:forEach items="${orderlist}" var="item">
                                    <tr>
                                        <td style="align:center">${item.orderNum}</td>
                                        <td style="align:center">${item.orderTime}</td>
                                        <td style="align:center">${item.progress}</td>
                                        
                                        <td style="align:center">
		                                <script type="text/javascript">
		                                        document.write("<a href='viewProgressAction?orderId=${item.orderId}'>查询订单详情</a>");
		                                </script>
		                                </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                            <!-- /Tbody -->
                         </table>
                    </fieldset>
        
                    
                    <input name="Btn" id="Btn" type="button" value="返回主页" />
        </form >
        </div>
    </body>
</html>
