<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<link href="images/skin.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
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
#routesTable{
border-collapse: collapse;
border-color:#CCC;
}
</style>
<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript" src="../js/operation.js"></script>
<script type="text/javascript">
$(function(){
	$("#selectAll").click(function(){
		$(":checkbox").attr("checked",true);
	});
	$("#cancleAll").click(function(){
		$(":checkbox").attr("checked",false);
	});
	$("#addOne").click(function(){
		location.href="add_trans.jsp";
	});
});
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
        <td height="31"><div class="titlebt">��ӭ����</div></td>
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
        <td colspan="2" valign="top"><span class="left_bt">��л��ʹ�� QuickSend ��վ����ϵͳ����</span><br>
              <br>
            <span class="left_txt">&nbsp;<img src="../images/ts.gif" width="16" height="16"> ��ʾ��<br>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�������ڴ�</span><span class="left_ts">�鿴������·</span><span class="left_txt">��<br>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
</span></td>
        <td width="7%">&nbsp;</td>
        <td width="40%" valign="top"><table width="100%" height="144" border="0" cellpadding="0" cellspacing="0" class="line_table">
          <tr>
            <td width="7%" height="27" background="../images/news-title-bg.gif"><img src="../images/news-title-bg.gif" width="2" height="27"></td>
            <td width="93%" background="../images/news-title-bg.gif" class="left_bt2">���¶�̬</td>
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
        <td colspan="2" valign="top"><!--JavaScript����-->
            <div id="mainform">
              	<label style="font-size:14px"">�鿴������·:</label>
                <table width="400px" border="0" style="font-size:12px">
                  <tr>
                    <td width="25%" style="text-align:center">��ʼ���͵�</td>
                    <td width="25%"><select id="from" name="select3" style="width:100%">
                        <option selected value="">--</option>
                    </select></td>
                    <td width="25%" style="text-align:center">��ֹ���͵�</td>
                    <td width="25%"><select id="to" name="select4" style="width:100%">
                        <option selected value="">--</option>
                    </select></td>
                    <td width="52"><input type="button" name="Submit2" value="��ѯ" onclick="checkRoutes()" style="width:100%;"></td>
                  </tr>
                </table>
                <br>
                <table id="routesTable" border="0px">
                <tr>
                    <td colspan="11"><div align="left">
                        <input type="button" id="selectAll" name="Submit8" value="ȫѡ" >
                        <input type="button" id="cancleAll" name="Submit9" value="ȫ��ѡ">
                        <input type="button" id="addOne" name="Submit" value="����">
                        <input type="button" name="Submit7" value="ɾ��" onclick="cancleSelected()">
                    </div></td>
                  </tr>
                  <tr>
                    <td id="td1" width="29">&nbsp;</td>
                    <td id="td1" width="62">���</td>
                    <td id="td1" width="106">��ʼ���͵�</td>
                    <td id="td1" width="109">��ֹ���͵�</td>
                    <td id="td1" width="258">·��</td>
                  </tr>
                  
                </table>
              
              <BR>
            </div>
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
              <!--HTML����-->
            </p>
          </td>
        <td>&nbsp;</td>
        <td valign="top"><table width="100%" height="144" border="0" cellpadding="0" cellspacing="0" class="line_table">
          <tr>
            <td width="7%" height="27" background="../images/news-title-bg.gif"><img src="../images/news-title-bg.gif" width="2" height="27"></td>
            <td width="93%" background="../images/news-title-bg.gif" class="left_bt2">��������</td>
          </tr>
          <tr>
            <td height="102" valign="top">&nbsp;</td>
            <td height="102" valign="top"><label></label>
              <label>
              <UL>
  			<MARQUEE style="WIDTH: 410px; HEIGHT: 130px" onmouseover=this.stop(); onmouseout=this.start(); direction=up scrollAmount=2>
  				<LI><a style="font-size:12px"target=_blank>רҵ�ĵ������̼��Ż���վ��ѡ������ </a>
  				<LI><a style="font-size:12px"target=_blank>ȫվһ��ͨ��һ��ע�ᣬ����ʹ�ã�һ���ʺţ�ȫվͨ�ã� </a>
  				<LI><a style="font-size:12px"target=_blank>������Ϣ���̼�չʾ����ҵ���ˣ��������̳ǡ�������Ƭ�����ϻ�ҳ��������������г����ˡ��г���Ѷ�ߴ���Ŀ�������ϡ� </a>
  				<LI><a style="font-size:12px"target=_blank>������ƾ�������̨����ǿ��ɵ��ʽ��̨����������רҵ����վ����֪ʶ��ֻҪ����֣��ͻ����ά����վ�� </a>
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
        <td width="51%" class="left_txt"><img src="../images/icon-mail2.gif" width="16" height="11"> �ͻ��������䣺215288671@qq.com<br>
              <img src="../images/icon-phone.gif" width="17" height="14"> �ٷ���վ��http://www.865171.cn</td>
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
