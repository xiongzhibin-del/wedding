package com.we.pojo;


import java.sql.Date;

public class Comments {

  private int coid;
  private int u_id;
  private Date ctime;
  private String content;
  private int c_id;

  public Comments() {
  }

  public Comments(int coid, int u_id, Date ctime, String content, int c_id) {
    this.coid = coid;
    this.u_id = u_id;
    this.ctime = ctime;
    this.content = content;
    this.c_id = c_id;
  }

  public int getCoid() {
    return coid;
  }

  public void setCoid(int coid) {
    this.coid = coid;
  }

  public int getU_id() {
    return u_id;
  }

  public void setU_id(int u_id) {
    this.u_id = u_id;
  }

  public Date getCtime() {
    return ctime;
  }

  public void setCtime(Date ctime) {
    this.ctime = ctime;
  }

  public String getContent() {
    return content;
  }

  public void setContent(String content) {
    this.content = content;
  }

  public int getC_id() {
    return c_id;
  }

  public void setC_id(int c_id) {
    this.c_id = c_id;
  }

  @Override
  public String toString() {
    return "Comments{" +
            "coid=" + coid +
            ", u_id=" + u_id +
            ", ctime=" + ctime +
            ", content='" + content + '\'' +
            ", c_id=" + c_id +
            '}';
  }
}
