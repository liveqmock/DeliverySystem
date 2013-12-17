<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language= "java" import= "com.bjtu.deliverysystem.model.User"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
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
function init()
{
    //初始化城市选择器 
    initProvince();
    
    //初始化用户信息 
    var username='<%=nickname %>';
    var url = "viewUserAction";
    var data = {
        username : username
    }; //JSON object
    //post方法请求 
    $.post( url ,data , callback , "json" );   
        function callback(json){
            //解析json
            var json_object =eval("("+json+")");
            var suc = json_object.suc;
            var username = json_object.username;
            var pwd = json_object.pwd;
            var email = json_object.email;
            var truename= json_object.truename;
            var telephone = json_object.telephone;
            var address = json_object.address;
            var province = json_object.province;
            var city = json_object.city;
            
            if(suc==0 ){
                alert("初始化用户信息失败！");
            }
            if(suc== 1){
               $("#regist_username").val(username);
               $("#regist_email").val(email);
               $("#regist_password").val(pwd);
               $("#address").val(address);
               $("#truename").val(truename);
               $("#address").val(address);
               $("#telephone").val(telephone);
               $("#selProvince").val(province);
               $("#selCity").val(city);
            }
        }
}

</script>  
    </head>
    <body onload="init()">
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
                    <legend>账号信息</legend>
                        <div id="username_notice" style="background-color:#EAC5C5; border-color:#BC6F6B;border-style:solid;border-width: 2px;padding: 2px;float: right;display: none;"></div>
                        <div id="loading" style="float: right;display: none;"><img src="images/loading.gif" width="20px" alt="loading" /></div>
                        <p>
                            <label for="user_name" style="width:200px"><s:text name="user_name"></s:text></label>
                            <input name="user_name" id="regist_username" type="text" onblur="checkUername()"value="" onfocus="regist_inputOnfocus()"/>
                        </p>
                         <p>
                            <label for="user_email" style="width:200px"><s:text name="mail"></s:text></label>
                            <input name="user_email" id="regist_email"  onfocus="regist_inputOnfocus()" />
                        </p>

                        <p>
                            <label for="user_password" style="width:200px"><s:text name="user_password"></s:text></label>
                            <input name="user_password" id="regist_password" type="password" onfocus="regist_inputOnfocus()" />
                        </p>
                    </fieldset>
        
                    <fieldset class="form">
                    <legend>基本信息</legend>
                        <p>
                            <label for="address" style="width:200px"><s:text name="address"></s:text></label>
                            <input name="address" id="address" type="text" onfocus="regist_inputOnfocus()"/>
                        </p>
                         <p>
                            <label for="truename" style="width:200px"><s:text name="truename"></s:text></label>
                            <input name="truename" id="truename" type="text" onfocus="regist_inputOnfocus()" />
                        </p>

                        <p>
                            <label for="telephone" style="width:200px"><s:text name="telephone"></s:text></label>
                            <input name="telephone" id="telephone" type="text" onfocus="regist_inputOnfocus()" />
                        </p>
                        <p>
                            <label for="province" style="width:200px"><s:text name="province"></s:text></label>
                            <select name="province" id="selProvince" onChange = "getCity(this.options[this.selectedIndex].value)">  
                            </select>  
                        
                            <label for="city" style="width:200px"><s:text name="city"></s:text></label>
                            <select name="city" id="selCity">  
					            <option>北京</option>  
					        </select>
                        </p>

                    </fieldset>
                    <input name="modifyBtn" id="modifyBtn" type="submit" value="保存修改" />
        </form >
        </div>
    </body>
</html>
