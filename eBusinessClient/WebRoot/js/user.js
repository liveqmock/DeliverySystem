//登陆函数 
function login(){
    var url = "loginAction";
    var username = $("#username").val(); //get user's name
    var password = $("#password").val(); //get user's password
    var json_user = {
        username : username,
        password : password
    }; //JSON object

    if (username == "")
    {
        document.getElementById("error").style.display= "block";
        document.getElementById("error").innerHTML="请输入用户名";
    }else if(password == "") {
        document.getElementById("error").style.display= "block";
        document.getElementById("error").innerHTML="请输入密码";
    }else{
        $.post( url ,json_user , callback , "json" );

        function callback(json){
            //解析json
            var json_object =eval("("+json+")");
            var suc = json_object.suc;
            var msg = json_object.msg;
            if(suc==0 ){
                document.getElementById("error").style.display= "block";
                document.getElementById("error").innerHTML=msg;
            }
            if(suc== 1){
                window.location.href="http://localhost:8080/eBusinessClient/index.jsp";
            }
        }
    }
}

//输入框得到焦点事件
//删去提示信息
function login_inputOnfocus(){
    document.getElementById("error").style.display= "none";
}

function regist_inputOnfocus(){
    document.getElementById("error").style.display= "none";
}

function regist(){

    var url = "registAction";
    var username = $("#regist_username").val(); //get user's name
    var email = $("#regist_email").val(); //get user's email
    var password = $("#regist_password").val(); //get user's password
    var json_user = {
        username : username,
        email:email,
        password : password
    }; //JSON object
    if (username == "")
    {
        document.getElementById("error").style.display= "block";
        document.getElementById("error").innerHTML="请输入用户名";
    }else if(email == "") {
        document.getElementById("error").style.display= "block";
        document.getElementById("error").innerHTML="请输入邮箱";
    }else if(password == "") {
        document.getElementById("error").style.display= "block";
        document.getElementById("error").innerHTML="请输入密码";
    }else if(!checkEmail(email)){
        document.getElementById("error").style.display= "block";
        document.getElementById("error").innerHTML="邮件格式不正确";
    }else{
        $.post( url ,json_user , callback , "json" );

        function callback(json){
            //解析json
            var json_object =eval("("+json+")");
            var suc = json_object.suc;
            var msg = json_object.msg;
            if(suc==0 ){
                document.getElementById("error").style.display= "block";
                document.getElementById("error").innerHTML=msg;
            }
            if(suc== 1){
                window.location.href="beginModifyUserAction";
            }
        }
    }
}

//失去焦点事件
//检测账号是否已经存在
function checkUername(){
    document.getElementById("loading").style.display= "block";
    var url = "checkUsernameAction";
    var username = $.trim($("#regist_username").val()); //get user's name
    var json_username = {
        username : username
    }; //JSON object
    if (username == "")
    {
        document.getElementById("loading").style.display= "none";
        document.getElementById("username_notice").style.display= "block";
        document.getElementById("username_notice").innerHTML="请输入用户名";
    }else{
        $.post( url ,json_username , callback , "json" );
        function callback(json){
            //解析json
            var json_object =eval("("+json+")");
            var suc = json_object.suc;
            var msg = json_object.msg;
            document.getElementById("loading").style.display= "none";
            if(suc==0 ){
                document.getElementById("username_notice").style.display= "block";
                document.getElementById("username_notice").innerHTML=msg;
            }
            if(suc== 1){
                document.getElementById("username_notice").style.display= "block";
                document.getElementById("username_notice").innerHTML=msg;
            }
        }
    }
}

//内容改变取消提示
function usernameChange(){
    document.getElementById("username_notice").style.display= "none";
}

//查看用户
function viewUser(user_id){
    var url = "viewUserAction";
    if(user_id!=""){
        var json_user = {
            user_id : user_id
        };
        $.post( url ,json_user , callback , "json" );
        function callback(json){
            //解析json
            var json_object =eval("("+json+")");
            var suc = json_object.suc;
            if(suc==0 ){
                alert("失败");
            }else{
                var title=json_object.username;
                document.getElementById("user_content").innerHTML="<div style='margin:20px;'>"
                +"<h3>姓名："+json_object.truename+"</h3>"
                +"<p>手机："+json_object.mobile+"</p>"
                +"<p>邮箱："+json_object.email+"</p>"
                +"<p>性别："+json_object.sex+"</p>"
                +"<p>用户组："+json_object.permission+"</p>"
                +"</div>"
                $('#user_content').skygqbox({
                    title:title,
                    shut:"关闭",
                    opacity:0.2
                });
            }
        }
    }
}

function   checkEmail(email)
{
    var   reEmail   =   /^([A-Za-z0-9])(\w)+@(\w)+(\.)(com|com\.cn|net|cn|net\.cn|org|biz|info|gov|gov\.cn|edu|edu\.cn)/;
    if   (!email.match(reEmail)&&email!= " ")
    { 
        return   false;
    }
    else   return   true;
}