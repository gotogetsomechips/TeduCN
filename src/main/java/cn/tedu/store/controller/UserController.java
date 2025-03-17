package cn.tedu.store.controller;

import cn.tedu.store.bean.ResponseResult;
import cn.tedu.store.bean.TUser;
import cn.tedu.store.service.IUserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserController {

    @RequestMapping("showRegister.do")
    public String showRegister(){
        return "register";
    }

    @RequestMapping("showLogin.do")
    public String showLogin(){
        return "login";
    }

    @RequestMapping("showIndex.do")
    public String showIndex(){return "index";}

    @RequestMapping("show404.do")
    public String show404(){return "404";}

    @RequestMapping("show500.do")
    public String show500(){return "500";}

    @RequestMapping("showAddressAdmin.do")
    public String showAddressAdmin(){return "addressAdmin";}

    @RequestMapping("showCart.do")
    public String showCart(){return "cart";}

    @RequestMapping("showEmptyOrders.do")
    public String showEmptyOrders(){return "emptyOrders";}

    @RequestMapping("showFavorites.do")
    public String favorites(){return "favorites";}

    @RequestMapping("showHelp.do")
    public String help(){return "help";}

    @RequestMapping("showLookforward.do")
    public String lookforward(){return "lookforward";}

    @RequestMapping("showOrderConfirm.do")
    public String orderConfirm(){return "orderConfirm";}

    @RequestMapping("showOrderInfo.do")
    public String orderInfo(){return "orderInfo";}

    @RequestMapping("showOrders.do")
    public String orders(){return "orders";}

    @RequestMapping("showPay_Fail.do")
    public String payFail(){return "pay_fail";}

    @RequestMapping("showPay_Success.do")
    public String paySuccess(){return "pay_success";}

    @RequestMapping("showPayment.do")
    public String payment(){return "payment";}

    @RequestMapping("showPersonage.do")
    public String personage(HttpSession session, Model model){
        // 从session中获取登录用户信息
        TUser loginUser = (TUser) session.getAttribute("loginUser");

        // 如果用户未登录，重定向到登录页面
        if (loginUser == null) {
            return "redirect:/user/showLogin.do";
        }

        // 将用户信息添加到model中
        model.addAttribute("user", loginUser);
        return "personage";
    }

    @RequestMapping("showPersonal_Password.do")
    public String personagePassword(){return "personal_password";}

    @RequestMapping("showProduct_Details.do")
    public String productDetails(){return "product_details";}

    @RequestMapping("showSearch.do")
    public String search(){return "search";}

    @RequestMapping("/logout.do")
    @ResponseBody
    public ResponseResult<Void> logout(HttpSession session) {
        ResponseResult<Void> result = new ResponseResult<>();
        // 清除 session
        session.invalidate();
        result.setState(1);
        result.setMessage("退出成功！");
        return result;
    }
    @Resource
    private IUserService userService;

    //验证用户是否存在
    @RequestMapping("/checkUsername.do")
    @ResponseBody
    public ResponseResult<Void> checkUsername(String username) {
        ResponseResult<Void> result = new ResponseResult<>();
        boolean b = userService.checkUserName(username);
        if(b){
            result.setState(0);
            result.setMessage("用户名已经存在！");
        }else {
            result.setState(1);
            result.setMessage("用户名可以使用！");
        }
        return result;
    }

    //验证邮箱是否存在
    @RequestMapping("/checkEmail.do")
    @ResponseBody
    public ResponseResult<Void> checkEmail(String email) {
        ResponseResult<Void> result1 = new ResponseResult<>();
        boolean b = userService.checkEmail(email);
        if(b){
            result1.setState(0);
            result1.setMessage("邮箱已经存在！");
        }else {
            result1.setState(1);
            result1.setMessage("邮箱可以使用！");
        }
        return result1;
    }

    //验证手机号是否存在
    @RequestMapping("/checkPhone.do")
    @ResponseBody
    public ResponseResult<Void> checkPhone(String phone) {
        ResponseResult<Void> result2 = new ResponseResult<>();
        boolean b = userService.checkPhone(phone);
        if(b){
            result2.setState(0);
            result2.setMessage("手机号已经存在！");
        }else {
            result2.setState(1);
            result2.setMessage("手机号可以使用！");
        }
        return result2;
    }

    @RequestMapping(value = "/register.do", method = RequestMethod.POST)
    @ResponseBody
    public ResponseResult<TUser> register(TUser user) {
        ResponseResult<TUser> result = new ResponseResult<>();
        try {
            // 调用业务层执行注册
            TUser registeredUser = userService.register(user);
            // 注册成功
            result.setState(1);
            result.setMessage("注册成功！");
            result.setData(registeredUser);
        } catch (Exception e) {
            // 注册失败
            result.setState(0);
            result.setMessage("注册失败：" + e.getMessage());
        }
        return result;
    }

    @RequestMapping(value = "/login.do", method = RequestMethod.POST)
    @ResponseBody
    public ResponseResult<TUser> login(String username, String password, HttpSession session) {
        ResponseResult<TUser> result = new ResponseResult<>();
        try {
            TUser loginUser = userService.login(username, password);
            if (loginUser != null) {
                // 将用户信息存入 HttpSession
                session.setAttribute("loginUser", loginUser);
                result.setState(1);
                result.setMessage("登录成功！");
                result.setData(loginUser);
            } else {
                result.setState(0);
                result.setMessage("用户名或密码错误！");
            }
        } catch (Exception e) {
            result.setState(-1);
            result.setMessage("登录失败：" + e.getMessage());
        }
        return result;
    }

    @RequestMapping(value = "/updateUserInfo.do", method = RequestMethod.POST)
    @ResponseBody
    public ResponseResult<TUser> updateUserInfo(TUser user, HttpSession session) {
        ResponseResult<TUser> result = new ResponseResult<>();
        try {
            // 从session中获取登录用户
            TUser loginUser = (TUser) session.getAttribute("loginUser");

            // 如果用户未登录，返回错误
            if (loginUser == null) {
                result.setState(0);
                result.setMessage("请先登录！");
                return result;
            }

            // 设置用户ID（从session中获取）以确保更新正确的用户
            user.setId(loginUser.getId());

            // 调用服务更新用户信息
            TUser updatedUser = userService.updateUserInfo(user);

            // 用最新的用户信息更新session
            session.setAttribute("loginUser", updatedUser);

            // 返回成功响应
            result.setState(1);
            result.setMessage("个人信息更新成功！");
            result.setData(updatedUser);
        } catch (Exception e) {
            result.setState(0);
            result.setMessage("更新失败：" + e.getMessage());
        }
        return result;
    }

    @RequestMapping(value = "/updatePassword.do", method = RequestMethod.POST)
    @ResponseBody
    public ResponseResult<Void> updatePassword(String oldPassword, String newPassword, HttpSession session) {
        ResponseResult<Void> result = new ResponseResult<>();
        try {
            // 从session中获取登录用户
            TUser loginUser = (TUser) session.getAttribute("loginUser");

            // 如果用户未登录，返回错误
            if (loginUser == null) {
                result.setState(0);
                result.setMessage("请先登录！");
                return result;
            }

            // 验证新密码长度
            if (newPassword.length() < 6 || newPassword.length() > 12) {
                result.setState(0);
                result.setMessage("新密码长度应在6到12位之间！");
                return result;
            }

            // 调用服务更新密码
            boolean success = userService.updatePassword(loginUser.getId(), oldPassword, newPassword);

            if (success) {
                // 密码修改成功，清除session
                session.invalidate();
                result.setState(1);
                result.setMessage("密码修改成功，请重新登录！");
            } else {
                result.setState(0);
                result.setMessage("原密码错误！");
            }
        } catch (Exception e) {
            result.setState(0);
            result.setMessage("密码修改失败：" + e.getMessage());
        }
        return result;
    }
}
