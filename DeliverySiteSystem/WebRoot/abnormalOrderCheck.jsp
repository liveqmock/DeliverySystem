<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <link href="images/skin.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" /><style type="text/css">
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
<body>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="17" valign="top" background="images/mail_leftbg.gif"><img src="images/left-top-right.gif" width="17" height="29" /></td>
    <td valign="top" background="images/content-bg.gif"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
      <tr>
        <td height="31"><div class="titlebt">异常管理</div></td>
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
        <td colspan="2" valign="top"><span class="left_bt">订单异常查询</span>
        <form name="form1" method="get" action="viewAbnormalOrderAction">
      <table width="665" height="90" border="1">
        <tr>
          <td height="25"><div align="center"><span class="style3">录入时间</span></div></td>
		  <td height="25">
                  <INPUT name="recordTime1" id=starttime 
                        style="WIDTH: 75px" onClick="fload('starttime')" size="10" > 
                  <span class="style3">至 
                  </span>                  <INPUT 
                        name="recordTime2" id=endtime 
                        style="WIDTH: 75px" onClick="fload('endtime')" size="10" > 
              </td>
           <td height="25"><div align="center"><span class="style3">登记编号</span></div></td>
          <td height="25"><input name="abnormalId" type="text" size="18"></td>
           
			<td><input type="reset" name="Submit2" value="重置条件" id="refresh"></td>
          </tr>
        <tr>
        <td width="90" height="25"><div align="center" class="style3">异常地点</div></td>
          <td><input type="text"  style= "width:75px;"  name="abnormalSite1">----&gt;<input type="text" style= "width:75px;" name="abnormalSite2"></td>
         
          <td width="90" height="25"><div align="center" class="style3">异常类别</div></td>
          <td><select name="abnormalType">
          	  <option></option>
              <option>货物损坏</option>
              <option>货物遗失</option>
              <option>订单损坏</option>
              <option>订单模糊</option>
            </select></td>
          <td width="68" rowspan="2"><input type="submit" name="Submit" value="开始检索" id="search"></td>
          </tr>
          
        <tr>
          <td height="25"><div align="center"><span class="depart">登记部门</span></div></td>
          <td height="25"><input name="depart" type="text" size="25"></td>
          <td width="86" height="25"><div align="center"><span class="style3">处理情况</span></div></td>
          <td ><select name="abnormalStatus">
          	  <option></option>
              <option>已处理</option>
              <option>未处理</option>
            </select></td>
          
          </tr>
      </table>
      </form>
      <br>
      <br>
        
 	<table style="width: 800px; height: 96px;border:5px">
                            <!-- Thead -->
                            <thead>
                                <tr style="background-color:#DDDDDD">
                                    <th style="width:100px;text-align:left">登记编号</th>
                                    <th style="width:100px;text-align:left">订单编号</th>
                                    <th style="width:100px;text-align:left">异常类别</th>
                                    <th style="width:100px;text-align:left">异常起点</th>
                                    <th style="width:100px;text-align:left">异常终点</th>
                                    <th style="width:100px;text-align:left">登记部门</th>
                                    <th style="width:100px;text-align:left">处理状态</th>
                                    <th style="width:100px;text-align:left">登记时间</th>
                            </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${abnormalList}" var="item">
                                    <tr>
                                        <td style="align:center">${item.abnormalId}</td>
                                        <td style="align:center">${item.orderNum}</td>
                                        <td style="align:center">${item.abnormalType}</td>
                                        <td style="align:center">${item.abnormalSite1}</td>
                                        <td style="align:center">${item.abnormalSite2}</td>
                                        <td style="align:center">${item.depart}</td>
                                        <td style="align:center">${item.abnormalStatus}</td>
                                        <td style="align:center">${item.recordTime}</td>
                                </tr>
                            </c:forEach>
                            </tbody>
            		</table>
	<br>    
        <tr>
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
