<%--
  Created by IntelliJ IDEA.
  User: Universec
  Date: 2025/3/13
  Time: 10:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head lang="en">
  <meta charset="UTF-8">
  <title>学子商城注册页面</title>
  <link href="../css/header.css" rel="stylesheet"/>
  <link href="../css/footer.css" rel="stylesheet"/>
  <link href="../css/animate.css" rel="stylesheet"/>
  <link href="../css/login.css" rel="stylesheet" />
</head>
<body>
<!-- 页面顶部-->
<header id="top">
  <div class="top">
    <img src="../images/header/logo.png" alt=""/>
    <span>欢迎注册</span>
  </div>
</header>
<div class="parent">
  <!--<video src="audio/snow.mp4" width="100%" autoplay loop muted></video>-->
  <div class="container">
    <div class="panel rt">
      <form id="form-register" method="post" action="">
        <div class="txt">
          <p>新用户注册
            <span>
              <a href="../user/showLogin.do">直接登录</a>
            </span>
          </p>
        </div>
        <div class="form-group">
          <label for="uname">用户名：</label>
          <input autocomplete required minlength="6" maxlength="9" type="text" placeholder="请输入用户名" autofocus name="uname" id="uname"/>
          <span class="msg-default" id = "unamespan">用户名长度在6到9位之间</span>
        </div>
        <div class="form-group">
          <label for="upwd">登录密码：</label>
          <input required type="password" minlength="6" maxlength="12" placeholder="请输入密码" name="upwd" autofocus id="upwd"/>
          <span class="msg-default hidden">密码长度在6到12位之间</span>
        </div>
        <div class="form-group">
          <label for="upwdconfirm">确认密码：</label>
          <input required type="password" minlength="6" maxlength="12" placeholder="请确认密码" name="upwdconfirm" autofocus id="upwdconfirm"/>
          <span class="msg-default hidden">密码长度在6到12位之间</span>
        </div>
        <div class="form-group">
          <label for="email">邮箱：</label>
          <input autocomplete required type="email" placeholder="请输入邮箱地址" name="email" id="email"/>
          <span class="msg-default hidden" id="emailspan">请输入合法的邮箱地址</span>
        </div>
        <div class="form-group">
          <label for="phone">手机号：</label>
          <input id="phone" name="phone" placeholder="请输入您的手机号" pattern="(\d{11})|^((\d{7,8})|(\d{4}|\d{3})-(\d{7,8})|(\d{4}|\d{3})-(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1})|(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1}))$" required type="text" />
          <span class="msg-default hidden" id="phonespan">请输入合法的手机号</span>
        </div>
        <div class="form-group">
          <label></label>
          <input type="button" value="提交注册信息" id="bt-register"/>
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
        <li><a href="#">关于达内</li>
        <li><a href="#">联系我们</a></li>
        <li>
          <img src="../images/footer/wechat.png" alt=""/>
          <img src="../images/footer/sinablog.png" alt=""/>
        </li>
      </ul>
    </div>
    <div class="service">
      <p>商城客户端</p>
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
<!--弹出的小广告-->
<script src="../js/jquery-3.1.1.min.js"></script>
<script>
  $('#bt-register').click(function(){
    var lengths = 0;
    $('.form-group').each(function(){
      if($(this).find('span').hasClass('msg-success')){
        lengths++;
      }
    });

    // 如果所有字段验证通过
    if(lengths == 5){ // 用户名、密码、确认密码、邮箱、手机号五个字段
      // 检查两次密码是否一致
      if($("#upwd").val() !== $("#upwdconfirm").val()){
        alert("两次输入的密码不一致！");
        return;
      }

      // 准备表单数据
      var userData = {
        username: $("#uname").val(),
        password: $("#upwd").val(),
        email: $("#email").val(),
        phone: $("#phone").val(),
        gender: 0 // 默认性别值，您可以根据需要修改或添加性别选择
      };

      // 发送AJAX请求
      $.ajax({
        url: "../user/register.do",
        type: "post",
        data: userData,
        dataType: "json",
        success: function(result){
          if(result.state == 1){
            // 注册成功
            alert("注册成功！");
            // 跳转到登录页面
            window.location.href = '../user/showLogin.do';
          } else {
            // 注册失败
            alert(result.message);
          }
        },
        error: function(){
          alert("服务器异常，请稍后再试！");
        }
      });
    } else {
      alert("请正确填写所有注册信息！");
    }
  });
