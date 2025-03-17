package cn.tedu.store.service;

import cn.tedu.store.bean.DeliveryAddress;
import cn.tedu.store.mapper.AddressMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.sql.Date;
import java.util.List;

@Service
public class AddressService implements IAddressService {

    @Resource
    private AddressMapper addressMapper;

    @Override
    public List<DeliveryAddress> getAddressList(Integer userId) {
        return addressMapper.selectAddressByUserId(userId);
    }

    @Override
    @Transactional
    public DeliveryAddress addAddress(DeliveryAddress address) {
        // 设置创建时间和修改时间
        Date now = new Date(System.currentTimeMillis());
        address.setCreatedTime(now);
        address.setModifiedTime(now);

        // 如果是默认地址，则先将该用户的所有地址设为非默认
        if (address.getIsDefault() != null && address.getIsDefault() == 1) {
            addressMapper.updateNonDefaultByUserId(address.getUserId());
        }

        // 插入地址
        addressMapper.insertAddress(address);

        // 返回插入后的地址（包含ID）
        return addressMapper.selectAddressById(address.getId());
    }

    @Override
    @Transactional
    public DeliveryAddress updateAddress(DeliveryAddress address) {
        // 获取原始地址信息
        DeliveryAddress originalAddress = addressMapper.selectAddressById(address.getId());

        // 如果地址不存在或不属于当前用户，则返回null
        if (originalAddress == null || !originalAddress.getUserId().equals(address.getUserId())) {
            return null;
        }

        // 设置修改时间
        address.setModifiedTime(new Date(System.currentTimeMillis()));

        // 如果设置为默认地址，则先将该用户的所有地址设为非默认
        if (address.getIsDefault() != null && address.getIsDefault() == 1) {
            addressMapper.updateNonDefaultByUserId(address.getUserId());
        }

        // 更新地址
        addressMapper.updateAddress(address);

        // 返回更新后的地址
        return addressMapper.selectAddressById(address.getId());
    }

    @Override
    @Transactional
    public boolean deleteAddress(Integer id, Integer userId) {
        // 获取地址信息
        DeliveryAddress address = addressMapper.selectAddressById(id);

        // 如果地址不存在或不属于当前用户，则返回false
        if (address == null || !address.getUserId().equals(userId)) {
            return false;
        }

        // 删除地址
        return addressMapper.deleteAddress(id) > 0;
    }

    @Override
    @Transactional
    public boolean setDefaultAddress(Integer id, Integer userId) {
        // 获取地址信息
        DeliveryAddress address = addressMapper.selectAddressById(id);

        // 如果地址不存在或不属于当前用户，则返回false
        if (address == null || !address.getUserId().equals(userId)) {
            return false;
        }

        // 先将该用户的所有地址设为非默认
        addressMapper.updateNonDefaultByUserId(userId);

        // 设置当前地址为默认地址
        return addressMapper.updateDefaultAddress(id) > 0;
    }

    @Override
    public DeliveryAddress getAddressById(Integer id) {
        return addressMapper.selectAddressById(id);
    }

    @Override
    public DeliveryAddress getDefaultAddress(Integer userId) {
        return addressMapper.selectDefaultAddress(userId);
    }
}