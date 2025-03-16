<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>学子商城登陆页面</title>
    <link href="../css/header.css" rel="stylesheet"/>
    <link href="../css/footer.css" rel="stylesheet"/>
    <link href="../css/animate.css" rel="stylesheet"/>
    <link href="../css/login.css" rel="stylesheet"/>
</head>
<body>
<!-- 页面顶部-->
<header id="top">
    <div class="top">
        <img src="../images/header/logo.png" alt=""/>
        <span>欢迎登录</span>
    </div>
</header>
<div id="container">
    <div id="cover" class="rt">
        <form id="login-form" method="post" name="form1">
            <div class="txt">
                <p>
                    登录学子商城<span><a href="../user/showRegister.do">新用户注册</a></span>
                </p>
                <div class="text">
                    <input type="text" placeholder="请输入您的用户名" name="username" id="username" required>
                    <span><img src="../images/login/yhm.png"></span>
                </div>

                <div class="text">
                    <input type="password" id="password" name="password" placeholder="请输入您的密码" required minlength="6" maxlength="15">
                    <span><img src="../images/login/mm.png"></span>
                </div>
                <div class="chose">
                    <input type="checkbox" class="checkbox" id="ck_rmbUser" value="0">自动登录
                    <span>忘记密码？</span>
                </div>
                <input class="button_login" type="button" value="登录" id="bt-login"/>
            </div>
        </form>
    </div>
</div>
<!--错误提示-->
<div id="showResult"></div>
<!-- 品质保障，私人定制等-->
<div id="foot_box">
    <div class="icon1 lf">
        <img src="../images/footer/icon1.png" alt=""/>

        <h3>品质保障</h3>
    </div>
    <div class="icon2 lf">
        <img src="../images/footer/icon2.png" alt=""/>

        <h3>私人定制</h3>
    </div>
    <div class="icon3 lf">
        <img src="../images/footer/icon3.png" alt=""/>

        <h3>学员特供</h3>
    </div>
    <div class="icon4 lf">
        <img src="../images/footer/icon4.png" alt=""/>

        <h3>专属特权</h3>
    </div>
</div>
<!-- 页面底部-->
<div class="foot_bj">
    <div id="foot">
        <div class="lf">
            <p class="footer1"><img src="../images/footer/logo.png" alt="" class=" footLogo"/></p>
            <p class="footer2"><img src="../images/footer/footerFont.png"alt=""/></p>

        </div>
        <div class="foot_left lf" >
            <ul>
                <li><a href="#"><h3>买家帮助</h3></a></li>
                <li><a href="#">新手指南</a></li>
                <li><a href="#">服务保障</a></li>
                <li><a href="#">常见问题</a></li>
            </ul>
            <ul>
                <li><a href="#"><h3>商家帮助</h3></a></li>
                <li><a href="#">商家入驻</a></li>
                <li><a href="#">商家后台</a></li>
            </ul>
            <ul>
                <li><a href="#"><h3>关于我们</h3></a></li>
                <li><a href="#">关于达内</a></li>
                <li><a href="#">联系我们</a></li>
                <li>
                    <img src="../images/footer/wechat.png" alt=""/>
                    <img src="../images/footer/sinablog.png" alt=""/>
                </li>
            </ul>
        </div>
        <div class="service">
            <p>学子商城客户端</p>
            <img src="../images/footer/ios.png" class="lf">
            <img src="../images/footer/android.png" alt="" class="lf"/>
        </div>
        <div class="download">
            <img src="../images/footer/erweima.png">
        </div>
        <!-- 页面底部-备案号 #footer -->
        <div class="record">
            &copy;2017 达内集团有限公司 版权所有 京ICP证xxxxxxxxxxx
        </div>
    </div>
</div>
<script src="../js/jquery-3.1.1.min.js"></script>
<script src="../jquery/jquery.cookie.js"></script>
<script>
    $("#username").blur(function(){
        var data = $("#username").val();
        if (data == null || data == "") {
            $("#showResult").text("用户名不能为空！");
            $("#showResult").css("color","red");
            return false;
        }
        $.ajax({
            type:"POST",
            url:"../user/checkUsername.do",
            data:"username="+data,
            dataType: "json",
            beforeSend:function(XMLHttpRequest)
            {
                $("#showResult").text("正在查询");

            },
            success:function(result)
            {
                if(result.state === 0) {
                    $("#showResult").text("用户名已存在");
                    $("#showResult").css("color","green");
                } else {
                    $("#showResult").text("用户名不存在，请先注册");
                    $("#showResult").css("color","red");
                }
            },
            error:function()
            {
                $("#showResult").text("系统异常！");
                $("#showResult").css("color","red");
            }
        });
    });
</script>
<script>
    $('#bt-login').click(function(){
        // 获取用户名和密码
        var username = $("#username").val();
        var password = $("#password").val();

        // 表单验证
        if(username == "") {
            $("#showResult").text("用户名不能为空");
            $("#showResult").css("color","red");
            return;
        }
        if(password == "") {
            $("#showResult").text("密码不能为空");
            $("#showResult").css("color","red");
            return;
        }

        // 记住用户名密码
        if ($("#ck_rmbUser").prop("checked")) {
            $.cookie("rmbUser", "true", { expires: 7 }); // 存储一个带7天期限的cookie
            $.cookie("username", username, { expires: 7 });
            $.cookie("password", password, { expires: 7 });
        } else {
            $.cookie("rmbUser", "false", { expire: -1 });
            $.cookie("username", "", { expires: -1 });
            $.cookie("password", "", { expires: -1 });
        }

        // 发送登录请求
        $.ajax({
            type: "POST",
            url: "../user/login.do",
            data: {
                "username": username,
                "password": password
            },
            dataType: "json",
            success: function(result) {
                if(result.state === 1) {
                    // 登录成功
                    $("#showResult").text("登录成功，即将跳转...");
                    $("#showResult").css("color","green");

                    // 将用户信息保存到sessionStorage
                    sessionStorage.setItem("loginUser", JSON.stringify(result.data));

                    // 延迟跳转到首页
                    setTimeout(function() {
                        location.href = '../user/showIndex.do';
                    }, 1000);
                } else {
                    // 登录失败
                    $("#showResult").text(result.message);
                    $("#showResult").css("color","red");
                }
            },
            error: function() {
                $("#showResult").text("登录请求发送失败，请稍后再试！");
                $("#showResult").css("color","red");
            }
        });
    });
</script>
<script type="text/javascript">
    // 页面加载时，如果有记住密码的cookie，则自动填充
    $(document).ready(function () {
        if ($.cookie("rmbUser") == "true") {
            $("#ck_rmbUser").prop("checked", true);
            $("#username").val($.cookie("username"));
            $("#password").val($.cookie("password"));
        }
    });
</script>
</body>
</html>