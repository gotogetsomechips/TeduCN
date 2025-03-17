package cn.tedu.store.service;

import cn.tedu.store.bean.DeliveryAddress;
import java.util.List;

public interface IAddressService {
    /**
     * 获取用户的地址列表
     * @param userId 用户ID
     * @return 地址列表
     */
    List<DeliveryAddress> getAddressList(Integer userId);

    /**
     * 添加新地址
     * @param address 地址数据
     * @return 添加后的地址（包含ID）
     */
    DeliveryAddress addAddress(DeliveryAddress address);

    /**
     * 更新地址
     * @param address 地址数据
     * @return 更新后的地址
     */
    DeliveryAddress updateAddress(DeliveryAddress address);

    /**
     * 删除地址
     * @param id 地址ID
     * @param userId 用户ID（用于验证地址所有权）
     * @return 是否成功删除
     */
    boolean deleteAddress(Integer id, Integer userId);

    /**
     * 设置默认地址
     * @param id 地址ID
     * @param userId 用户ID（用于验证地址所有权）
     * @return 是否成功设置默认地址
     */
    boolean setDefaultAddress(Integer id, Integer userId);

    /**
     * 获取地址详情
     * @param id 地址ID
     * @return 地址详情
     */
    DeliveryAddress getAddressById(Integer id);

    /**
     * 获取用户的默认地址
     * @param userId 用户ID
     * @return 默认地址
     */
    DeliveryAddress getDefaultAddress(Integer userId);
}