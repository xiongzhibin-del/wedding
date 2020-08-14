package com.we.pojo;

import java.io.Serializable;

public class Shipping implements Serializable {
    private int sid;//收货地址编号
    private String sname;//收货人姓名
    private String province;//省
    private String city;//市
    private String district;//区
    private String street;//街道，具体地址
    private String sphone;//收货人手机号码
    private String scoding;//邮政编码
    private String telephone;//座机
    private int u_id;//用户编号
    private User user;//拥有一个用户

    public Shipping() {
    }

    public Shipping(int sid, String sname, String province, String city, String district, String street, String sphone, String scoding, String telephone, int u_id, User user) {
        this.sid = sid;
        this.sname = sname;
        this.province = province;
        this.city = city;
        this.district = district;
        this.street = street;
        this.sphone = sphone;
        this.scoding = scoding;
        this.telephone = telephone;
        this.u_id = u_id;
        this.user = user;
    }

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getSphone() {
        return sphone;
    }

    public void setSphone(String sphone) {
        this.sphone = sphone;
    }

    public String getScoding() {
        return scoding;
    }

    public void setScoding(String scoding) {
        this.scoding = scoding;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public int getU_id() {
        return u_id;
    }

    public void setU_id(int u_id) {
        this.u_id = u_id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public String toString() {
        return "Shipping{" +
                "sid=" + sid +
                ", sname='" + sname + '\'' +
                ", province='" + province + '\'' +
                ", city='" + city + '\'' +
                ", district='" + district + '\'' +
                ", street='" + street + '\'' +
                ", sphone='" + sphone + '\'' +
                ", scoding='" + scoding + '\'' +
                ", telephone='" + telephone + '\'' +
                ", u_id=" + u_id +
                ", user=" + user +
                '}';
    }
}
