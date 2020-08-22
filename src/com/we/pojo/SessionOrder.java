package com.we.pojo;

import java.sql.Date;
import java.util.List;

public class SessionOrder {
    private int agid;//真爱协议编号
    private int u_id;//用户编号
    private int sid;//收货地址编号
    private long random;//随机码编号
    private Date et;//预定收货时间
    private String remark;//订单备注
    private String state;//状态
    private String logisistics;//物流方式
    private List<Cart> carts;//商品和刻字的总共
    private long total;//总金额
    private Shipping shipping;//收件地址

    public SessionOrder() {
    }

    public SessionOrder(int agid, int u_id, int sid, long random, Date et, String remark, String state, String logisistics, List<Cart> carts, long total, Shipping shipping) {
        this.agid = agid;
        this.u_id = u_id;
        this.sid = sid;
        this.random = random;
        this.et = et;
        this.remark = remark;
        this.state = state;
        this.logisistics = logisistics;
        this.carts = carts;
        this.total = total;
        this.shipping = shipping;
    }

    public int getAgid() {
        return agid;
    }

    public void setAgid(int agid) {
        this.agid = agid;
    }

    public int getU_id() {
        return u_id;
    }

    public void setU_id(int u_id) {
        this.u_id = u_id;
    }

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public long getRandom() {
        return random;
    }

    public void setRandom(long random) {
        this.random = random;
    }

    public Date getEt() {
        return et;
    }

    public void setEt(Date et) {
        this.et = et;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getLogisistics() {
        return logisistics;
    }

    public void setLogisistics(String logisistics) {
        this.logisistics = logisistics;
    }

    public List<Cart> getCarts() {
        return carts;
    }

    public void setCarts(List<Cart> carts) {
        this.carts = carts;
    }

    public long getTotal() {
        return total;
    }

    public void setTotal(long total) {
        this.total = total;
    }

    public Shipping getShipping() {
        return shipping;
    }

    public void setShipping(Shipping shipping) {
        this.shipping = shipping;
    }

    @Override
    public String toString() {
        return "SessionOrder{" +
                "agid=" + agid +
                ", u_id=" + u_id +
                ", sid=" + sid +
                ", random=" + random +
                ", et=" + et +
                ", remark='" + remark + '\'' +
                ", state='" + state + '\'' +
                ", logisistics='" + logisistics + '\'' +
                ", carts=" + carts +
                ", total=" + total +
                ", shipping=" + shipping +
                '}';
    }
}
