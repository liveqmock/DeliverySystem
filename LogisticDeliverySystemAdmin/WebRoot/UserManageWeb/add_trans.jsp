<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<link href="../images/skin.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html" />
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #EEF2FB;
}
-->
#td1{
	border-bottom: solid 1px #003A75;
	font:"Comic Sans MS", cursive;
	color:#003A75; 
	font-size:14px;
}
#td2{
	font: "Comic Sans MS", cursive;
	font-size:12px;
}
#routeTable{
border-collapse: collapse;
border-color:#CCC;
}
</style>
<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript" src="../js/operation.js"></script>
<script type="text/javascript">
$.post('getSitesAction',function(data){
	$("#from option").remove();
	$("#to option").remove();
	$("#from").append("<option selected value=''>--</option>");
	$("#to").append("<option selected value=''>--</option>");
	$.each(data.des,function(i,item){
		$("#from").append("<option value='"+item+"'>"+item+"</option>");
		$("#to").append("<option value='"+item+"'>"+item+"</option>");
	});
},'json');
</script>
<body>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="17" valign="top" background="../images/mail_leftbg.gif"><img src="../images/left-top-right.gif" width="17" height="29" /></td>
    <td valign="top" background="../images/content-bg.gif"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
      <tr>
        <td height="31"><div class="titlebt">欢迎界面</div></td>
      </tr>
    </table></td>
    <td width="16" valign="top" background="../images/mail_rightbg.gif"><img src="../images/nav-right-bg.gif" width="16" height="29" /></td>
  </tr>
  <tr>
    <td valign="middle" background="../images/mail_leftbg.gif">&nbsp;</td>
    <td valign="top" bgcolor="#F7F8F9"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td colspan="2" valign="top">&nbsp;</td>
        <td>&nbsp;</td>
        <td valign="top">&nbsp;</td>
      </tr>
      <tr>
        <td colspan="2" valign="top"><span class="left_bt">感谢您使用 QuickSend 网站管理系统程序</span><br>
              <br>
            <span class="left_txt">&nbsp;<img src="../images/ts.gif" width="16" height="16"> 提示：<br>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;您可以在此</span><span class="left_ts">添加运输线路</span><span class="left_txt">。<br>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
</span></td>
        <td width="7%">&nbsp;</td>
        <td width="40%" valign="top"><table width="100%" height="144" border="0" cellpadding="0" cellspacing="0" class="line_table">
          <tr>
            <td width="7%" height="27" background="../images/news-title-bg.gif"><img src="images/news-title-bg.gif" width="2" height="27"></td>
            <td width="93%" background="../images/news-title-bg.gif" class="left_bt2">最新动态</td>
          </tr>
          <tr>
            <td height="102" valign="top">&nbsp;</td>
            <td height="102" valign="top"></td>
          </tr>
          <tr>
            <td height="5" colspan="2">&nbsp;</td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td colspan="2">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td colspan="2" valign="top"><!--JavaScript部分-->
            &nbsp;&nbsp;<label style="font-size:14px"">新增运输线路：</label>
              <table width="577" border="0">
                <tr>
                  <td width="100">起始配送点</td>
                  <td width="100"><select id="from" name="select">
                      
                  </select></td>
                  <td width="100">终止配送点</td>
                  <td width="100"><select id="to" name="select2">
                      
                  </select></td>
                  <td width="100">
                  <button onclick="genRoutes();">生成推荐线路</button></td>
                </tr>
              </table>
              <table id="routeTable">
                <br>
                <tr>
                  <td id="td1" width="46">&nbsp;</th>
                  <td id="td1" aligh="center" width="406">路线</th>
                </tr>
                
                
              </table>
              <p>&nbsp;</p>
            
            <p>
              <SCRIPT language=javascript>
function secBoard(n)
{
for(i=0;i<secTable.cells.length;i++)
secTable.cells[i].className="sec1";
secTable.cells[n].className="sec2";
for(i=0;i<mainTable.tBodies.length;i++)
mainTable.tBodies[i].style.display="none";
mainTable.tBodies[n].style.display="block";
}
              </SCRIPT>
              <!--HTML部分-->
            </p>
          </td>
        <td>&nbsp;</td>
        <td valign="top"><table width="100%" height="144" border="0" cellpadding="0" cellspacing="0" class="line_table">
          <tr>
            <td width="7%" height="27" background="../images/news-title-bg.gif"><img src="../images/news-title-bg.gif" width="2" height="27"></td>
            <td width="93%" background="../images/news-title-bg.gif" class="left_bt2">关于我们</td>
          </tr>
          <tr>
            <td height="102" valign="top">&nbsp;</td>
            <td height="102" valign="top"><label></label>
              <label>
              <UL>
  			<MARQUEE style="WIDTH: 410px; HEIGHT: 130px" onmouseover=this.stop(); onmouseout=this.start(); direction=up scrollAmount=2>
  				<LI><a style="font-size:12px"target=_blank>专业的地区级商家门户建站首选方案！ </a>
  				<LI><a style="font-size:12px"target=_blank>全站一号通，一次注册，终身使用，一个帐号，全站通用！ </a>
  				<LI><a style="font-size:12px"target=_blank>分类信息、商家展示（百业联盟）、网上商城、网上名片（网上黄页）、广告张贴、市场联盟、市场资讯七大栏目完美整合。 </a>
  				<LI><a style="font-size:12px"target=_blank>界面设计精美，后台功能强大。傻瓜式后台操作，无需专业的网站制作知识，只要会打字，就会管理维护网站。 </a>
 			</UL>
              </label></td>
          </tr>
          <tr>
            <td height="5" colspan="2">&nbsp;</td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="40" colspan="4"><table width="100%" height="1" border="0" cellpadding="0" cellspacing="0" bgcolor="#CCCCCC">
          <tr>
            <td></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td width="2%">&nbsp;</td>
        <td width="51%" class="left_txt"><img src="../images/icon-mail2.gif" width="16" height="11"> 客户服务邮箱：215288671@qq.com<br>
              <img src="../images/icon-phone.gif" width="17" height="14"> 官方网站：http://www.865171.cn</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
    </table></td>
    <td background="../images/mail_rightbg.gif">&nbsp;</td>
  </tr>
  <tr>
    <td valign="bottom" background="../images/mail_leftbg.gif"><img src="../images/buttom_left2.gif" width="17" height="17" /></td>
    <td background="../images/buttom_bgs.gif"><img src="../images/buttom_bgs.gif" width="17" height="17"></td>
    <td valign="bottom" background="../images/mail_rightbg.gif"><img src="../images/buttom_right2.gif" width="16" height="17" /></td>
  </tr>
</table>
</body>
