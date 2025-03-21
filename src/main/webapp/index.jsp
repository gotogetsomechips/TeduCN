<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>学子商城登陆页面</title>
    <link href="css/header.css" rel="stylesheet"/>
    <link href="css/footer.css" rel="stylesheet"/>
    <link href="css/animate.css" rel="stylesheet"/>
    <link href="css/login.css" rel="stylesheet"/>
    <style>
        #cover ul{
            padding:15px;
        }
        #cover a{
            color: #fff;
            line-height: 1.8em;
            font-size:18px;
        }
    </style>
</head>
<body>
<!-- 页面顶部-->
<header id="top">
    <div class="top">
        <img src="images/header/logo.png" alt=""/>
        <span>页面索引</span>
    </div>
</header>
<div id="container">
    <div id="cover" class="rt">
        <ul>
            <li><a href="user/showIndex.do">首页</a></li>
            <li><a href="user/showLogin.do">登录页</a></li>
            <li><a href="user/showRegister.do">注册</a></li>
            <li><a href="user/show404.do">404错误</a></li>
            <li><a href="user/show500.do">500错误</a></li>
<%--            <li><a href="pages.zip">下载全部资料 pages.zip</a></li>--%>
        </ul>
    </div>
</div>
<!-- 页面底部-->
<div class="foot_bj">
    <div id="foot">
        <div class="lf">
            <p class="footer1"><img src="images/footer/logo.png" alt="" class=" footLogo"/></p>
            <p class="footer2"><img src="images/footer/footerFont.png"alt=""/></p>

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
                    <img src="images/footer/wechat.png" alt=""/>
                    <img src="images/footer/sinablog.png" alt=""/>
                </li>
            </ul>
        </div>
        <div class="service">
            <p>学子商城客户端</p>
            <img src="images/footer/ios.png" class="lf">
            <img src="images/footer/android.png" alt="" class="lf"/>
        </div>
        <div class="download">
            <img src="images/footer/erweima.png">
        </div>
        <!-- 页面底部-备案号 #footer -->
        <div class="record">
            &copy;2017 达内集团有限公司 版权所有 京ICP证xxxxxxxxxxx
        </div>
    </div>
</div>
<script src="js/jquery-3.1.1.min.js"></script>
<script src="jquery/jquery.cookie.js"></script>

</body>
</html>
