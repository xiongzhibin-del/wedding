package com.we.pojo;


import java.sql.Date;

public class Orders {

  private int oid;//订单编号
  private int agid;//真爱协议编号
  private int u_id;//用户编号
  private int c_id;//商品编号
  private int sid;//收货地址编号
  private long random;//随机码编号
  private Date et;//预定收货时间
  private String remark;//订单备注
  private String state;//状态
  private String logisistics;//物流方式
  private String kezi;//刻字
  private int chicun;//尺寸
  private long total;//总金额

  private Commdity commdity;//商品
  private Shipping shipping;//收件地址

  public Orders() {
  }

  public Orders(int oid, int agid, int u_id, int c_id, int sid, long random, Date et, String remark, String state, String logisistics, String kezi, int chicun, long total, Commdity commdity, Shipping shipping) {
    this.oid = oid;
    this.agid = agid;
    this.u_id = u_id;
    this.c_id = c_id;
    this.sid = sid;
    this.random = random;
    this.et = et;
    this.remark = remark;
    this.state = state;
    this.logisistics = logisistics;
    this.kezi = kezi;
    this.chicun = chicun;
    this.total = total;
    this.commdity = commdity;
    this.shipping = shipping;
  }

  public int getOid() {
    return oid;
  }

  public void setOid(int oid) {
    this.oid = oid;
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

  public int getC_id() {
    return c_id;
  }

  public void setC_id(int c_id) {
    this.c_id = c_id;
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

  public String getKezi() {
    return kezi;
  }

  public void setKezi(String kezi) {
    this.kezi = kezi;
  }

  public int getChicun() {
    return chicun;
  }

  public void setChicun(int chicun) {
    this.chicun = chicun;
  }

  public long getTotal() {
    return total;
  }

  public void setTotal(long total) {
    this.total = total;
  }

  public Commdity getCommdity() {
    return commdity;
  }

  public void setCommdity(Commdity commdity) {
    this.commdity = commdity;
  }

  public Shipping getShipping() {
    return shipping;
  }

  public void setShipping(Shipping shipping) {
    this.shipping = shipping;
  }

  @Override
  public String toString() {
    return "Orders{" +
            "oid=" + oid +
            ", agid=" + agid +
            ", u_id=" + u_id +
            ", c_id=" + c_id +
            ", sid=" + sid +
            ", random=" + random +
            ", et=" + et +
            ", remark='" + remark + '\'' +
            ", state='" + state + '\'' +
            ", logisistics='" + logisistics + '\'' +
            ", kezi='" + kezi + '\'' +
            ", chicun=" + chicun +
            ", total=" + total +
            ", commdity=" + commdity +
            ", shipping=" + shipping +
            '}';
  }
}
