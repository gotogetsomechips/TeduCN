package cn.tedu.store.bean;


public class TUser {

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

}
