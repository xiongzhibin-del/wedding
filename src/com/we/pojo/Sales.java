package com.we.pojo;

public class Sales {

  private int said;
  private int c_id;
  private int total;
  private int lately;

  public Sales() {
  }

  public Sales(int said, int c_id, int total, int lately) {
    this.said = said;
    this.c_id = c_id;
    this.total = total;
    this.lately = lately;
  }

  public int getSaid() {
    return said;
  }

  public void setSaid(int said) {
    this.said = said;
  }

  public int getC_id() {
    return c_id;
  }

  public void setC_id(int c_id) {
    this.c_id = c_id;
  }

  public int getTotal() {
    return total;
  }

  public void setTotal(int total) {
    this.total = total;
  }

  public int getLately() {
    return lately;
  }

  public void setLately(int lately) {
    this.lately = lately;
  }

  @Override
  public String toString() {
    return "Sales{" +
            "said=" + said +
            ", c_id=" + c_id +
            ", total=" + total +
            ", lately=" + lately +
            '}';
  }
}
