<%--
  Created by IntelliJ IDEA.
  User: Universec
  Date: 2025/3/16
  Time: 14:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head lang="cn">
  <meta charset="UTF-8">
  <title>学子商城首页</title>
  <link href="../css/header.css" rel="stylesheet"/>
  <link href="../css/footer.css" rel="stylesheet"/>
  <link href="../css/animate.css" rel="stylesheet"/>
  <link href="../css/index.css" rel="stylesheet"/>
  <link href="../css/slide.css" rel="stylesheet"/>
  <style>
    /* 用户信息样式 */
    .user_info {
      position: relative;
      display: inline-block;
    }

    /* 用户名显示样式 */
    #username_show {
      color: #0aa1ed;
      cursor: pointer;
    }

    /* 下拉菜单容器 */
    .dropdown_menu {
      position: absolute;
      top: 20px;
      right: 0;
      background-color: white;
      min-width: 100px;
      box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
      z-index: 999;
      border-radius: 3px;
      padding: 5px 0;
    }

    /* 下拉菜单项目 */
    .dropdown_menu a {
      color: #333;
      padding: 8px 10px;
      text-decoration: none;
      display: block;
      text-align: center;
    }

    /* 鼠标悬停效果 */
    .dropdown_menu a:hover {
      background-color: #f1f1f1;
      color: #0aa1ed;
    }
  </style>
</head>
<script src="../js/jquery-3.1.1.min.js"></script>
<script src="../js/index.js"></script>
<script src="../js/slide.js"></script>
<body>
<jsp:include page="header.jsp" />
<!-- banner部分-->
<div class="ck-slide">
  <ul class="ck-slide-wrapper">
    <li>
      <a href="showProduct_Details.do"><img src="../images/itemCat/itemCat_banner1.png" alt=""></a>
    </li>
    <li style="display:none">
      <a href="showProduct_Details.do"><img src="../images/itemCat/itemCat_banner2.png" alt=""></a>
    </li>
    <li style="display:none">
      <a href="showProduct_Details.do"><img src="../images/itemCat/itemCat_banner3.png" alt=""></a>
    </li>
    <li style="display:none">
      <a href="showProduct_Details.do"><img src="../images/itemCat/itemCat_banner4.png" alt=""></a>
    </li>
    <li style="display:none">
      <a href="showProduct_Details.do"><img src="../images/itemCat/itemCat_banner1.png" alt=""></a>
    </li>
  </ul>
  <a href="javascript:;" class="ctrl-slide ck-prev">上一张</a> <a href="javascript:;" class="ctrl-slide ck-next">下一张</a>
  <div class="ck-slidebox">
    <div class="slideWrap">
      <ul class="dot-wrap">
        <li class="current"><em>1</em></li>
        <li><em>2</em></li>
        <li><em>3</em></li>
        <li><em>4</em></li>
        <li><em>5</em></li>
      </ul>
    </div>
  </div>
</div>

<!--/*楼梯1f*/-->
<h2 id="computer" class="stair"><span><img src="../images/itemCat/computer_icon.png" alt=".stair"/></span>办公电脑 /1F</h2>

<div class="lf1">
  <div class="lf1_top">
    <!-- 上面部分左侧区域-->
    <div class="left lf">
      <div class="left_pro lf">
        <p class="top_ys1">灵越 燃7000系列</p>

        <p class="top_ys2">
          酷睿双核i5处理器|256GB SSD| 8GB内存
          </br>
          英特尔HD显卡620含共享显卡内存
        </p>

        <p class="top_ys3">￥4999.00</p>

        <p class="top_ys4 color_2"><a href="showProduct_Details.do">查看详情</a></p>
      </div>
      <span><img src="../images/itemCat/study_computer_img1.png" alt=""/></span>
    </div>
    <!-- 上面部分右侧区域-->
    <div class="right lf">
      <div class="right_pro lf">
        <p class="top_ys1">颜值 框不住</p>

        <p class="top_ys2">
          酷睿双核i5处理器|256GB SSD| 8GB内存
          </br>
          英特尔HD显卡620含共享显卡内存
        </p>

        <p class="top_ys3">￥6888.00</p>

        <p class="top_ys4 color_2"><a href="showProduct_Details.do">查看详情</a></p>
      </div>
      <span><img src="../images/itemCat/study_computer_img2.png" alt=""/></span>
    </div>
  </div>
  <div class="lf1_bottom">
    <div class="item_cat lf">
      <div class="cat_header color_2">
                <span>
                    <img src="../images/itemCat/computer_icon1.png" alt=""/>
                    电脑,办公/1F
                </span>
      </div>
      <div class="item_cat_all">
        <p>电脑整机</p>
        <ul>
          <li><a href="#">笔记本</a></li>
          <li><a href="#">游戏机</a></li>
          <li><a href="#">台式机</a></li>
          <li><a href="#">一体机</a></li>
          <li><a href="#">服务器</a></li>
          <li><a href="#">联想</a></li>
        </ul>
        <p>电脑配件</p>
        <ul>
          <li><a href="#">CPU</a></li>
          <li><a href="#">SSD硬盘</a></li>
          <li><a href="#">显示器</a></li>
          <li><a href="#">显卡</a></li>
          <li><a href="#">组装电脑</a></li>
          <li><a href="#">机箱</a></li>
        </ul>
        <p>外设/游戏</p>
        <ul>
          <li><a href="#">键盘</a></li>
          <li><a href="#">鼠标</a></li>
          <li><a href="#">U盘</a></li>
          <li><a href="#">移动硬盘</a></li>
          <li><a href="#">游戏设备</a></li>
          <li><a href="#">智能单车</a></li>
        </ul>
      </div>
    </div>
    <div class="item_msg lf">
      <img src="../images/itemCat/study_computer_img3.png" alt=""/>

      <p class="bottom_ys2">戴尔(DELL)XPS13-9360-R1609 13.3英寸微边框笔记本电脑</p>

      <p class="bottom_ys3">￥4600.00</p>

      <p class="bottom_ys4 color_2"><a href="showProduct_Details.do">查看详情</a></p>
    </div>
    <div class="item_msg lf">
      <img src="../images/itemCat/study_computer_img4.png" alt=""/>

      <p class="bottom_ys2">14.8mm超轻薄笔记本电脑  航海王版 13.3英寸微边框笔记本电脑</p>

      <p class="bottom_ys3">￥5600.00</p>

      <p class="bottom_ys4 color_2"><a href="showProduct_Details.do">查看详情</a></p>
    </div>
    <div class="item_msg lf">
      <img src="../images/itemCat/study_computer_img5.png" alt=""/>

      <p class="bottom_ys2">联想(Lenovo) YOGA900 多彩版 13.3英寸微边框笔记本电脑</p>

      <p class="bottom_ys3">￥6600.00</p>

      <p class="bottom_ys4 color_2"><a href="showProduct_Details.do">查看详情</a></p>
    </div>
  </div>
