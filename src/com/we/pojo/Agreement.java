package com.we.pojo;


import java.sql.Date;

public class Agreement {

  private int agid;
  private int u_id;
  private String sir;
  private String madam;
  private String identity;
  private Date docone;
  private Date doctow;
  private Date birthdate;

  public Agreement() {
  }

  public Agreement(int agid, int u_id, String sir, String madam, String identity, Date docone, Date doctow, Date birthdate) {
    this.agid = agid;
    this.u_id = u_id;
    this.sir = sir;
    this.madam = madam;
    this.identity = identity;
    this.docone = docone;
    this.doctow = doctow;
    this.birthdate = birthdate;
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

  public String getSir() {
    return sir;
  }

  public void setSir(String sir) {
    this.sir = sir;
  }

  public String getMadam() {
    return madam;
  }

  public void setMadam(String madam) {
    this.madam = madam;
  }

  public String getIdentity() {
    return identity;
  }

  public void setIdentity(String identity) {
    this.identity = identity;
  }

  public Date getDocone() {
    return docone;
  }

  public void setDocone(Date docone) {
    this.docone = docone;
  }

  public Date getDoctow() {
    return doctow;
  }

  public void setDoctow(Date doctow) {
    this.doctow = doctow;
  }

  public Date getBirthdate() {
    return birthdate;
  }

  public void setBirthdate(Date birthdate) {
    this.birthdate = birthdate;
  }

  @Override
  public String toString() {
    return "Agreement{" +
            "agid=" + agid +
            ", u_id=" + u_id +
            ", sir='" + sir + '\'' +
            ", madam='" + madam + '\'' +
            ", identity='" + identity + '\'' +
            ", docone=" + docone +
            ", doctow=" + doctow +
            ", birthdate=" + birthdate +
            '}';
  }
}
