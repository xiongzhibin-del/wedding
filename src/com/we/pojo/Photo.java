package com.we.pojo;

import java.io.Serializable;

public class Photo implements Serializable {
//    pid      NUMBER not null,
////    u_id     NUMBER not null,
////    filename VARCHAR2(100),
////    realname  VARCHAR2(100),
////    ptype    VARCHAR2(20)
    private int pid;//头像编号
    private int u_id;//用户编号
    private String filename;//存到数据库之后的名字
    private String realname;//存到数据库之后的名字
    private String ptype;//文件的类型

    public Photo() {
    }

    public Photo(int pid, int u_id, String filename, String realname, String ptype) {
        this.pid = pid;
        this.u_id = u_id;
        this.filename = filename;
        this.realname = realname;
        this.ptype = ptype;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public int getU_id() {
        return u_id;
    }

    public void setU_id(int u_id) {
        this.u_id = u_id;
    }

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }

    public String getRealname() {
        return realname;
    }

    public void setRealname(String realname) {
        this.realname = realname;
    }

    public String getPtype() {
        return ptype;
    }

    public void setPtype(String ptype) {
        this.ptype = ptype;
    }

    @Override
    public String toString() {
        return "Photo{" +
                "pid=" + pid +
                ", u_id=" + u_id +
                ", filename='" + filename + '\'' +
                ", realname='" + realname + '\'' +
                ", ptype='" + ptype + '\'' +
                '}';
    }
}