</div>
<!--楼梯2f-->
<h2 id="stationery" class="stair"><span><img src="../images/itemCat/stationery_icon.png" alt=".stair"/></span>办公文具 /2F</h2>

<div class="lf1">
  <div class="lf1_top">
    <!-- 上面部分左侧区域-->
    <div class="left lf">
      <div class="left_ys1 lf"><img src="../images/itemCat/study_stationery_img1.png" alt=""/></div>
      <div class="left_pro lf">
        <p class="top_ys1">雅致布面年历本</p>

        <p class="top_ys2">
          有色更有范！变色PU皮，撞色搭配，绚丽色彩，张扬个性，点亮生活新时尚！
        </p>

        <p class="top_ys3 price_ys3">仅售 ￥49.00</p>

        <p class="top_ys4 color_1"><a href="showProduct_Details.do">查看详情</a></p>
      </div>
    </div>
    <!-- 上面部分右侧区域-->
    <div class="right lf">
      <div class="left_ys2 lf"><img src="../images/itemCat/study_stationery_img2.png" alt=""/></div>
      <div class="right_ys rt">
        <p class="top_ys1">透视网格拉链袋</p>
        <p class="top_ys2">
          韩国创意卡通 丛林物语网格文件袋
        </p>
        <p class="top_ys3 price_ys3">仅售 ￥28.00</p>

        <p class="top_ys4 color_1"><a href="showProduct_Details.do">查看详情</a></p>
      </div>
    </div>
  </div>
  <div class="lf1_bottom">
    <div class="item_cat lf">
      <div class="cat_header color_1">
                <span>
                    <img src="../images/itemCat/stationery_icon1.png" alt=""/>
                    办公文具/2F
                </span>
      </div>
      <div class="item_cat_all item_color">
        <p>办公设备</p>
        <ul>
          <li><a href="#">投影机</a></li>
          <li><a href="#">打印机</a></li>
          <li><a href="#">点钞机</a></li>
          <li><a href="#">碎纸机</a></li>
          <li><a href="#">考勤机</a></li>
          <li><a href="#">保险柜</a></li>
        </ul>
        <p>文具耗材</p>
        <ul>
          <li><a href="#">学生文具</a></li>
          <li><a href="#">办公文具</a></li>
          <li><a href="#">纸类</a></li>
          <li><a href="#">打印耗材</a></li>
          <li><a href="#">服务器</a></li>
          <li><a href="#">联想</a></li>
        </ul>
        <p>电脑整机</p>
        <ul>
          <li><a href="#">笔记本</a></li>
          <li><a href="#">游戏机</a></li>
          <li><a href="#">台式机</a></li>
          <li><a href="#">一体机</a></li>
          <li><a href="#">服务器</a></li>
          <li><a href="#">联想</a></li>
        </ul>
      </div>
    </div>
    <div class="item_msg lf">
      <img src="../images/itemCat/study_stationery_img3.png" alt=""/>

      <p class="bottom_ys2">得力（deli）1548A商务办公桌面计算器 太阳能双电源</p>

      <p class="bottom_ys3 price_ys3">￥58.00</p>

      <p class="bottom_ys4 color_1"><a href="showProduct_Details.do">查看详情</a></p>
    </div>
    <div class="item_msg lf">
      <img src="../images/itemCat/study_stationery_img4.png" alt=""/>

      <p class="bottom_ys2">施耐德（Schneider） K15 经典款圆珠笔 </p>

      <p class="bottom_ys3 price_ys3">￥12.00</p>

      <p class="bottom_ys4 color_1"><a href="showProduct_Details.do">查看详情</a></p>
    </div>

    <div class="item_msg lf">
      <a href="showProduct_Details.do">
        <img src="../images/itemCat/study_stationery_img5.png" alt=""/>
        <p class="bottom_ys2">齐心皮面日程本子2017.1-2018.6计划记事本效率手册</p>
        <p class="bottom_ys3 price_ys3">￥23.00</p>
        <p class="bottom_ys4 color_1"><a href="showProduct_Details.do" id="iii">查看详情</a></p>
      </a>
    </div>

  </div>
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

<script>
  $('.ck-slide').ckSlide({
    autoPlay: true,//默认为不自动播放，需要时请以此设置
    dir: 'x',//默认效果淡隐淡出，x为水平移动，y 为垂直滚动
    interval:3000//默认间隔2000毫秒
  });
</script>
<script>
  $("#iii").click(function(){
    location.href="product_details.html";
  })
</script>
</body>
</html>
