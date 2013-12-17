<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <title>用户注册</title>
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/user.js"></script>
        <link href="${pageContext.request.contextPath}/css/login.css" type="text/css" media="screen" rel="stylesheet" />
    </head>

    <body id="login">
        <div id="wrappertop">
        </div>
        <div id="wrapper">
            <div id="content">
                <div id="header">
                    <h1><strong style="font-size:25px">eBuy购物平台</strong></h1>
                </div>

                <div id="darkbanner" class="banner320">
                    <h2><s:text name="register"></s:text></h2>
                </div>

                <div id="darkbannerwrap">
                </div>

                <form id="user_login" name="user_login" method="post" action="loginAction">
                    <fieldset class="form">

                        <p id="error"class="error" style="display: none">
                        </p>

                        <p id="error1"class="error" style="display: none">
                            <s:text name="enteruser"></s:text>
                        </p>
                        <p id="error2" class="error" style="display: none">
                            <s:text name="enteremail"></s:text>
                        </p>
                        <p id="error3" class="error" style="display: none">
                            <s:text name="enterpassword"></s:text>
                        </p>

                        <p id="error4" class="error" style="display: none">
                            <s:text name="error"></s:text>
                        </p>

                        <div id="username_notice" style="background-color:#EAC5C5; border-color:#BC6F6B;border-style:solid;border-width: 2px;padding: 2px;float: right;display: none;"></div>
                        <div id="loading" style="float: right;display: none;"><img src="${pageContext.request.contextPath}/images/loading.gif" width="20px" alt="loading" /></div>
                        <p>
                            <label for="user_name"><s:text name="user_name"></s:text></label>
                            <input name="user_name" id="regist_username" type="text" onblur="checkUername()"value="" onfocus="regist_inputOnfocus()"/>

                        </p>



                        <p>
                            <label for="user_email"><s:text name="mail"></s:text></label>
                            <input name="user_email" id="regist_email"  onfocus="regist_inputOnfocus()" />
                        </p>

                        <p>
                            <label for="user_password"><s:text name="user_password"></s:text></label>
                            <input name="user_password" id="regist_password" type="password" onfocus="regist_inputOnfocus()" />
                        </p>

                        <button type="button" class="positive" name="Submit" onclick="regist()">

                            <img src="${pageContext.request.contextPath}/images/key.png" alt="Announcement"/><s:text name="register"></s:text>
                        </button>
                        <ul id="forgottenpassword">
                            <li class="boldtext">|</li>
                            <li><a href="beginLoginAction"><s:text name="login"></s:text></a></li>
                        </ul>
                    </fieldset>
                </form >

            </div>
        </div>

        <div id="wrapperbottom_branding">
            <div id="wrapperbottom_branding_text">By <a href="" style='text-decoration:none'>CoolCode小组</a> .BJTU</div>
        </div>
    </body>
</html>
