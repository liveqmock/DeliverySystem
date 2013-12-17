<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
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
        <td colspan="2" valign="top"><span class="left_bt">订单异常登记</span>
        <br>
        <form action="addAbnormalOrderAction" method="post" name="form1">
        <table width="653"  border="1">
        <tr>
            <td width="101" height="25"><div align="center" class="style3"><span class="style3">登记编号</span></div></td>
            <td colspan="2"><input type="text" name="abnormalId"></td>
            <td width="115" height="25"><div align="center" class="style3">订单编号</div></td>
            <td colspan="2"><input type="text" name="orderNum"></td>
            </tr>
          <tr>
            <td width="101" height="25"><div align="center"><span class="style3">处理情况</span></div></td>
            <td colspan="2"><select name="abnormalStatus">
              <option>已处理</option>
              <option>未处理</option>
            </select></td>
            <td  width="115"><div align="center" class="style3">出现异常时间</div></td>
            <td colspan="2"><input type="text" name="abnormalTime"></td>
            </tr>
          <tr>
            <td width="101" height="25"><div align="center"><span class="style3">异常类别</span></div></td>
            <td colspan="2"><select name="abnormalType">
              <option>货物损坏</option>
              <option>货物遗失</option>
              <option>订单损坏</option>
              <option>订单模糊</option>
            </select></td>
            <td  width="115" height="25"><div align="center"><span class="style3">出现异常地点</span></div></td>
             <td colspan="2"><input type="text"  style= "width:60px;"  name="abnormalSite1">----&gt;<input type="text" style= "width:60px;" name="abnormalSite2"></td>
            </tr>
          <tr>
            <td height="172"><div align="center"><span class="style3">处理建议</span></div></td>
            <td colspan="5"><textarea name="suggest" cols="60" rows="10"></textarea></td>
            </tr>
          <tr>
            <td  width="101" height="25"><div align="center"><span class="style3">登记部门</span></div></td>
            <td width="99" height="25"><input name="depart" type="text" size="10"></td>
            <td width="101" height="25"><div align="center"><span class="style3">登记人</span></div></td>
            <td height="27"><input name="principal" type="text" size="10"></td>
            <td width="80" height="25"><div align="center"><span class="style3">登记时间</span></div></td>
            <td width="117" height="25"><input name="recordTime" type="text" size="10"></td>
          </tr>
        </table>
        <p>
          <input type="button" name="Submit" value="暂存">
          <input type="submit" name="Submit2" value="提交">
</p>
      
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
