<%--
  Created by IntelliJ IDEA.
  User: Universec
  Date: 2025/3/17
  Time: 8:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
<script src="../js/jquery-3.1.1.min.js"></script>
<!-- 页面顶部-->
<header id="top" class="fixed_nav">
  <div id="logo" class="lf">
    <img class="animated jello" src="../images/header/logo.png" alt="logo"/>
  </div>
  <div id="top_input" class="lf">
    <input id="input" type="text" placeholder="请输入您要搜索的内容"/>
    <a href="showSearch.do" class="rt"><img id="search" src="../images/header/search.png" alt="搜索"/></a>
  </div>
  <div class="rt">
    <ul class="lf">
      <li><a href="showFavorites.do" title="我的收藏"><img class="care" src="../images/header/care.png" alt=""/></a><b>|</b></li>
      <li><a href="showOrders.do" title="我的订单"><img class="order" src="../images/header/order.png" alt=""/></a><b>|</b></li>
      <li><a href="showCart.do" title="我的购物车"><img class="shopcar" src="../images/header/shop_car.png" alt=""/></a><b>|</b></li>
      <li><a href="showHelp.do">帮助</a><b>|</b></li>
      <!-- 登录判断逻辑 -->
      <li id="login_info">
        <%
          cn.tedu.store.bean.TUser loginUser = (cn.tedu.store.bean.TUser) session.getAttribute("loginUser");
          if(loginUser != null) {
        %>
        <div class="user_info">
          <a href="javascript:void(0);" id="username_show"><%= loginUser.getUsername() %></a>
          <div class="dropdown_menu" style="display:none;">
            <a href="showPersonage.do">修改个人信息</a>
            <a href="javascript:void(0);" id="logout">退出登录</a>
          </div>
        </div>
        <script>
          // 绑定鼠标悬停事件
          $(".user_info").hover(
                  function() {
                    $(this).find(".dropdown_menu").show();
                  },
                  function() {
                    $(this).find(".dropdown_menu").hide();
                  }
          );

          // 绑定退出登录事件
          $("#logout").click(function(){
            // 发送请求清除服务器端 Session
            $.get("../user/logout.do", function() {
              // 跳转到首页
              location.href = "showIndex.do";
            });
          });
        </script>
        <% } else { %>
        <a href="showLogin.do">登录</a>
        <% } %>
      </li>
    </ul>
  </div>
</header>
<!-- nav主导航-->
<nav id="nav">
  <ul>
    <li><a href="showIndex.do" class="acti">首页</a></li>
    <li><a href="showIndex.do#computer" >电脑办公</a></li>
    <li><a href="showIndex.do#stationery" >办公文具</a></li>
  </ul>
</nav>