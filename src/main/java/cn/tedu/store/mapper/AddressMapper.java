package cn.tedu.store.mapper;

import cn.tedu.store.bean.DeliveryAddress;
import java.util.List;

public interface AddressMapper {
    /**
     * 通过用户ID查询地址列表
     * @param userId 用户ID
     * @return 地址列表
     */
    List<DeliveryAddress> selectAddressByUserId(Integer userId);

    /**
     * 通过地址ID查询地址
     * @param id 地址ID
     * @return 地址数据
     */
    DeliveryAddress selectAddressById(Integer id);

    /**
     * 插入新地址
     * @param address 地址数据
     * @return 受影响的行数
     */
    Integer insertAddress(DeliveryAddress address);

    /**
     * 更新地址
     * @param address 地址数据
     * @return 受影响的行数
     */
    Integer updateAddress(DeliveryAddress address);

    /**
     * 删除地址
     * @param id 地址ID
     * @return 受影响的行数
     */
    Integer deleteAddress(Integer id);

    /**
     * 将用户的所有地址设置为非默认
     * @param userId 用户ID
     * @return 受影响的行数
     */
    Integer updateNonDefaultByUserId(Integer userId);

    /**
     * 设置默认地址
     * @param id 地址ID
     * @return 受影响的行数
     */
    Integer updateDefaultAddress(Integer id);

    /**
     * 获取用户的默认地址
     * @param userId 用户ID
     * @return 默认地址
     */
    DeliveryAddress selectDefaultAddress(Integer userId);
}