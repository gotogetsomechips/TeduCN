package cn.tedu.store.bean;


import java.io.Serializable;
import java.sql.Date;
import java.util.Objects;

public class TUser implements Serializable {
  private static final long serialVersionUID = 1L;
  private int id;
  private String username;
  private String password;
  private String email;
  private String phone;
  private long gender;
  private String createdUser;
  private java.sql.Date createdTime;
  private String modifiedUser;
  private java.sql.Date modifiedTime;

  public TUser() {
  }

  public TUser(int id, String username, Date modifiedTime, Date createdTime, String modifiedUser, String createdUser, long gender, String phone, String email, String password) {
    this.id = id;
    this.username = username;
    this.modifiedTime = modifiedTime;
    this.createdTime = createdTime;
    this.modifiedUser = modifiedUser;
    this.createdUser = createdUser;
    this.gender = gender;
    this.phone = phone;
    this.email = email;
    this.password = password;
  }

  @Override
  public boolean equals(Object o) {
    if (o == null || getClass() != o.getClass()) return false;
    TUser tUser = (TUser) o;
    return id == tUser.id && gender == tUser.gender && Objects.equals(username, tUser.username) && Objects.equals(password, tUser.password) && Objects.equals(email, tUser.email) && Objects.equals(phone, tUser.phone) && Objects.equals(createdUser, tUser.createdUser) && Objects.equals(createdTime, tUser.createdTime) && Objects.equals(modifiedUser, tUser.modifiedUser) && Objects.equals(modifiedTime, tUser.modifiedTime);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, username, password, email, phone, gender, createdUser, createdTime, modifiedUser, modifiedTime);
  }

  public int getId() {
    return id;
  }

  public void setId(int id) {
    this.id = id;
  }


  public String getUsername() {
    return username;
  }

  public void setUsername(String username) {
    this.username = username;
  }


  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }


  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }


  public String getPhone() {
    return phone;
  }

  public void setPhone(String phone) {
    this.phone = phone;
  }


  public long getGender() {
    return gender;
  }

  public void setGender(long gender) {
    this.gender = gender;
  }


  public String getCreatedUser() {
    return createdUser;
  }

  public void setCreatedUser(String createdUser) {
    this.createdUser = createdUser;
  }


  public java.sql.Date getCreatedTime() {
    return createdTime;
  }

  public void setCreatedTime(java.sql.Date createdTime) {
    this.createdTime = createdTime;
  }


  public String getModifiedUser() {
    return modifiedUser;
  }

  public void setModifiedUser(String modifiedUser) {
    this.modifiedUser = modifiedUser;
  }


  public java.sql.Date getModifiedTime() {
    return modifiedTime;
  }

  public void setModifiedTime(java.sql.Date modifiedTime) {
    this.modifiedTime = modifiedTime;
  }

  @Override
  public String toString() {
    return "TUser{" +
            "id=" + id +
            ", username='" + username + '\'' +
            ", password='" + password + '\'' +
            ", email='" + email + '\'' +
            ", phone='" + phone + '\'' +
            ", gender=" + gender +
            ", createdUser='" + createdUser + '\'' +
            ", createdTime=" + createdTime +
            ", modifiedUser='" + modifiedUser + '\'' +
            ", modifiedTime=" + modifiedTime +
            '}';
  }
}
