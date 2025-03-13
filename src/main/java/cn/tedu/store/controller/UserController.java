package cn.tedu.store.controller;

import cn.tedu.store.bean.ResponseResult;
import cn.tedu.store.service.IEmailService;
import cn.tedu.store.service.IPhoneService;
import cn.tedu.store.service.IUserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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

    @Resource
    private IEmailService emailService;

    //验证邮箱是否存在
    @RequestMapping("/checkEmail.do")
    @ResponseBody
    public ResponseResult<Void> checkEmail(String email) {
        ResponseResult<Void> result1 = new ResponseResult<>();
        boolean b = emailService.checkEmail(email);
        if(b){
            result1.setState(0);
            result1.setMessage("邮箱已经存在！");
        }else {
            result1.setState(1);
            result1.setMessage("邮箱可以使用！");
        }
        return result1;
    }

    @Resource
    private IPhoneService phoneService;

    //验证手机号是否存在
    @RequestMapping("/checkPhone.do")
    @ResponseBody
    public ResponseResult<Void> checkPhone(String phone) {
        ResponseResult<Void> result2 = new ResponseResult<>();
        boolean b = phoneService.checkPhone(phone);
        if(b){
            result2.setState(0);
            result2.setMessage("手机号已经存在！");
        }else {
            result2.setState(1);
            result2.setMessage("手机号可以使用！");
        }
        return result2;
    }
    @RequestMapping("showRegister.do")
    public String showRegister(){
        return "register";
    }
}
