package cn.tedu.store.controller;

import cn.tedu.store.bean.ResponseResult;
import cn.tedu.store.bean.TUser;
import cn.tedu.store.service.IUserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

@Controller
@RequestMapping("/user")
public class UserController {

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

    @RequestMapping("showRegister.do")
    public String showRegister(){
        return "register";
    }
    @RequestMapping("showLogin.do")
    public String showLogin(){
        return "login";
    }
}
