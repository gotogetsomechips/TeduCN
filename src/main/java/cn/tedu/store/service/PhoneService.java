package cn.tedu.store.service;

import cn.tedu.store.mapper.PhoneMapper;

import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class PhoneService implements IPhoneService {

    @Resource
    private PhoneMapper phoneMapper;

    @Override
    public boolean checkPhone(String phone) {
        return phoneMapper.selectUserByPhone(phone) != null;
    }
}
