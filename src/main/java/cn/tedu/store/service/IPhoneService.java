package cn.tedu.store.service;

public interface IPhoneService {
    /**
     * 验证手机号是否存在
     * @param phone
     * @return
     */

    boolean checkPhone(String phone);
}
