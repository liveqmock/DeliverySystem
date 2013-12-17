<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="head.jsp"%>
<html>
<head>
<link href="images/skin.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<style type="text/css"></style>
<script type="text/javascript">
function bind()
{
  var classNum=$("#classNum").val();
  var deliveryNum=$("#deliveryNum").val();
  var data = {
        classNum : classNum,
        deliveryNum : deliveryNum
    }; //JSON object
   var url="bindingAction";
    
  $.post( url ,data , callback , "json" );
  function callback(json){
            //解析json
            var json_object =eval("("+json+")");
            var suc = json_object.suc;
            if(suc==0 ){
                alert("交接单绑定失败 了亲 ");
            }
            if(suc== 1){
                alert("亲，成功绑定交接单了哦");
                window.location.href="viewClassListAction?frompage=2";
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
        <td colspan="2" valign="top"><span class="left_bt">交接单绑定</span>
        <br>
        <form name="form1" method="post" action="\"><table width="654" height="31" border="1">
        <tr>
          <td width="91" height="25"><div align="center"><span class="style2">班次编号</span></div></td>
          <td width="116">
            <div align="center">
              <input type="text" id="classNum"/>
          </div></td>
          <td width="91"><div align="center"><span class="style2">交接单编号</span></div></td>
          <td width="116"><div align="center">
              <input type="text" id="deliveryNum"/>
          </div></td>
          <td width="100"><div align="center">
              <input type="reset" name="Submit4" value="重置">
            </div>
              <div align="center"> </div></td>
          <td width="100">
            <div align="center">
              <input type="button" name="Submit5" value="绑定"  onclick="bind()">
          </div></td>
        </tr>
      </table></form>
		<form name="form2" >
        <table width="653" border="1">
                            <!-- Thead -->
                            <thead>
                                <tr style="background-color:#DDDDDD">
                                     
                                     <th width="113"><span class="style2">交接单编号</span></th>
						            <th width="111"><span class="style2">班次编号</span></th>
						           
						            
                            </tr>
                            </thead>
                            <!-- /Thead -->
                            <!-- Tbody -->
                            <tbody>
                                <c:forEach items="${classlist}" var="item">
                                    <tr>
                                        
                                        <td style="align:center">${item.deliveryorderNum}</td>
                                        <td style="align:center">${item.classNum}</td>
                              
                      
                                        
                                </tr>
                            </c:forEach>
                            </tbody>
                            <!-- /Tbody -->
        </table>
      </form></TD>
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
