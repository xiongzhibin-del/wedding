package com.we.pojo;

import java.sql.Date;

public class Shoucang {
    private int sid;
    private int u_id;
    private int c_id;
    private Date sdate;

    public Shoucang() {
    }

    public Shoucang(int sid, int u_id, int c_id, Date sdate) {
        this.sid = sid;
        this.u_id = u_id;
        this.c_id = c_id;
        this.sdate = sdate;
    }

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
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

    public Date getSdate() {
        return sdate;
    }

    public void setSdate(Date sdate) {
        this.sdate = sdate;
    }

    @Override
    public String toString() {
        return "Shoucang{" +
                "sid=" + sid +
                ", u_id=" + u_id +
                ", c_id=" + c_id +
                ", sdate=" + sdate +
                '}';
    }
}