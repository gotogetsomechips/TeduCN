<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head lang="en">
  <meta charset="UTF-8">
  <title>地址管理 - 达内学子商城</title>
  <link href="../css/orders.css" rel="stylesheet"/>
  <link href="../css/header.css" rel="stylesheet"/>
  <link href="../css/footer.css" rel="stylesheet"/>
  <link href="../css/personage.css" rel="stylesheet" />
</head>
<body>
<!-- 页面顶部-->
<jsp:include page="header.jsp" />
<!-- 导航栏-->
<div id="nav_order">
  <ul>
    <li><a href="">首页<span>&gt;</span>个人中心</a></li>
  </ul>
</div>
<!--内容区域 #container-->
<div id="container" class="clearfix">
  <div id="leftsidebar_box" class="lf">
    <div class="line"></div>
    <dl class="my_order">
      <dt >我的订单
        <img src="../images/myOrder/myOrder2.png">
      </dt>
      <dd class="first_dd"><a href="../user/showOrders.do">全部订单</a></dd>
      <dd>
        <a href="#">
          待付款
          <span><!--待付款数量--></span>
        </a>
      </dd>
      <dd>
        <a href="#">
          待收货
          <span><!--待收货数量-->1</span>
        </a>
      </dd>
      <dd>
        <a href="#">
          待评价<span><!--待评价数量--></span>
        </a>
      </dd>
      <dd>
        <a href="#">退货退款</a>
      </dd>
    </dl>

    <dl class="footMark">
      <dt >我的优惠卷<img src="../images/myOrder/myOrder1.png"></dt>
    </dl>
    <dl class="address">
      <dt>收货地址<img src="../images/myOrder/myOrder1.png"></dt>
      <dd><a href="../user/showAddressAdmin.do">地址管理</a></dd>
    </dl>
    <dl class="count_managment">
      <dt >帐号管理<img src="../images/myOrder/myOrder1.png"></dt>
      <dd class="first_dd"><a href="../user/showPersonage.do">我的信息</a></dd>
      <%--      <dd><a href="personal_icon.html">个人头像</a></dd>--%>
      <dd><a href="../user/showPersonal_Password.do">安全管理</a></dd>
    </dl>
  </div>
  <!-- 右边栏-->
  <div class="rightsidebar_box rt">
    <!--标题栏-->
    <div class="rs_header">
      <span class="address_title">收货地址管理</span>
    </div>
    <!--收货人信息填写栏-->
    <div class="rs_content">
      <form id="address-form">
        <input type="hidden" id="addressId" name="id" value="0">
        <!--收货人姓名-->
        <div class="recipients">
          <span class="red">*</span><span class="kuan">收货人：</span><input type="text" name="recipientName" id="recipientName"/>
        </div>
        <!--收货人所在城市等信息-->
        <div data-toggle="distpicker" class="address_content">
          <span class="red">*</span><span class="kuan">省&nbsp;&nbsp;份：</span>
          <select data-province="---- 选择省 ----" id="receiverState"></select>
          城市：<select data-city="---- 选择市 ----" id="receiverCity"></select>
          区/县：<select data-district="---- 选择区 ----" id="receiverDistrict"></select>
        </div>

        <!--收货人详细地址-->
        <div class="address_particular">
          <span class="red">*</span><span class="kuan">详细地址：</span>
          <textarea name="addressDetails" id="addressDetails" cols="60" rows="3" placeholder="建议您如实填写详细收货地址"></textarea>
        </div>
        <!--收货人地址-->
        <div class="address_tel">
          <span class="red">*</span><span class="kuan">手机号码：</span>
          <input type="tel" id="phone" name="phone"/>
          邮政编码：<input type="text" name="postalCode" id="postalCode"/>
        </div>
        <!--地址名称-->
        <div class="address_name">
          <span class="red">&nbsp;</span><span class="kuan">地址名称：</span>
          <input type="text" id="addressName" name="addressName"/>如：<span class="sp">家</span><span class="sp">公司</span><span class="sp">宿舍</span>
        </div>
        <!--设为默认地址-->
        <div class="address_default">
          <input type="checkbox" id="isDefault" name="isDefault" value="1"> 设为默认地址
        </div>
        <!--保存收货人信息-->
        <div class="save_recipient" id="save-btn">
          保存收货人信息
        </div>
      </form>
      <!--已有地址栏-->
      <div class="address_information_manage">
        <div class="aim_title">
          <span class="dzmc dzmc_title">地址名称</span>
          <span class="dzxm dzxm_title">姓名</span>
          <span class="dzxq dzxq_title">地址详情</span>
          <span class="lxdh lxdh_title">联系电话</span>
          <span class="operation operation_title">操作</span>
        </div>
        <div class="aim_content_all">

        </div>
      </div>
    </div>
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
</body>
<script type="text/javascript" src="../js/jquery-3.1.1.min.js"></script>
<script src="../js/jquery.page.js"></script>
<script type="text/javascript" src="../js/orders.js"></script>
<script type="text/javascript" src="../js/distpicker.data.js"></script>
<script type="text/javascript" src="../js/distpicker.js"></script>
<script type="text/javascript" src="../js/personal.js"></script>
<script type="text/javascript">
  // 文档就绪后执行
  $(function() {
    // 加载地址列表
    loadAddressList();

    // 保存按钮点击事件
    $("#save-btn").click(function() {
      saveAddress();
    });

    // 地址名称标签点击事件
    $(document).on("click", ".sp", function() {
      $("#addressName").val($(this).text());
    });

    // 修改按钮点击事件
    $(document).on("click", ".aco_change", function() {
      var addressId = $(this).closest("[data-id]").data("id");
      loadAddressDetail(addressId);
    });

    // 删除按钮点击事件
    $(document).on("click", ".aco_delete", function() {
      var addressId = $(this).closest("[data-id]").data("id");
      deleteAddress(addressId);
    });

    // 设为默认地址按钮点击事件
    $(document).on("click", ".swmr_normal", function() {
      if ($(this).text() === "设为默认") {
        var addressId = $(this).closest("[data-id]").data("id");
        setDefaultAddress(addressId);
      }
    });
  });

  // 加载地址列表
  function loadAddressList() {
    $.ajax({
      url: "../address/list.do",
      type: "GET",
      dataType: "json",
      success: function(result) {
        if (result.state == 1) {
          renderAddressList(result.data);
        } else {
          alert(result.message);
        }
      },
      error: function() {
        alert("加载地址列表失败，请稍后重试！");
      }
    });
  }

  // 渲染地址列表

  function renderAddressList(addresses) {
    var html = "";

    if (addresses && addresses.length > 0) {
      for (var i = 0; i < addresses.length; i++) {
        var address = addresses[i];
        var isDefault = address.isDefault == 1;
        var contentClass = "aim_content_" + (i === 0 ? "one" : i === 1 ? "two" : "three");

        if (i >= 3) {
          contentClass = "aim_content_" + (i % 3 + 1); // 循环使用三种样式
        }

        // 处理地址显示 - 从完整地址中提取出省市区和详细地址
        var displayAddress = address.addressDetails;
        if (displayAddress) {
          var addressParts = displayAddress.split(" ");
          if (addressParts.length >= 4) {
            // 拼接前三部分（省市区）和剩余部分（详细地址）
            displayAddress = addressParts[0] + " " + addressParts[1] + " " + addressParts[2] + " " +
                    addressParts.slice(3).join(" ");
          }
        }

        html += '<div class="' + contentClass + (isDefault ? ' aim_active' : '') + '" data-id="' + address.id + '">' +
                '<span class="dzmc' + (isDefault ? ' dzmc_active' : ' dzmc_normal') + '">' + address.addressName + '</span>' +
                '<span class="dzxm dzxm_normal">' + address.recipientName + '</span>' +
                '<span class="dzxq dzxq_normal">' + displayAddress + '</span>' +
                '<span class="lxdh lxdh_normal">' + address.phone + '</span>' +
                '<span class="operation operation_normal">' +
                '<span class="aco_change">修改</span>|<span class="aco_delete">删除</span>' +
                '</span>';

        if (!isDefault) {
          html += '<span class="swmr swmr_normal">设为默认</span>';
        } else {
          html += '<span class="swmr swmr_normal"></span>';
        }

        html += '</div>';
      }
    } else {
      html = '<div class="no-address">暂无收货地址，请添加！</div>';
    }

    $(".aim_content_all").html(html);
  }
  // 加载地址详情
  function loadAddressDetail(addressId) {
    $.ajax({
      url: "../address/list.do",
      type: "GET",
      dataType: "json",
      success: function(result) {
        if (result.state == 1) {
          var addresses = result.data;
          for (var i = 0; i < addresses.length; i++) {
            if (addresses[i].id == addressId) {
              fillAddressForm(addresses[i]);
              break;
            }
          }
        } else {
          alert(result.message);
        }
      },
      error: function() {
        alert("加载地址详情失败，请稍后重试！");
      }
    });
  }

  // 填充地址表单
  function fillAddressForm(address) {
    $("#addressId").val(address.id);
    $("#recipientName").val(address.recipientName);
    $("#phone").val(address.phone);
    $("#postalCode").val(address.postalCode);
    $("#addressName").val(address.addressName);
    $("#isDefault").prop("checked", address.isDefault == 1);

    // 先初始化省市区选择器
    $('#address-form [data-toggle="distpicker"]').distpicker('destroy');
    $('#address-form [data-toggle="distpicker"]').distpicker();

    // 使用setTimeout确保distpicker已完全初始化
    setTimeout(function() {
      // 设置省份
      if (address.provinceCode) {
        $("#receiverState").find("option[data-code='" + address.provinceCode + "']").prop("selected", true);
        $("#receiverState").trigger('change');

        // 设置城市
        setTimeout(function() {
          if (address.cityCode) {
            $("#receiverCity").find("option[data-code='" + address.cityCode + "']").prop("selected", true);
            $("#receiverCity").trigger('change');

            // 设置区县
            setTimeout(function() {
              if (address.districtCode) {
                $("#receiverDistrict").find("option[data-code='" + address.districtCode + "']").prop("selected", true);
              }
            }, 100);
          }
        }, 100);
      }
    }, 100);

    // 从完整地址中提取详细地址部分
    if (address.addressDetails) {
      var addressParts = address.addressDetails.split(" ");
      if (addressParts.length >= 4) {
        // 详细地址（去掉省市区后的部分）
        var detailAddress = "";
        for (var i = 3; i < addressParts.length; i++) {
          detailAddress += addressParts[i] + " ";
        }
        $("#addressDetails").val(detailAddress.trim());
      }
    }

    // 滚动到表单顶部
    $('html, body').animate({
      scrollTop: $("#address-form").offset().top - 100
    }, 500);
  }
  // 保存地址
  function saveAddress() {
    // 验证表单
    if (!validateAddressForm()) {
      return false;
    }

    // 获取表单数据
    var addressId = $("#addressId").val();
    var recipientName = $("#recipientName").val();

    // 获取省市区的文本值
    var province = $("#receiverState").val();
    var city = $("#receiverCity").val();
    var district = $("#receiverDistrict").val();

    // 获取省市区的代码值
    var provinceCode = $("#receiverState").find("option:selected").data("code");
    var cityCode = $("#receiverCity").find("option:selected").data("code");
    var districtCode = $("#receiverDistrict").find("option:selected").data("code");

    var addressDetails = $("#addressDetails").val().trim();
    var phone = $("#phone").val();
    var postalCode = $("#postalCode").val();
    var addressName = $("#addressName").val();
    var isDefault = $("#isDefault").prop("checked") ? 1 : 0;

    // 完整地址用于展示
    var fullAddress = province + " " + city + " " + district + " " + addressDetails;

    var data = {
      id: addressId,
      recipientName: recipientName,
      addressDetails: fullAddress,
      provinceCode: provinceCode,
      cityCode: cityCode,
      districtCode: districtCode,
      phone: phone,
      postalCode: postalCode,
      addressName: addressName,
      isDefault: isDefault
    };

    // 根据id判断是添加还是更新
    var url = addressId == 0 ? "../address/add.do" : "../address/update.do";

    $.ajax({
      url: url,
      type: "POST",
      data: data,
      dataType: "json",
      success: function(result) {
        if (result.state == 1) {
          alert(result.message);
          resetAddressForm();
          loadAddressList();
        } else {
          alert(result.message);
        }
      },
      error: function() {
        alert("保存地址失败，请稍后重试！");
      }
    });

    return true;
  }


  // 验证地址表单
  function validateAddressForm() {
    var recipientName = $("#recipientName").val().trim();
    var province = $("#receiverState").val();
    var city = $("#receiverCity").val();
    var district = $("#receiverDistrict").val();
    var addressDetails = $("#addressDetails").val().trim();
    var phone = $("#phone").val().trim();

    if (recipientName == "") {
      alert("请输入收货人姓名");
      return false;
    }

    if (province == "" || city == "" || district == "") {
      alert("请选择省市区");
      return false;
    }

    if (addressDetails == "") {
      alert("请输入详细地址");
      return false;
    }

    if (phone == "") {
      alert("请输入手机号码");
      return false;
    }

    // 验证手机号格式
    var phoneRegex = /^1[3-9]\d{9}$/;
    if (!phoneRegex.test(phone)) {
      alert("请输入正确的手机号码");
      return false;
    }

    return true;
  }

  // 重置地址表单
  function resetAddressForm() {
    $("#addressId").val(0);
    $("#recipientName").val("");
    $("#addressDetails").val("");
    $("#phone").val("");
    $("#postalCode").val("");
    $("#addressName").val("");
    $("#isDefault").prop("checked", false);

    // 重置省市区选择器
    $("#receiverState").val("");
    $("#receiverCity").val("");
    $("#receiverDistrict").val("");
  }

  // 删除地址
  function deleteAddress(addressId) {
    if (confirm("确定要删除该收货地址吗？")) {
      $.ajax({
        url: "../address/delete.do",
        type: "POST",
        data: {id: addressId},
        dataType: "json",
        success: function(result) {
          if (result.state == 1) {
            alert(result.message);
            loadAddressList();
          } else {
            alert(result.message);
          }
        },
        error: function() {
          alert("删除地址失败，请稍后重试！");
        }
      });
    }
  }

  // 设置默认地址
  function setDefaultAddress(addressId) {
    $.ajax({
      url: "../address/setDefault.do",
      type: "POST",
      data: {id: addressId},
      dataType: "json",
      success: function(result) {
        if (result.state == 1) {
          alert(result.message);
          loadAddressList();
        } else {
          alert(result.message);
        }
      },
      error: function() {
        alert("设置默认地址失败，请稍后重试！");
      }
    });
  }

</script>