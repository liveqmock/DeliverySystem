<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="head.jsp"%>

<html>
<head>
<link href="images/skin.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="js/province.js"></script>
<script type="text/javascript">
function createDeliveryOrder()
{
  var deliveryNum=$("#deliveryNum").val();
  var deliveryTime=$("#deliveryTime").val();
  var startprovince=form1.province.options[form1.province.selectedIndex].text; 
  var endprovince=form1.province1.options[form1.province1.selectedIndex].text;
  var data = {
        deliveryNum : deliveryNum,
        deliveryTime : deliveryTime,
        startprovince : startprovince,
        endprovince : endprovince
    }; //JSON object
   var url="addDeliveryOrderAction";
    
  $.post( url ,data , callback , "json" );
  function callback(json){
            //解析json
            var json_object =eval("("+json+")");
            var suc = json_object.suc;
            if(suc==0 ){
                alert("生成交接单失败 了亲 ");
            }
            if(suc== 1){
                alert("亲，成功生成交接单了哦");
                window.location.href="bindingdelivery.jsp";
            }
        }
  
}
</script>

</head>
<body onload="initProvince()">
<form name="form1">
<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="17" valign="top" background="images/mail_leftbg.gif"><img src="images/left-top-right.gif" width="17" height="29" /></td>
    <td valign="top" background="images/content-bg.gif"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
      <tr>
        <td height="31"><div class="titlebt">交接单信息</div></td>
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
       <td>

<fieldset class="form">
<legend><strong>配送交接单信息</strong></legend>     
<table width="500" border="1">
        
  <tr>
    <td>交接单编号</td>
    <td><input id="deliveryNum" type="text" value="0001"></td>
  </tr>
  <tr>
    <td>交接单时间</td>
    <td><input id="deliveryTime" type="text" value="2012-6-28 10:12:34"></td>
  </tr>
  <tr>
    <td>起始配送点</td>
    <td>
           <select name="province" id="selProvince" >  
           </select>
    </td>
  </tr>
  <tr>
    <td>目标配送点</td>
    <td>
          <select name="province1" id="selProvince1" >  
           </select>
    </td>
  </tr>
</table>
</fieldset>
<fieldset class="form">
<legend><strong>绑定订单列表</strong></legend>  
<table width="653" border="1">
                            <!-- Thead -->
                            <thead>
                                <tr style="background-color:#DDDDDD">
                                     
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
  </fieldset>
   <span style="display:block; width:520px; text-align:center"><input name="" type="button" value="生成交接单" onclick="createDeliveryOrder()"></span>
     
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
</form>
</body>
</html>
