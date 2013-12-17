<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<link href="images/skin.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #EEF2FB;
}
-->
</style>
<script type="text/javascript">
function checkAll() {
	for (var i = 0; i < document.getElementsByName("selectFlag").length; i++) {
		document.getElementsByName("selectFlag")[i].checked = document.getElementById("ifAll").checked;
	}
}

function toDeliverry()
{
   var flag = false;
				for (var i = 0; i < document.getElementsByName("selectFlag").length; i++) {
					if (document.getElementsByName("selectFlag")[i].checked) {
						flag = true;
					}		
				}
				if (!flag) {
					alert("请选择需要发货的订单  ！");
					return;
				}
				if (window.confirm("确认发货吗？")) {
					with (document.getElementById("orderform")) {
						method = "post";
						action = "modifyOrderAction";
						submit();
					}
				}
}
		
</script>
</head>
<body>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="17" valign="top" background="images/mail_leftbg.gif"><img src="images/left-top-right.gif" width="17" height="29" /></td>
    <td valign="top" background="images/content-bg.gif"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
      <tr>
        <td height="31"><div class="titlebt">订单信息</div></td>
      </tr>
    </table></td>
    <td width="16" valign="top" background="images/mail_rightbg.gif"><img src="images/nav-right-bg.gif" width="16" height="29" /></td>
  </tr>
  <tr>
    <td valign="middle" background="images/mail_leftbg.gif">&nbsp;</td>
    <td valign="top" bgcolor="#F7F8F9"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td colspan="2" valign="top">&nbsp;</td>
        <td>&nbsp;</td>
        <td valign="top">&nbsp;</td>
      </tr>
      <tr>
        <td colspan="2" valign="top"><span class="left_bt">请输入要查询的地址：</span>
        <input name="" type="text" value="">
        <input name="" type="button" value="查询">
        <br>
        <form action="" method="post" id="orderform">
        <table width="653" border="1">
                            <!-- Thead -->
                            <thead>
                                <tr style="background-color:#DDDDDD">
                                     <th width="50"><input type="checkbox" id="ifAll" name="ifAll" onClick="checkAll()"/></th>
                                     <th width="113"><span class="style2">订单编号</span></th>
						            <th width="111"><span class="style2">下单时间</span></th>
						            <th width="111"><span class="style2">送货方式</span></th>
						            <th width="111"><span class="style2">目的地址</span></th>
						            
                            </tr>
                            </thead>
                            <!-- /Thead -->
                            <!-- Tbody -->
                            <tbody>
                                <c:forEach items="${orderlist}" var="item">
                                    <tr>
                                        <td style="align:center">
                                          <input name="selectFlag" type="checkbox" id="selectedIds"
							                   value="${item.orderId}" class="checkbox1">
                                        </td> 
                                        <td style="align:center">${item.orderNum}</td>
                                        <td style="align:center">${item.orderTime}</td>
                                        
                                        <td style="align:center">
                                        <c:choose>
										         <c:when test="${item.sendMethod} == 1}">
										             EMS
										         </c:when>
										         <c:otherwise>
										                               普通快递
										         </c:otherwise>
										</c:choose>
                                       
                                        </td>
                                        <td style="align:center">${item.progress}</td>
                      
                                        
                                </tr>
                            </c:forEach>
                            </tbody>
                            <!-- /Tbody -->
          </table>
<br>
<span class="left_bt">请根据地址选择路线：</span>
<select name="">
        <option value="1">广东-湖南-河北-北京</option>
        <option value="2">广东-湖南-山东-北京</option>
        <option value="3">上海-浙江-福建</option>
        </select>
<br>
<span style="display:block; width:520px; text-align:center">
<input name="" type="button" value="确认发货" onclick="toDeliverry()"></span>
</form>  
        <br>        
        <tr>
        <td width="2%">&nbsp;</td>
        <td width="98%" class="left_txt"><img src="images/icon-mail2.gif" width="16" height="11"> 客户服务邮箱：123456789@qq.com<br>
              <img src="images/icon-phone.gif" width="17" height="14"> 官方网站：http://www.xxxx.cn</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
    </table></td>
    <td background="images/mail_rightbg.gif">&nbsp;</td>
  </tr>
  <tr>
    <td valign="bottom" background="images/mail_leftbg.gif"><img src="images/buttom_left2.gif" width="17" height="17" /></td>
    <td background="images/buttom_bgs.gif"><img src="images/buttom_bgs.gif" width="17" height="17"></td>
    <td valign="bottom" background="images/mail_rightbg.gif"><img src="images/buttom_right2.gif" width="16" height="17" /></td>
  </tr>
</table>
</body>
</html>


