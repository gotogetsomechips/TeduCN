package cn.tedu.store.service;

public interface IEmailService {
    /**
     * 验证邮箱是否存在
     * @param email
     * @return
     */

    boolean checkEmail(String email);
}
