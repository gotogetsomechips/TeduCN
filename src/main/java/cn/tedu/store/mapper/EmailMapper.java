package cn.tedu.store.mapper;

import cn.tedu.store.bean.TUser;

public interface EmailMapper {

    TUser selectUserByEmail(String email);
}
