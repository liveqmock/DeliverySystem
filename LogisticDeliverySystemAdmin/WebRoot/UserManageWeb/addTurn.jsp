<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<meta http-equiv="Content-Type" content="text/html" />
<link href="../images/skin.css" rel="stylesheet" type="text/css" />
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
#table1{
border-collapse: collapse;
border-color:#CCC;
}
</style>
<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript" src="../js/operation.js"></script>
<script type="text/javascript">
	$.post('getAllCarsAction',function(data){
		//alert(data.cars[0].carNum);
		$.each(data.cars,function(i,item){
			$("#carNum").append("<option>"+item.carNum+"</option>");
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
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;您可以在此</span><span class="left_ts">添加班次</span><span class="left_txt">。<br>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
</span></td>
        <td width="7%">&nbsp;</td>
        <td width="40%" valign="top"><table width="100%" height="144" border="0" cellpadding="0" cellspacing="0" class="line_table">
          <tr>
            <td width="1%" height="27" background="images/news-title-bg.gif"><img src="images/news-title-bg.gif" width="2" height="27"></td>
            <td width="99%" background="images/news-title-bg.gif" class="left_bt2">最新动态</td>
          </tr>
          <tr>
            <td height="102" colspan="2"><ul>
                 <li><a href="#">上海市部分快递企业代表学习《邮政法》（修订草案）<img src="images/new.gif" border="0"/></a></li>
                 <li><a href="#">两岸&ldquo;大三通&rdquo;将迎来快递无限商机<img src="images/new.gif" border="0"/></a></li>
                 <li><a href="#">上海邮政业迎世博600天行动动员大会召开</a></li>
                 <li><a href="#">国家邮政局启动《快递服务》标准达标工作</a></li>
                 <li><a href="#">快递业等级评定制度将出台</a></li>
                 <li><a href="#">上半年我国主要城市网购市场规模达162亿元</a></li>
                 <li><a href="#">奥运圣火上海传递圆满结束 结束现场进行募捐赈灾</a></li>
            </ul></td>
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
              <label for="turnNum">班次编号：</label>
              <input id="turnNum" name="turnNum" style="margin-top:10px"/>
              <br/>
              <label for="carNum" style="width:100px">车辆编号：</label>
              <select id="carNum" name="carNum" style="margin-top:10px">
              </select>
              <br/> 
              <label for="startTime">出发时间：</label>
              <input id="startTime" name="startTime" style="margin-top:10px"/>
              <br/>
			  <label for="arriveTime">到达时间：</label>
              <input id="arriveTime" name="arriveTime" style="margin-top:10px"/>
              <br/>
              <button class="Submit" style="margin-top:10px" onclick="addTurn()">保存</button>
            </p>
          </td>
        <td>&nbsp;</td>
        <td valign="top"><table width="100%" height="144" border="0" cellpadding="0" cellspacing="0" class="line_table">
          <tr>
            <td width="7%" height="27" background="images/news-title-bg.gif"><img src="images/news-title-bg.gif" width="2" height="27"></td>
            <td width="93%" background="images/news-title-bg.gif" class="left_bt2">关于我们</td>
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
