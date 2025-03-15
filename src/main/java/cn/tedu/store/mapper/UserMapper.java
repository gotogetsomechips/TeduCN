package cn.tedu.store.mapper;

import cn.tedu.store.bean.TUser;

public interface UserMapper {

    TUser selectUserByUserName(String userName);

    TUser selectUserByPhone(String phone);

    TUser selectUserByEmail(String email);
}
