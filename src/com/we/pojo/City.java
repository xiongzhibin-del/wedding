package com.we.pojo;

public class City {
    private int id;
    private int pid;
    private String cityname;
    private int type;

    public City() {
    }

    public City(int id, int pid, String cityname, int type) {
        this.id = id;
        this.pid = pid;
        this.cityname = cityname;
        this.type = type;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getCityname() {
        return cityname;
    }

    public void setCityname(String cityname) {
        this.cityname = cityname;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    @Override
    public String toString() {
        return "City{" +
                "id=" + id +
                ", pid=" + pid +
                ", cityname='" + cityname + '\'' +
                ", type=" + type +
                '}';
    }
}
