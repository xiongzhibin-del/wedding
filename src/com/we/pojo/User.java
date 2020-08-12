package com.we.pojo;

import java.io.Serializable;
import java.util.Date;

public class User implements Serializable {

    private int u_id;//用户编号
    private String uname;//帐号
    private String upassword;//密码
    private String phone;//手机号码
    private String e_mail;//邮箱地址
    private String realname;//用户真实姓名
    private char sex;//用户性别
    private Date udate;//出生日期
    private String uregion;//地区
    private String usite ;//用户详细地址
    private int ucoding;//邮政编码
    private int landine;//座机

    public User() {
    }

    public int getU_id() {
        return u_id;
    }

    public void setU_id(int u_id) {
        this.u_id = u_id;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getUpassword() {
        return upassword;
    }

    public void setUpassword(String upassword) {
        this.upassword = upassword;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getE_mail() {
        return e_mail;
    }

    public void setE_mail(String e_mail) {
        this.e_mail = e_mail;
    }

    public String getRealname() {
        return realname;
    }

    public void setRealname(String realname) {
        this.realname = realname;
    }

    public char getSex() {
        return sex;
    }

    public void setSex(char sex) {
        this.sex = sex;
    }

    public Date getUdate() {
        return udate;
    }

    public void setUdate(Date udate) {
        this.udate = udate;
    }

    public String getUregion() {
        return uregion;
    }

    public void setUregion(String uregion) {
        this.uregion = uregion;
    }

    public String getUsite() {
        return usite;
    }

    public void setUsite(String usite) {
        this.usite = usite;
    }

    public int getUcoding() {
        return ucoding;
    }

    public void setUcoding(int ucoding) {
        this.ucoding = ucoding;
    }

    public int getLandine() {
        return landine;
    }

    public void setLandine(int landine) {
        this.landine = landine;
    }

    @Override
    public String toString() {
        return "User{" +
                "u_id=" + u_id +
                ", uname='" + uname + '\'' +
                ", upassword='" + upassword + '\'' +
                ", phone=" + phone +
                ", e_mail='" + e_mail + '\'' +
                ", realname='" + realname + '\'' +
                ", sex=" + sex +
                ", udate=" + udate +
                ", uregion='" + uregion + '\'' +
                ", usite='" + usite + '\'' +
                ", ucoding=" + ucoding +
                ", landine=" + landine +
                '}';
    }
}
