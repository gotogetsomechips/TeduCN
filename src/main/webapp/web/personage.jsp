<%--
  Created by IntelliJ IDEA.
  User: Universec
  Date: 2025/3/16
  Time: 15:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head lang="en">
  <meta charset="UTF-8">
  <title>我的订单 - 达内学子商城</title>
  <link href="../css/orders.css" rel="stylesheet"/>
  <link href="../css/header.css" rel="stylesheet"/>
  <link href="../css/footer.css" rel="stylesheet"/>
  <link href="../css/personage.css" rel="stylesheet" />
  <link rel="stylesheet" type="text/css" href="../css/icon/css/bootstrap.min.css">
  <link href="../css/icon/css/cropper.min.css" rel="stylesheet">
  <link href="../css/icon/css/sitelogo.css" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="../css/icon/css/font-awesome.min.css">
</head>
<body>
<jsp:include page="header.jsp" />
<!-- 我的订单导航栏-->
<div id="nav_order">
  <ul>
    <li><a href="../user/showIndex.do">首页<span>&gt;</span>个人中心</a></li>
  </ul>
</div>
<!--我的订单内容区域 #container-->
<div id="container" class="clearfix">
  <!-- 左边栏-->
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
      <dd><a href="../user/showPersonal_Password.do">安全管理</a></dd>
    </dl>
  </div>
  <!-- 右边栏-->
  <!--个人信息头部-->
  <div class="rightsidebar_box rt">
    <div class="rs_header">
      <span class="rs_header_active"><a href="../user/showPersonage.do">我的信息</a></span>
      <span><a href="../user/showPersonal_Password.do">安全管理</a></span>
    </div>

    <!--个人信息具体内容 -->
    <!-- 在rs_content div中 -->
    <div class="rs_content">
      <!--头像-->
      <div class="rs_content_headPortrait">
        <span class="same">我的头像：</span>
        <img src="../images/personage/touxiang.png" alt="" id="icon" width="50px" height="50px"/>
        <input type="hidden" name="iconPic" value="" id="iconPic">
        <span class="change_headPortrait same_click" data-toggle="modal" data-target="#avatar-modal">更改头像</span>
      </div>
      <!--用户名-->
      <div class="rs_content_username">
        <span class="same">用户名：</span>
        <span class="same rs_username">${user.username}</span>
        <input class="ed_username" value="${user.username}" style="display: none;"/>
        <span class="change_username same_click">更改用户名</span>
      </div>
      <!--性别-->
      <div class="rs_content_sex">
        <span class="same">性别：</span>
        <span class="man ${user.gender == 1 ? 'selected' : ''}">
      <img src="../images/personage/${user.gender == 1 ? 'select' : 'un_select'}.png" alt=""/>男
    </span>
        <span class="women ${user.gender == 0 ? 'selected' : ''}">
      <img src="../images/personage/${user.gender == 0 ? 'select' : 'un_select'}.png" alt=""/>女
    </span>
      </div>
      <!--绑定电话-->
      <div class="rs_content_tel">
        <span class="same">绑定电话：</span>
        <input type="text" id="phone" value="${user.phone}"/>
      </div>
      <!--绑定邮箱-->
      <div class="rs_content_mail">
        <span class="same">绑定邮箱：</span>
        <input class="ed_email" value="${user.email}" style="display: none;"/>
        <span class="rs_mail">${user.email}</span>
        <span class="same_click change_mail">更改邮箱</span>
      </div>
      <!--保存按钮-->
      <div class="save">
        保存更改
      </div>
    </div>
  </div>
