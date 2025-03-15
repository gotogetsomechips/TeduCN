package cn.tedu.store.service;

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
}
