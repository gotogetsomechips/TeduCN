package cn.tedu.store.bean;

import java.io.Serializable;
import java.sql.Date;
import java.util.Objects;

public class DeliveryAddress implements Serializable {
    private static final long serialVersionUID = 1L;
    private Integer id;
    private Integer userId;
    private String addressName;
    private String recipientName;
    private String addressDetails;
    private String postalCode;
    private String phone;
    private Integer isDefault;
    private String provinceCode;    // 新增字段
    private String cityCode;        // 新增字段
    private String districtCode;    // 新增字段
    private java.sql.Date createdTime;
    private java.sql.Date modifiedTime;

    // 无参构造函数
    public DeliveryAddress() {
    }

    // 全参构造函数
    public DeliveryAddress(Integer id, Integer userId, String addressName, String recipientName,
                           String addressDetails, String postalCode, String phone, Integer isDefault,
                           String provinceCode, String cityCode, String districtCode,
                           Date createdTime, Date modifiedTime) {
        this.id = id;
        this.userId = userId;
        this.addressName = addressName;
        this.recipientName = recipientName;
        this.addressDetails = addressDetails;
        this.postalCode = postalCode;
        this.phone = phone;
        this.isDefault = isDefault;
        this.provinceCode = provinceCode;
        this.cityCode = cityCode;
        this.districtCode = districtCode;
        this.createdTime = createdTime;
        this.modifiedTime = modifiedTime;
    }

    // getters和setters
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getAddressName() {
        return addressName;
    }

    public void setAddressName(String addressName) {
        this.addressName = addressName;
    }

    public String getRecipientName() {
        return recipientName;
    }

    public void setRecipientName(String recipientName) {
        this.recipientName = recipientName;
    }

    public String getAddressDetails() {
        return addressDetails;
    }

    public void setAddressDetails(String addressDetails) {
        this.addressDetails = addressDetails;
    }

    public String getPostalCode() {
        return postalCode;
    }

    public void setPostalCode(String postalCode) {
        this.postalCode = postalCode;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Integer getIsDefault() {
        return isDefault;
    }

    public void setIsDefault(Integer isDefault) {
        this.isDefault = isDefault;
    }

    public String getProvinceCode() {
        return provinceCode;
    }

    public void setProvinceCode(String provinceCode) {
        this.provinceCode = provinceCode;
    }

    public String getCityCode() {
        return cityCode;
    }

    public void setCityCode(String cityCode) {
        this.cityCode = cityCode;
    }

    public String getDistrictCode() {
        return districtCode;
    }

    public void setDistrictCode(String districtCode) {
        this.districtCode = districtCode;
    }

    public Date getCreatedTime() {
        return createdTime;
    }

    public void setCreatedTime(Date createdTime) {
        this.createdTime = createdTime;
    }

    public Date getModifiedTime() {
        return modifiedTime;
    }

    public void setModifiedTime(Date modifiedTime) {
        this.modifiedTime = modifiedTime;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        DeliveryAddress that = (DeliveryAddress) o;
        return Objects.equals(id, that.id) &&
                Objects.equals(userId, that.userId) &&
                Objects.equals(addressName, that.addressName) &&
                Objects.equals(recipientName, that.recipientName) &&
                Objects.equals(addressDetails, that.addressDetails) &&
                Objects.equals(postalCode, that.postalCode) &&
                Objects.equals(phone, that.phone) &&
                Objects.equals(isDefault, that.isDefault) &&
                Objects.equals(provinceCode, that.provinceCode) &&
                Objects.equals(cityCode, that.cityCode) &&
                Objects.equals(districtCode, that.districtCode) &&
                Objects.equals(createdTime, that.createdTime) &&
                Objects.equals(modifiedTime, that.modifiedTime);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, userId, addressName, recipientName, addressDetails, postalCode,
                phone, isDefault, provinceCode, cityCode, districtCode, createdTime, modifiedTime);
    }

    @Override
    public String toString() {
        return "DeliveryAddress{" +
                "id=" + id +
                ", userId=" + userId +
                ", addressName='" + addressName + '\'' +
                ", recipientName='" + recipientName + '\'' +
                ", addressDetails='" + addressDetails + '\'' +
                ", postalCode='" + postalCode + '\'' +
                ", phone='" + phone + '\'' +
                ", isDefault=" + isDefault +
                ", provinceCode='" + provinceCode + '\'' +
                ", cityCode='" + cityCode + '\'' +
                ", districtCode='" + districtCode + '\'' +
                ", createdTime=" + createdTime +
                ", modifiedTime=" + modifiedTime +
                '}';
    }
}