</div>
<!-- 头像插件 -->
<div class="modal fade" id="avatar-modal" aria-hidden="true" aria-labelledby="avatar-modal-label" role="dialog" tabindex="-1">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <!--<form class="avatar-form" action="upload-logo.php" enctype="multipart/form-data" method="post">-->
      <form class="avatar-form">
        <div class="modal-header">
          <button class="close" data-dismiss="modal" type="button">×</button>
          <h4 class="modal-title" id="avatar-modal-label">上传图片</h4>
        </div>
        <div class="modal-body">
          <div class="avatar-body">
            <div class="avatar-upload">
              <input class="avatar-src" name="avatar_src" type="hidden">
              <input class="avatar-data" name="avatar_data" type="hidden">
              <label for="avatarInput" style="line-height: 35px;">图片上传</label>
              <button class="btn btn-info"  type="button" style="height: 35px;" onClick="$('input[id=avatarInput]').click();">请选择图片</button>
              <span id="avatar-name"></span>
              <input class="avatar-input hide" id="avatarInput" name="avatar_file" type="file"></div>
            <div class="row">
              <div class="col-md-9">
                <div class="avatar-wrapper"></div>
              </div>
              <div class="col-md-3">
                <div class="avatar-preview preview-lg" id="imageHead"></div>
                <!--<div class="avatar-preview preview-md"></div>
        <div class="avatar-preview preview-sm"></div>-->
              </div>
            </div>
            <div class="row avatar-btns">
              <div class="col-md-4">
                <div class="btn-group">
                  <button class="btn btn-info fa fa-undo" data-method="rotate" data-option="-90" type="button" title="Rotate -90 degrees"> 向左旋转</button>
                </div>
                <div class="btn-group">
                  <button class="btn  btn-info fa fa-repeat" data-method="rotate" data-option="90" type="button" title="Rotate 90 degrees"> 向右旋转</button>
                </div>
              </div>
              <div class="col-md-5" style="text-align: right;">
                <button class="btn btn-info fa fa-arrows" data-method="setDragMode" data-option="move" type="button" title="移动">
                  <span class="docs-tooltip" data-toggle="tooltip" title="" data-original-title="$().cropper("setDragMode", "move")">
                  </span>
                </button>
                <button type="button" class="btn btn-info fa fa-search-plus" data-method="zoom" data-option="0.1" title="放大图片">
                  <span class="docs-tooltip" data-toggle="tooltip" title="" data-original-title="$().cropper("zoom", 0.1)">
                  <!--<span class="fa fa-search-plus"></span>-->
                  </span>
                </button>
                <button type="button" class="btn btn-info fa fa-search-minus" data-method="zoom" data-option="-0.1" title="缩小图片">
                  <span class="docs-tooltip" data-toggle="tooltip" title="" data-original-title="$().cropper("zoom", -0.1)">
                  <!--<span class="fa fa-search-minus"></span>-->
                  </span>
                </button>
                <button type="button" class="btn btn-info fa fa-refresh" data-method="reset" title="重置图片">
                  <span class="docs-tooltip" data-toggle="tooltip" title="" data-original-title="$().cropper("reset")" aria-describedby="tooltip866214">
                </button>
              </div>
              <div class="col-md-3">
                <button id="button_save" class="btn btn-info btn-block avatar-save fa fa-save" type="button" data-dismiss="modal"> 保存修改</button>
              </div>
            </div>
          </div>
        </div>
      </form>
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
</body>
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script src="../js/index.js"></script>
<script src="../js/jquery.page.js"></script>
<script type="text/javascript" src="../js/orders.js"></script>
<script type="text/javascript" src="../js/personal.js"></script>
<script src="../js/icon/bootstrap.min.js"></script>
<script src="../js/icon/cropper.js"></script>
<script src="../js/icon/sitelogo.js"></script>
<script src="../js/icon/html2canvas.min.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
  //做个下简易的验证  大小 格式
  $('#avatarInput').on('change', function(e) {
    var filemaxsize = 1024 * 5;//5M
    var target = $(e.target);
    var Size = target[0].files[0].size / 1024;
    if(Size > filemaxsize) {
      alert('图片过大，请重新选择!');
      $(".avatar-wrapper").childre().remove;
      return false;
    }
    if(!this.files[0].type.match(/image.*/)) {
      alert('请选择正确的图片!')
    } else {
      var filename = document.querySelector("#avatar-name");
      var texts = document.querySelector("#avatarInput").value;
      var teststr = texts; //你这里的路径写错了
      testend = teststr.match(/[^\\]+\.[^\(]+/i); //直接完整文件名的
      filename.innerHTML = testend;
    }

  });

  $(".avatar-save").on("click", function() {
    var img_lg = document.getElementById('imageHead');
    // 截图小的显示框内的内容
    html2canvas(img_lg, {
      allowTaint: true,
      taintTest: false,
      onrendered: function(canvas) {
        canvas.id = "mycanvas";
        //生成base64图片数据
        var dataUrl = canvas.toDataURL("image/png");
        var newImg = document.createElement("img");
        newImg.src = dataUrl;
        imagesAjax(dataUrl)
      }
    });
  })
  function imagesAjax(src) {
    var data = {};
    data.img = src;
    $.ajax({
      url: "",
      data: data,
      type: "POST",
      dataType: 'json',
      success: function(re) {
        if (re) {
          if(re.status == 200) {
            $('#icon').attr('src',re.data.url );
            $('#iconPic').val(re.data.url);
          }else {
            alert("上传失败")
          }

        }
      }
    });
  }
</script>
<script type="text/javascript">
  $("#icon").click(function() {
    window.open($(this).attr("src"));
  })
</script>
<!--<script>
	$(".x").click(function(){
		$(".modal").hide();
	})
	$(".change_headPortrait").click(function(){
		$(".modal").show();
	})
</script>-->
<script>
  $("#button_save").click(function(){
    var url = $("#imageHead img").attr("src");
    $('#icon').attr('src',url);
  })
</script>
<script>
  $(function() {
    // 处理性别选择
    $(".man").click(function() {
      $(this).addClass("selected").find("img").attr("src", "../images/personage/select.png");
      $(".women").removeClass("selected").find("img").attr("src", "../images/personage/un_select.png");
    });

    $(".women").click(function() {
      $(this).addClass("selected").find("img").attr("src", "../images/personage/select.png");
      $(".man").removeClass("selected").find("img").attr("src", "../images/personage/un_select.png");
    });

    // 处理用户名更改
    $(".change_username").click(function() {
      $(".rs_username").hide();
      $(".ed_username").show();
      $(this).hide();
      // 为用户名输入框添加提示信息
      if($(".username_msg").length == 0) {
        $(".ed_username").after('<span class="username_msg msg-default">用户名长度在6到9位之间</span>');
      }
    });

    // 处理邮箱更改
    $(".change_mail").click(function() {
      $(".rs_mail").hide();
      $(".ed_email").show();
      $(this).hide();
      // 为邮箱输入框添加提示信息
      if($(".email_msg").length == 0) {
        $(".ed_email").after('<span class="email_msg msg-default">请输入合法的邮箱地址</span>');
      }
    });

    // 添加用户名验证
    $(".ed_username").blur(function() {
      var username = $(this).val();
      if(username == "") {
        $(".username_msg").html("用户名不能为空");
        $(".username_msg").attr("class", "username_msg msg-error");
        return false;
      } else if(username.length < 6 || username.length > 9) {
        $(".username_msg").html("用户名长度在6到9位之间");
        $(".username_msg").attr("class", "username_msg msg-error");
        return false;
      } else {
        // 检查用户名是否已被占用
        $.ajax({
          url: "../user/checkUsername.do",
          data: "username=" + username,
          type: "get",
          dataType: "json",
          success: function(obj) {
            $(".username_msg").html(obj.message);
            if(obj.state == 0) {
              $(".username_msg").attr("class", "username_msg msg-error");
            } else {
              $(".username_msg").attr("class", "username_msg msg-success");
            }
          }
        });
      }
    }).focus(function() {
      $(".username_msg").html("用户名长度在6到9位之间");
      $(".username_msg").attr("class", "username_msg msg-default");
    });

    // 添加邮箱验证
    $(".ed_email").blur(function() {
      var email = $(this).val();
      var emailRegex = /^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/;

      if(email == "") {
        $(".email_msg").html("邮箱不能为空");
        $(".email_msg").attr("class", "email_msg msg-error");
        return false;
      } else if(!emailRegex.test(email)) {
        $(".email_msg").html("邮箱格式不正确");
        $(".email_msg").attr("class", "email_msg msg-error");
        return false;
      } else {
        // 检查邮箱是否已被占用
        $.ajax({
          url: "../user/checkEmail.do",
          data: "email=" + email,
          type: "get",
          dataType: "json",
          success: function(obj) {
            $(".email_msg").html(obj.message);
            if(obj.state == 0) {
              $(".email_msg").attr("class", "email_msg msg-error");
            } else {
              $(".email_msg").attr("class", "email_msg msg-success");
            }
          }
        });
      }
    }).focus(function() {
      $(".email_msg").html("请输入合法的邮箱地址");
      $(".email_msg").attr("class", "email_msg msg-default");
    });

    // 添加手机号验证
    $("#phone").blur(function() {
      var phone = $(this).val();
      var phoneRegex = /^1[3-9]\d{9}$/;

      if(phone == "") {
        if($(".phone_msg").length == 0) {
          $(this).after('<span class="phone_msg msg-error">手机号不能为空</span>');
        } else {
          $(".phone_msg").html("手机号不能为空");
          $(".phone_msg").attr("class", "phone_msg msg-error");
        }
        return false;
      } else if(!phoneRegex.test(phone)) {
        if($(".phone_msg").length == 0) {
          $(this).after('<span class="phone_msg msg-error">手机号格式不正确</span>');
        } else {
          $(".phone_msg").html("手机号格式不正确");
          $(".phone_msg").attr("class", "phone_msg msg-error");
        }
        return false;
      } else {
        // 检查手机号是否已被占用
        $.ajax({
          url: "../user/checkPhone.do",
          data: "phone=" + phone,
          type: "get",
          dataType: "json",
          success: function(obj) {
            if($(".phone_msg").length == 0) {
              $("#phone").after('<span class="phone_msg">' + obj.message + '</span>');
            } else {
              $(".phone_msg").html(obj.message);
            }

            if(obj.state == 0) {
              $(".phone_msg").attr("class", "phone_msg msg-error");
            } else {
              $(".phone_msg").attr("class", "phone_msg msg-success");
            }
          }
        });
      }
    }).focus(function() {
      if($(".phone_msg").length == 0) {
        $(this).after('<span class="phone_msg msg-default">请输入合法的手机号</span>');
      } else {
        $(".phone_msg").html("请输入合法的手机号");
        $(".phone_msg").attr("class", "phone_msg msg-default");
      }
    });

    // 修改保存按钮点击处理
    $(".save").click(function() {
      // 验证所有字段是否合法
      var isValid = true;

      // 检查用户名
      if($(".ed_username").is(":visible") && $(".username_msg").hasClass("msg-error")) {
        isValid = false;
      }

      // 检查邮箱
      if($(".ed_email").is(":visible") && $(".email_msg").hasClass("msg-error")) {
        isValid = false;
      }

      // 检查手机号
      if($(".phone_msg").hasClass("msg-error")) {
        isValid = false;
      }

      if(!isValid) {
        alert("请正确填写所有信息！");
        return;
      }

      // 获取表单数据
      var username = $(".ed_username").is(":visible") ? $(".ed_username").val() : $(".rs_username").text();
      var gender = $(".man").hasClass("selected") ? 1 : 0;
      var phone = $("#phone").val();
      var email = $(".ed_email").is(":visible") ? $(".ed_email").val() : $(".rs_mail").text();

      // 发送AJAX请求更新用户信息
      $.ajax({
        url: "../user/updateUserInfo.do",
        type: "POST",
        data: {
          username: username,
          gender: gender,
          phone: phone,
          email: email
        },
        dataType: "json",
        success: function(response) {
          if(response.state == 1) {
            // 更新成功，刷新页面
            alert(response.message);
            location.reload();
          } else {
            // 更新失败
            alert(response.message);
          }
        },
        error: function() {
          alert("网络异常，请稍后重试！");
        }
      });
    });
  });
</script>
</html>