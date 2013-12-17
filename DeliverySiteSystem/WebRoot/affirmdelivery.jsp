<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="head.jsp"%>

<link href="images/skin.css" rel="stylesheet" type="text/css" />
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
					alert("请选择需要确认的交接单   ！");
					return;
				}
				if (window.confirm("确认收货吗？")) {
					with (document.getElementById("orderform")) {
						method = "post";
						action = "modifyTempAction";
						submit();
					}
				}
}
		
</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><style type="text/css">

</style>
<body>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="17" valign="top" background="images/mail_leftbg.gif"><img src="images/left-top-right.gif" width="17" height="29" /></td>
    <td valign="top" background="images/content-bg.gif"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
      <tr>
        <td height="31"><div class="titlebt">确认交接单</div></td>
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
        <td colspan="2" valign="top"><span class="left_bt">请输入交接单号:</span><input name="" type="text"><input name="" type="button" value="查询">
        <br>
        <form action="" method="get" id="orderform">
      <table width="653" border="1">
                            <!-- Thead -->
                            <thead>
                                <tr style="background-color:#DDDDDD">
                                     <th width="30"><input type="checkbox" id="ifAll" name="ifAll" onClick="checkAll()"/></th>
                                     <th width="80"><span class="style2">交接单编号</span></th>
						            <th width="80"><span class="style2">下站目的地</span></th>
						           
						            
                            </tr>
                            </thead>
                            <!-- /Thead -->
                            <!-- Tbody -->
                            <tbody>
                                <c:forEach items="${mylist}" var="item">
                                    <tr>
                                        <td style="align:center">
                                          <input name="selectFlag" type="checkbox" id="selectedIds"
							                   value="${item.id}" class="checkbox1">
                                        </td> 
                                        <td style="align:center">${item.number}</td>
                                        <td style="align:center">${item.goalSite}</td>
                                        
                      
                                        
                                </tr>
                            </c:forEach>
                            </tbody>
                            <!-- /Tbody -->
          </table>
          <br>
<span style="display:block; width:520px; text-align:center">
<input name="" type="button" value="确认收货" onclick="toDeliverry()"></span>
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


