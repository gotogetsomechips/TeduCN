<%--
  Created by IntelliJ IDEA.
  User: Universec
  Date: 2025/3/16
  Time: 15:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head lang="en">
  <meta charset="UTF-8">
  <title>商品搜索页面</title>
  <link rel="stylesheet" href="../css/header.css" />
  <link rel="stylesheet" href="../css/search.css" />
  <link rel="stylesheet" href="../css/footer.css" />
</head>
<!-- 页面顶部-->
<jsp:include page="header.jsp" />

<body>
<div class="big">
  <form name="" action="" method="post">
    <section id="section">
      <p class="header">全部结果>笔记本</p>
      <div id="wrap">
        <div class="lf box" id="d1">
          <div class="info">
            <div class="img pic">
              <img src="../images/search/product_img.png" alt="" onclick="toItemInfo(${item.id})" />
            </div>
            <div class="describe">
              <p onclick="toItemInfo(${item.id})">联想(Lenovo) YOGA900 (YOGA4 PRO)多彩版</p>
              <span class="price"><b>￥</b><span class="priceContent">4399.00</span></span>
              <span class="addCart"><img id="collect" src="../images/search/care.png" alt="" /><a href="javascript:void(0);" class="add_cart">加入购物车</a></span>
              <!--<span class="succee" style="display: none">
                  <img src="/images/search/product_true.png" alt="" />
                  <span>已移入购物车</span>
              </span>-->
            </div>
          </div>
        </div>
        <div class="lf" id="d1">
          <div class="img">
            <img src="../images/search/product_img1.png" alt="" onclick="toItemInfo(${item.id})" />
          </div>
          <div class="describe">
            <p onclick="toItemInfo(${item.id})">联想(Lenovo) YOGA900 (YOGA4 PRO)多彩版</p>
            <span class="price"><b>￥</b><span class="priceContent">4399.00</span></span>
            <span class="addCart"><img id="collect" src="../images/search/care.png" alt="" /><a href="javascript:void(0);" class="add_cart">加入购物车</a></span>
            <!--<span class="succee" style="display: none">
                <img src="/images/search/product_true.png" alt="" />
                <span>已移入购物车</span>
            </span>-->
          </div>
        </div>
        <div class="lf" id="d1">
          <div class="img">
            <img src="../images/search/product_img2.png" alt="" onclick="toItemInfo(${item.id})" />
          </div>
          <div class="describe">
            <p onclick="toItemInfo(${item.id})">联想(Lenovo) YOGA900 (YOGA4 PRO)多彩版</p>
            <span class="price"><b>￥</b><span class="priceContent">4399.00</span></span>
            <span class="addCart"><img id="collect" src="../images/search/care.png" alt="" /><a href="javascript:void(0);" class="add_cart">加入购物车</a></span>
            <!--<span class="succee" style="display: none">
                <img src="/images/search/product_true.png" alt="" />
                <span>已移入购物车</span>
            </span>-->
          </div>
        </div>
        <div class="lf" id="d1">
          <div class="img">
            <img src="../images/search/product_img3.png" alt="" onclick="toItemInfo(${item.id})" />
          </div>
          <div class="describe">
            <p onclick="toItemInfo(${item.id})">联想(Lenovo) YOGA900 (YOGA4 PRO)多彩版</p>
            <span class="price"><b>￥</b><span class="priceContent">4399.00</span></span>
            <span class="addCart"><img id="collect" src="../images/search/care.png" alt="" /><a href="javascript:void(0);" class="add_cart">加入购物车</a></span>
            <!--<span class="succee" style="display: none">
                <img src="/images/search/product_true.png" alt="" />
                <span>已移入购物车</span>
            </span>-->
          </div>
        </div>
        <div class="lf" id="d1">
          <div class="img">
            <img src="../images/search/product_img4.png" alt="" onclick="toItemInfo(${item.id})" />
          </div>
          <div class="describe">
            <p onclick="toItemInfo(${item.id})">联想(Lenovo) YOGA900 (YOGA4 PRO)多彩版</p>
            <span class="price"><b>￥</b><span class="priceContent">4399.00</span></span>
            <span class="addCart"><img id="collect" src="../images/search/care.png" alt="" /><a href="javascript:void(0);" class="add_cart">加入购物车</a></span>
            <!--<span class="succee" style="display: none">
                <img src="/images/search/product_true.png" alt="" />
                <span>已移入购物车</span>
            </span>-->
          </div>
        </div>
        <div class="lf" id="d1">
          <div class="img">
            <img src="../images/search/product_img5.png" alt="" onclick="toItemInfo(${item.id})" />
          </div>
          <div class="describe">
            <p onclick="toItemInfo(${item.id})">联想(Lenovo) YOGA900 (YOGA4 PRO)多彩版</p>
            <span class="price"><b>￥</b><span class="priceContent">4399.00</span></span>
            <span class="addCart"><img id="collect" src="../images/search/care.png" alt="" /><a href="javascript:void(0);" class="add_cart">加入购物车</a></span>
            <!--<span class="succee" style="display: none">
                <img src="/images/search/product_true.png" alt="" />
                <span>已移入购物车</span>
            </span>-->
          </div>
        </div>
        <div class="lf" id="d1">
          <div class="img">
            <img src="../images/search/product_img6.png" alt="" onclick="toItemInfo(${item.id})" />
          </div>
          <div class="describe">
            <p onclick="toItemInfo(${item.id})">联想(Lenovo) YOGA900 (YOGA4 PRO)多彩版</p>
            <span class="price"><b>￥</b><span class="priceContent">4399.00</span></span>
            <span class="addCart"><img id="collect" src="../images/search/care.png" alt="" /><a href="javascript:void(0);" class="add_cart">加入购物车</a></span>
            <!--<span class="succee" style="display: none">
                <img src="/images/search/product_true.png" alt="" />
                <span>已移入购物车</span>
            </span>-->
          </div>
        </div>
        <div class="lf" id="d1">
          <div class="img">
            <img src="../images/search/product_img1.png" alt="" onclick="toItemInfo(${item.id})" />
          </div>
          <div class="describe">
            <p onclick="toItemInfo(${item.id})">联想(Lenovo) YOGA900 (YOGA4 PRO)多彩版</p>
            <span class="price"><b>￥</b><span class="priceContent">4399.00</span></span>
            <span class="addCart"><img id="collect" src="../images/search/care.png" alt="" /><a href="javascript:void(0);" class="add_cart">加入购物车</a></span>
            <!--<span class="succee" style="display: none">
                <img src="/images/search/product_true.png" alt="" />
                <span>已移入购物车</span>
            </span>-->
          </div>
        </div>
        <div class="lf" id="d1">
          <div class="img">
            <img src="../images/search/product_img2.png" alt="" onclick="toItemInfo(${item.id})" />
          </div>
          <div class="describe">
            <p onclick="toItemInfo(${item.id})">联想(Lenovo) YOGA900 (YOGA4 PRO)多彩版</p>
            <span class="price"><b>￥</b><span class="priceContent">4399.00</span></span>
            <span class="addCart"><img id="collect" src="../images/search/care.png" alt="" /><a href="javascript:void(0);" class="add_cart">加入购物车</a></span>
            <!--<span class="succee" style="display: none">
                <img src="/images/search/product_true.png" alt="" />
                <span>已移入购物车</span>
            </span>-->
          </div>
        </div>
        <div class="lf" id="d1">
          <div class="img">
            <img src="../images/search/product_img3.png" alt="" onclick="toItemInfo(${item.id})" />
          </div>
          <div class="describe">
            <p onclick="toItemInfo(${item.id})">联想(Lenovo) YOGA900 (YOGA4 PRO)多彩版</p>
            <span class="price"><b>￥</b><span class="priceContent">4399.00</span></span>
            <span class="addCart"><img id="collect" src="../images/search/care.png" alt="" /><a href="javascript:void(0);" class="add_cart">加入购物车</a></span>
            <!--<span class="succee" style="display: none">
                <img src="/images/search/product_true.png" alt="" />
                <span>已移入购物车</span>
            </span>-->
          </div>
        </div>
        <div class="lf" id="d1">
          <div class="img">
            <img src="../images/search/product_img4.png" alt="" onclick="toItemInfo(${item.id})" />
          </div>
          <div class="describe">
            <p onclick="toItemInfo(${item.id})">联想(Lenovo) YOGA900 (YOGA4 PRO)多彩版</p>
            <span class="price"><b>￥</b><span class="priceContent">4399.00</span></span>
            <span class="addCart"><img id="collect" src="../images/search/care.png" alt="" /><a href="javascript:void(0);" class="add_cart">加入购物车</a></span>
            <!--<span class="succee" style="display: none">
                <img src="/images/search/product_true.png" alt="" />
                <span>已移入购物车</span>
            </span>-->
          </div>
        </div>
        <div class="lf" id="d1">
          <div class="img">
            <img src="../images/search/product_img5.png" alt="" onclick="toItemInfo(${item.id})" />
          </div>
          <div class="describe">
            <p onclick="toItemInfo(${item.id})">联想(Lenovo) YOGA900 (YOGA4 PRO)多彩版</p>
            <span class="price"><b>￥</b><span class="priceContent">4399.00</span></span>
            <span class="addCart"><img id="collect" src="../images/search/care.png" alt="" /><a href="javascript:void(0);" class="add_cart">加入购物车</a></span>
            <!--<span class="succee" style="display: none">
                <img src="/images/search/product_true.png" alt="" />
                <span>已移入购物车</span>
            </span>-->
          </div>
        </div>
      </div>
    </section>
  </form>
