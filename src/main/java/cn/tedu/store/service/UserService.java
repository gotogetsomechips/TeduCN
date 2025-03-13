package cn.tedu.store.service;

import cn.tedu.store.mapper.UserMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class UserService implements IUserService {

    @Resource
    private UserMapper userMapper;

    @Override
    public boolean checkUserName(String userName) {
        return userMapper.selectUserByUserName(userName) != null;
    }
}
