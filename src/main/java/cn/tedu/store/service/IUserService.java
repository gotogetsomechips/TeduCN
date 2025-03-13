package cn.tedu.store.service;

public interface IUserService {
    /**
     * 验证用户名是否存在
     * @param userName
     * @return
     */

    boolean checkUserName(String userName);
}
