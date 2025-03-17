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

    /**
     * 通过ID查询用户
     * @param id 用户ID
     * @return 用户数据
     */
    TUser selectUserById(Integer id);

    /**
     * 更新用户信息
     * @param user 要更新的用户数据
     * @return 受影响的行数
     */
    Integer updateUser(TUser user);


}