</script>
<script>
  /*1.对用户名进行验证*/
  uname.onblur = function(){
    if(this.validity.valueMissing){
      this.nextElementSibling.innerHTML = '用户名不能为空';
      this.nextElementSibling.className = 'msg-error';
      this.setCustomValidity('用户名不能为空');
    }else if(this.validity.tooShort){
      this.nextElementSibling.innerHTML = '用户名不能少于6位';
      this.nextElementSibling.className = 'msg-error';
      this.setCustomValidity('用户名不能少于6位');
    }else {
      this.nextElementSibling.innerHTML = '用户名格式正确';
      this.nextElementSibling.className = 'msg-success';
      this.setCustomValidity('');
      var data =document.getElementById("uname").value;
      if(!data){   //用户没有输入任何内容
        return;
      }
      /**发起异步GET请求，询问服务器用户名是否已经存在**/
      $.ajax({
        url:"../user/checkUsername.do",
        data:"username="+$("#uname").val(),
        type:"get",
        dataType:"json",
        success:function (obj) {
          // alert(obj.state+","+obj.message);
          $("#unamespan").html(obj.message);
          if(obj.state==0){
            $("#unamespan").attr("class","msg-error");
          }else {
            $("#unamespan").attr("class","msg-success");
          }
        }

      });
      //         //1 创建xhr
      // var xhr = new XMLHttpRequest();
      // console.log(xhr);
      // //2 监听状态改变 01234，4最有价值
      // xhr.onreadystatechange = function(){
      //   if(xhr.readyState===4){//响应完成
      //     if(xhr.status===200){
      //       console.log('响应完成且成功');
      //       doResponse(xhr);
      //     }
      //     else {
      //       console.log('响应完成但有问题');
      //     }
      //   }
      // }
      // //3 打开连接
      // xhr.open('GET','/checkUsername.html?username='+data, true);
      // //4 发送请求
      // xhr.send(null);
      //
      // //处理响应消息
      // function doResponse(xhr){
      //   console.log('开始处理响应数据');
      //   //console.log(xhr);
      //   if(xhr.responseText==='yes'){
      //     alert('该用户名已被占用');
      //   }else if(xhr.responseText==='no'){
      //     alert('该用户名可以使用');
      //   }else {
      //     alert(xhr.responseText);
      //   }
      // }
    }
  }

  uname.onfocus = function(){
    this.nextElementSibling.innerHTML = '用户名长度在6到9位之间';
    this.nextElementSibling.className = 'msg-default';
  }
  upwd.onfocus = function(){
    this.nextElementSibling.innerHTML = '密码长度在6到12位之间';
    this.nextElementSibling.className = 'msg-default';
  }
  upwd.onblur = function(){
    if(this.validity.valueMissing){
      this.nextElementSibling.innerHTML = '密码不能为空';
      this.nextElementSibling.className = 'msg-error';
      this.setCustomValidity('密码不能为空');
    }else if(this.validity.tooShort){
      this.nextElementSibling.innerHTML = '密码长度在尽量别少于6位';
      this.nextElementSibling.className = 'msg-error';
      this.setCustomValidity('密码长度在尽量别少于6位');
    }else {
      this.nextElementSibling.innerHTML = '密码格式正确';
      this.nextElementSibling.className = 'msg-success';
      this.setCustomValidity('');
    }
  }


  upwdconfirm.onblur = function(){
    if(this.validity.valueMissing){
      this.nextElementSibling.innerHTML = '密码不能为空';
      this.nextElementSibling.className = 'msg-error';
      this.setCustomValidity('密码不能为空');
    }else if(this.validity.tooShort){
      this.nextElementSibling.innerHTML = '密码长度在尽量别少于6位';
      this.nextElementSibling.className = 'msg-error';
      this.setCustomValidity('密码长度在尽量别少于6位');
    }else if(this.value !== upwd.value){
      this.nextElementSibling.innerHTML = '两次密码输入不一致';
      this.nextElementSibling.className = 'msg-error';
      this.setCustomValidity('两次密码输入不一致');
    }else {
      this.nextElementSibling.innerHTML = '密码格式正确';
      this.nextElementSibling.className = 'msg-success';
      this.setCustomValidity('');
    }
  }

  /*3.对邮箱地址进行验证*/
  email.onblur = function(){
    if(this.validity.valueMissing){
      this.nextElementSibling.innerHTML = '邮箱不能为空';
      this.nextElementSibling.className = 'msg-error';
      this.setCustomValidity('邮箱不能为空');
    }else if(this.validity.typeMismatch){
      this.nextElementSibling.innerHTML = '邮箱格式不正确';
      this.nextElementSibling.className = 'msg-error';
      this.setCustomValidity('邮箱格式不正确');
    }else {
      this.nextElementSibling.innerHTML = '邮箱格式正确';
      this.nextElementSibling.className = 'msg-success';
      this.setCustomValidity('');

      var data =document.getElementById("email").value;
      if(!data){   //用户没有输入任何内容
        return;
      }
      /**发起异步GET请求，询问服务器用户名是否已经存在**/
      $.ajax({
        url:"../user/checkEmail.do",
        data:"email="+$("#email").val(),
        type:"get",
        dataType:"json",
        success:function (obj) {
          // alert(obj.state+","+obj.message);
          $("#emailspan").html(obj.message);
          if(obj.state==0){
            $("#emailspan").attr("class","msg-error");
          }else {
            $("#emailspan").attr("class","msg-success");
          }
        }
      });
      //         //1 创建xhr
      // var xhr = new XMLHttpRequest();
      // //2 监听状态改变 01234，4最有价值
      // xhr.onreadystatechange = function(){
      //   if(xhr.readyState===4){//响应完成
      //     if(xhr.status===200){
      //       console.log('响应完成且成功');
      //       doResponse(xhr);
      //     }
      //     else {
      //       console.log('响应完成但有问题');
      //     }
      //   }
      // }
      // //3 打开连接
      // xhr.open('GET','/checkEmail.html?email='+data, true);
      // //4 发送请求
      // xhr.send(null);
      //
      // //处理响应消息
      // function doResponse(xhr){
      //   console.log('开始处理响应数据');
      //   //console.log(xhr);
      //   if(xhr.responseText==='yes'){
      //     alert('该邮箱已被占用');
      //   }else if(xhr.responseText==='no'){
      //     alert('该邮箱可以使用');
      //   }else {
      //     alert(xhr.responseText);
      //   }
      // }
    }
  }
  email.onfocus = function(){
    this.nextElementSibling.innerHTML = '请输入合法的邮箱地址';
    this.nextElementSibling.className = 'msg-default';
  }
  /*3.对手机号进行验证*/
  phone.onblur = function(){
    if(this.validity.valueMissing){
      this.nextElementSibling.innerHTML = '手机号不能为空';
      this.nextElementSibling.className = 'msg-error';
      this.setCustomValidity('手机号不能为空');
    }else if(this.validity.patternMismatch){
      this.nextElementSibling.innerHTML = '手机号格式不正确';
      this.nextElementSibling.className = 'msg-error';
      this.setCustomValidity('手机号格式不正确');
    }else {
      this.nextElementSibling.innerHTML = '手机号格式正确';
      this.nextElementSibling.className = 'msg-success';
      this.setCustomValidity('');

      var data =document.getElementById("phone").value;
      if(!data){   //用户没有输入任何内容
        return;
      }
      /**发起异步GET请求，询问服务器用户名是否已经存在**/
      $.ajax({
        url:"../user/checkPhone.do",
        data:"phone="+$("#phone").val(),
        type:"get",
        dataType:"json",
        success:function (obj) {
          // alert(obj.state+","+obj.message);
          $("#phonespan").html(obj.message);
          if(obj.state==0){
            $("#phonespan").attr("class","msg-error");
          }else {
            $("#phonespan").attr("class","msg-success");
          }
        }
      });
      //
      //         //1 创建xhr
      // var xhr = new XMLHttpRequest();
      // //2 监听状态改变 01234，4最有价值
      // xhr.onreadystatechange = function(){
      //   if(xhr.readyState===4){//响应完成
      //     if(xhr.status===200){
      //       console.log('响应完成且成功');
      //       doResponse(xhr);
      //     }
      //     else{
      //       console.log('响应完成但有问题');
      //     }
      //   }
      // }
      // //3 打开连接
      // xhr.open('GET','/checkPhone.html?phone='+data, true);
      // //4 发送请求
      // xhr.send(null);
      //
      // //处理响应消息
      // function doResponse(xhr){
      //   console.log('开始处理响应数据');
      //   //console.log(xhr);
      //   if(xhr.responseText==='yes'){
      //     alert('该号码已被占用');
      //   }else if(xhr.responseText==='no'){
      //     alert('该号码可以使用');
      //   }else {
      //     alert(xhr.responseText);
      //   }
      // }
    }
  }
  phone.onfocus = function(){
    this.nextElementSibling.innerHTML = '请输入合法的手机号';
    this.nextElementSibling.className = 'msg-default';
  }
</script>
</body>
</html>
