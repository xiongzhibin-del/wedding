package com.we.pojo;

import java.io.Serializable;

public class Shipping implements Serializable {
    private int sid;//收货地址编号
    private int oid;//订单编号
    private String sname;//收货人姓名
    private String site;//收货人地址
    private  String sphone;//收货人手机号码
    private  long scoding;//邮政编码

    public Shipping() {
    }

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public int getOid() {
        return oid;
    }

    public void setOid(int oid) {
        this.oid = oid;
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

    public long getScoding() {
        return scoding;
    }

    public void setScoding(long scoding) {
        this.scoding = scoding;
    }

    @Override
    public String toString() {
        return "Shipping{" +
                "sid=" + sid +
                ", oid=" + oid +
                ", sname='" + sname + '\'' +
                ", site='" + site + '\'' +
                ", sphone='" + sphone + '\'' +
                ", scoding=" + scoding +
                '}';
    }
}
