<%--
  Created by IntelliJ IDEA.
  User: Universec
  Date: 2025/3/16
  Time: 15:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head lang="en">
  <meta charset="UTF-8">
  <title></title>
  <link href="../css/header.css" rel="Stylesheet"/>
  <link href="../css/footer.css" rel="Stylesheet"/>
  <link href="../css/animate.css" rel="Stylesheet"/>
  <style>
    #forward{
      width: 1000px;
      height: 500px;
      margin:0px auto;
      text-align: center;
      vertical-align: middle;
    }
    #forward img{
      position: relative;
      top: 193px;
    }
    #forward p {
      font-size: 20px;
      position: relative;
      top: 218px;
      font-weight: inherit;
      opacity: 0.3;
    }
  </style>
</head>
<body>
<!-- 页面顶部-->
<header id="top" class="fixed_nav">
  <div id="logo" class="lf">
    <img class="animated jello" src="../images/header/logo.png" alt="logo"/>
  </div>
  <div id="top_input" class="lf">
    <input id="input" type="text" placeholder="请输入您要搜索的内容"/>
    <a href="../user/showSearch.do" class="rt"><img id="search" src="../images/header/search.png" alt="搜索"/></a>
  </div>
  <div class="rt">
    <ul class="lf">
      <li><a href="../user/showFavorites.do" title="我的收藏"><img class="care" src="../images/header/care.png" alt=""/></a><b>|</b></li>
      <li><a href="../user/showOrders.do" title="我的订单"><img class="order" src="../images/header/order.png" alt=""/></a><b>|</b></li>
      <li><a href="../user/showCart.do" title="我的购物车"><img class="shopcar" src="../images/header/shop_car.png" alt=""/></a><b>|</b></li>
      <li><a href="../user/user/showHelp.do">帮助</a><b>|</b></li>
      <li><a href="../user/showLogin.do">登录</a></li>
    </ul>
  </div>
</header>
<!-- nav主导航-->
<nav id="nav">
  <ul>
    <li><a href="../user/showIndex.do" class="acti">首页</a></li>
    <li><a href="../user/showIndex.do#computer" >电脑办公</a></li>
    <li><a href="../user/showIndex.do#stationery" >办公文具</a></li>
  </ul>
</nav>
<!--敬请期待页面-->
<div id="forward">
  <img src="../images/lookforward/lookforward_img1.png" alt="" class="animated bounce"/>
  <p class="animated slideInDown">服务暂未上线 敬请期待!!</p>
</div>
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
      <p class="footer2"><img src="../images/footer/footerFont.png" alt=""/></p>
    </div>
    <div class="foot_left lf">
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
<script src="../js/index.js"></script>
</body>
</html>