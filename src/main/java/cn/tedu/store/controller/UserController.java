package cn.tedu.store.controller;

import cn.tedu.store.bean.ResponseResult;
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

    @RequestMapping("showRegister.do")
    public String showRegister(){
        return "register";
    }
}
