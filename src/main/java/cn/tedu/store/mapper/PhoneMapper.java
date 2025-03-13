package cn.tedu.store.mapper;

import cn.tedu.store.bean.TUser;

public interface PhoneMapper {

    TUser selectUserByPhone(String phone);
}
