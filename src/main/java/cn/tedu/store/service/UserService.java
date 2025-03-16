package cn.tedu.store.service;

import cn.tedu.store.bean.TUser;
import cn.tedu.store.mapper.UserMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;

@Service
public class UserService implements IUserService {

    @Resource
    private UserMapper userMapper;

    @Override
    public boolean checkUserName(String userName) {
        return userMapper.selectUserByUserName(userName) != null;
    }

    @Override
    public boolean checkEmail(String email) {
        return userMapper.selectUserByEmail(email) != null;
    }

    @Override
    public boolean checkPhone(String phone) {
        return userMapper.selectUserByPhone(phone) != null;
    }

    @Override
    public TUser register(TUser user) {
        // 再次检查用户名、邮箱、手机号是否存在的代码保持不变...

        // 设置创建时间和修改时间
        java.sql.Date now = new java.sql.Date(System.currentTimeMillis());
        user.setCreatedTime(now);
        user.setModifiedTime(now);

        // 设置创建用户和修改用户
        user.setCreatedUser(user.getUsername());
        user.setModifiedUser(user.getUsername());

        // 插入用户数据
        userMapper.insertUser(user);

        // 返回注册成功的用户数据
        return user;
    }

    @Override
    public TUser login(String username, String password) {
        // 根据用户名查询用户
        TUser user = userMapper.selectUserByUserName(username);

        // 判断用户是否存在且密码是否匹配
        if (user != null && user.getPassword().equals(password)) {
            return user; // 登录成功
        }

        return null; // 登录失败
    }
}
