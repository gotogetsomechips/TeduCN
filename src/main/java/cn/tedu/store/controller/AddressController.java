package cn.tedu.store.controller;

import cn.tedu.store.bean.DeliveryAddress;
import cn.tedu.store.bean.ResponseResult;
import cn.tedu.store.bean.TUser;
import cn.tedu.store.service.IAddressService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/address")
public class AddressController {

    @Resource
    private IAddressService addressService;

    @RequestMapping("/list.do")
    @ResponseBody
    public ResponseResult<List<DeliveryAddress>> getAddressList(HttpSession session) {
        ResponseResult<List<DeliveryAddress>> result = new ResponseResult<>();

        // 从session获取登录用户
        TUser loginUser = (TUser) session.getAttribute("loginUser");

        // 用户未登录
        if (loginUser == null) {
            result.setState(0);
            result.setMessage("请先登录！");
            return result;
        }

        // 获取地址列表
        List<DeliveryAddress> addresses = addressService.getAddressList(loginUser.getId());

        result.setState(1);
        result.setMessage("查询成功！");
        result.setData(addresses);

        return result;
    }

    @RequestMapping(value = "/add.do", method = RequestMethod.POST)
    @ResponseBody
    public ResponseResult<DeliveryAddress> addAddress(DeliveryAddress address, HttpSession session) {
        ResponseResult<DeliveryAddress> result = new ResponseResult<>();

        // 从session获取登录用户
        TUser loginUser = (TUser) session.getAttribute("loginUser");

        // 用户未登录
        if (loginUser == null) {
            result.setState(0);
            result.setMessage("请先登录！");
            return result;
        }

        // 设置当前用户ID
        address.setUserId(loginUser.getId());

        try {
            // 添加地址
            DeliveryAddress newAddress = addressService.addAddress(address);

            result.setState(1);
            result.setMessage("添加成功！");
            result.setData(newAddress);
        } catch (Exception e) {
            result.setState(0);
            result.setMessage("添加失败：" + e.getMessage());
        }

        return result;
    }

    @RequestMapping(value = "/update.do", method = RequestMethod.POST)
    @ResponseBody
    public ResponseResult<DeliveryAddress> updateAddress(DeliveryAddress address, HttpSession session) {
        ResponseResult<DeliveryAddress> result = new ResponseResult<>();

        // 从session获取登录用户
        TUser loginUser = (TUser) session.getAttribute("loginUser");

        // 用户未登录
        if (loginUser == null) {
            result.setState(0);
            result.setMessage("请先登录！");
            return result;
        }

        // 设置当前用户ID
        address.setUserId(loginUser.getId());

        try {
            // 更新地址
            DeliveryAddress updatedAddress = addressService.updateAddress(address);

            if (updatedAddress != null) {
                result.setState(1);
                result.setMessage("更新成功！");
                result.setData(updatedAddress);
            } else {
                result.setState(0);
                result.setMessage("更新失败：地址不存在或不属于当前用户");
            }
        } catch (Exception e) {
            result.setState(0);
            result.setMessage("更新失败：" + e.getMessage());
        }

        return result;
    }

    @RequestMapping("/delete.do")
    @ResponseBody
    public ResponseResult<Void> deleteAddress(Integer id, HttpSession session) {
        ResponseResult<Void> result = new ResponseResult<>();

        // 从session获取登录用户
        TUser loginUser = (TUser) session.getAttribute("loginUser");

        // 用户未登录
        if (loginUser == null) {
            result.setState(0);
            result.setMessage("请先登录！");
            return result;
        }

        try {
            // 删除地址
            boolean success = addressService.deleteAddress(id, loginUser.getId());

            if (success) {
                result.setState(1);
                result.setMessage("删除成功！");
            } else {
                result.setState(0);
                result.setMessage("删除失败：地址不存在或不属于当前用户");
            }
        } catch (Exception e) {
            result.setState(0);
            result.setMessage("删除失败：" + e.getMessage());
        }

        return result;
    }

    @RequestMapping("/setDefault.do")
    @ResponseBody
    public ResponseResult<Void> setDefaultAddress(Integer id, HttpSession session) {
        ResponseResult<Void> result = new ResponseResult<>();

        // 从session获取登录用户
        TUser loginUser = (TUser) session.getAttribute("loginUser");

        // 用户未登录
        if (loginUser == null) {
            result.setState(0);
            result.setMessage("请先登录！");
            return result;
        }

        try {
            // 设置默认地址
            boolean success = addressService.setDefaultAddress(id, loginUser.getId());

            if (success) {
                result.setState(1);
                result.setMessage("设置成功！");
            } else {
                result.setState(0);
                result.setMessage("设置失败：地址不存在或不属于当前用户");
            }
        } catch (Exception e) {
            result.setState(0);
            result.setMessage("设置失败：" + e.getMessage());
        }

        return result;
    }
}