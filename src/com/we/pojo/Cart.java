package com.we.pojo;

public class Cart {
    private int cid;
    private int u_id;
    private int c_id;
    private String kezi;
    private int chicun;
    private Commdity commdity;

    public Cart() {
    }

    public Cart(int cid, int u_id, int c_id, String kezi, int chicun, Commdity commdity) {
        this.cid = cid;
        this.u_id = u_id;
        this.c_id = c_id;
        this.kezi = kezi;
        this.chicun = chicun;
        this.commdity = commdity;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
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

    public Commdity getCommdity() {
        return commdity;
    }

    public void setCommdity(Commdity commdity) {
        this.commdity = commdity;
    }

    @Override
    public String toString() {
        return "Cart{" +
                "cid=" + cid +
                ", u_id=" + u_id +
                ", c_id=" + c_id +
                ", kezi='" + kezi + '\'' +
                ", chicun=" + chicun +
                ", commdity=" + commdity +
                '}';
    }
}
