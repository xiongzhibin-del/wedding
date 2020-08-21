package com.we.pojo;

import java.io.Serializable;

public class LIulan implements Serializable {
    //    lid  NUMBER not null,
//    u_id NUMBER,
//    c_id NUMBER
    private int lid;
    private int u_id;
    private  int c_id;

    public LIulan() {
    }

    public LIulan(int lid, int u_id, int c_id) {
        this.lid = lid;
        this.u_id = u_id;
        this.c_id = c_id;
    }

    public int getLid() {
        return lid;
    }

    public void setLid(int lid) {
        this.lid = lid;
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

    @Override
    public String toString() {
        return "LIulan{" +
                "lid=" + lid +
                ", u_id=" + u_id +
                ", c_id=" + c_id +
                '}';
    }
}

