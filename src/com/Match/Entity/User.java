package com.Match.Entity;

public class User {
    private int id;//id
    private String username;//用户ming
    private String password;//密码
    private String head;//头像
    private long created_at;//创建时间
    private long updated_at;//上次登录
    private String email;//邮箱
    private int status;//用户状态
    private int verify;//审核状态
    private int type1;//用户类别 1借买方 2.品牌商 3.后台管理员
    private String  brand;//品牌商
    private int money;

    public User(int id,int money, String username, String password, String head, long created_at, long updated_at, String email, int status, int verify, int type1, String brand) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.head = head;
        this.created_at = created_at;
        this.updated_at = updated_at;
        this.email = email;
        this.status = status;
        this.verify = verify;
        this.type1 = type1;
        this.brand = brand;
        this.money=money;
    }

    public User() {
    }

    public int getMoney() {
        return money;
    }

    public void setMoney(int money) {
        this.money = money;
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

    public String getHead() {
        return head;
    }

    public void setHead(String head) {
        this.head = head;
    }

    public long getCreated_at() {
        return created_at;
    }

    public void setCreated_at(int created_at) {
        this.created_at = created_at;
    }

    public long getUpdated_at() {
        return updated_at;
    }

    public void setUpdated_at(int updated_at) {
        this.updated_at = updated_at;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getVerify() {
        return verify;
    }

    public void setVerify(int verify) {
        this.verify = verify;
    }

    public int getType1() {
        return type1;
    }

    public void setType1(int type1) {
        this.type1 = type1;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", head='" + head + '\'' +
                ", created_at=" + created_at +
                ", updated_at=" + updated_at +
                ", email='" + email + '\'' +
                ", status=" + status +
                ", verify=" + verify +
                ", type=" + type1 +
                ", brand='" + brand + '\'' +
                '}';
    }
}
