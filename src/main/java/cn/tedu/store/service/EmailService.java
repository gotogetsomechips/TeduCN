package cn.tedu.store.service;

import cn.tedu.store.mapper.EmailMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
@Service
public class EmailService implements IEmailService {

    @Resource
    private EmailMapper emailMapper;

    @Override
    public boolean checkEmail(String email) {
        return emailMapper.selectUserByEmail(email) != null;
    }
}
