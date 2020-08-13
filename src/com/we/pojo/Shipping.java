package com.we.pojo;

import java.io.Serializable;

public class Shipping implements Serializable {
    private int sid;//收货地址编号
    private String sname;//收货人姓名
    private String site;//收货人地址
    private String sphone;//收货人手机号码
    private String scoding;//邮政编码
    private int u_id;//用户编号
    private User user;//拥有一个用户

    public Shipping() {
    }

    public Shipping(int sid, String sname, String site, String sphone, String scoding, int u_id, User user) {
        this.sid = sid;
        this.sname = sname;
        this.site = site;
        this.sphone = sphone;
        this.scoding = scoding;
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

    public String getSite() {
        return site;
    }

    public void setSite(String site) {
        this.site = site;
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
                ", site='" + site + '\'' +
                ", sphone='" + sphone + '\'' +
                ", scoding='" + scoding + '\'' +
                ", u_id=" + u_id +
                ", user=" + user +
                '}';
    }
}