</div>
<!-- 尾部-->
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
<div class="modal" style="display:none">
  <div class="modal_dialog">
    <div class="modal_header">
      操作提醒
    </div>
    <div class="modal_information">
      <img src="../images/model/model_img2.png" alt=""/>
      <span>将您的宝贝加入购物车？</span>

    </div>
    <div class="yes"><span>确定</span></div>
    <div class="no"><span>取消</span></div>
  </div>
</div>
<script src="../js/jquery-3.1.1.min.js"></script>
<script src="../js/index.js"></script>
<script src="../js/jquery.page.js"></script>
<script>
  $(".add_cart").click(function(){
    $(".modal").show();
    $(".modal .modal_information span").html("将您的宝贝加入购物车?");
  })
  $(".yes").click(function(){
    $(".modal").hide();
  })
  $('.no').click(function(){
    $('.modal').hide();

  })
</script>
<!--<script type="text/javascript">
	// var status = ${status};
	var pages = ${pageBean.totalPages};
	var index = ${pageBean.pageIndex};
	$(".tcdPageCode").createPage({
		// 总页数
	    pageCount:pages,
	 	// 起始页
	    current:index,
	    backFn:function(p){
	    	// 执行代码
	    	window.location.href="http://localhost:18888/search.html?q=${q}&page="+p;
	    }
	});
</script>-->
<!--<script type="text/javascript">
    /* 商品详情页  */
	function toItemInfo(id) {
		if (id) {
			window.location.href="/toItemInfo/"+id+".html";
		}else {
			alert("商品id不存在");
		}
	}
</script>-->
<script type="text/javascript">
  /**添加到收藏**/
  $("#collect").click(function(e){
    $(".modal").show();
    $(".modal .modal_information span").html("将您的宝贝加入收藏夹");
  })
  $(".yes").click(function(){
    $(".modal").hide();
    $('#collect').attr("src","../images/search/care1.png");
  })
</script>
</body>
</html>