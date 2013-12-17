<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><s:text name="title"></s:text></title>
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
                    <h2><s:text name="title1"></s:text></h2>
                </div>

                <div id="darkbannerwrap">
                </div>

                <form id="user_login" name="user_login" method="post" action="loginAction">
                    <fieldset class="form">

                        <p id="error"class="error"  style="display: none">
                        </p>

                        <p>
                            <label for="user_name"><s:text name="user_name"></s:text></label>
                            <input name="user_name" id="username" type="text" value="" onfocus="login_inputOnfocus()" />
                        </p>

                        <p>
                            <label for="user_password"><s:text name="user_password"></s:text></label>
                            <input name="user_password" id="password" type="password" onfocus="login_inputOnfocus()" />
                        </p>

                        <button type="button" class="positive" name="Submit" onclick="login()">

                            <img src="${pageContext.request.contextPath}/images/key.png" alt="Announcement"/><s:text name="login"></s:text>
                        </button>
                        <ul id="forgottenpassword">
                            <li class="boldtext">|</li>
                            <li><a href="beginRegistAction"><s:text name="register"></s:text></a></li>
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
