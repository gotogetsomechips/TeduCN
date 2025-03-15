package cn.tedu.store.mapper;

import cn.tedu.store.bean.TUser;

public interface UserMapper {

    TUser selectUserByUserName(String userName);

    TUser selectUserByPhone(String phone);

    TUser selectUserByEmail(String email);

    /**
     * 插入用户数据
     * @param user 用户数据
     * @return 受影响的行数
     */
    Integer insertUser(TUser user);
}
