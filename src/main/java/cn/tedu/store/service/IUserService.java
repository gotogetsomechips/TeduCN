package cn.tedu.store.service;

import cn.tedu.store.bean.TUser;

public interface IUserService {
    /**
     * 验证用户名是否存在
     * @param userName
     * @return
     */

    boolean checkUserName(String userName);
    /**
     * 验证手机号是否存在
     * @param phone
     * @return
     */

    boolean checkPhone(String phone);
    /**
     * 验证邮箱是否存在
     * @param email
     * @return
     */

    boolean checkEmail(String email);


    /**
     * 用户注册
     * @param user 用户数据
     * @return 注册成功的用户数据
     */
    TUser register(TUser user);

    /**
     * 用户登录
     * @param username 用户名
     * @param password 密码
     * @return 登录成功的用户数据
     */
    TUser login(String username, String password);
}
