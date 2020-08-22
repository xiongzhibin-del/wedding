package com.we.pojo;

import java.util.List;

public class Commdity implements Comparable{
    // c_id      NUMBER(3) not null,
    //  cname     VARCHAR2(30),
    //  seres     VARCHAR2(30),
    //  style     VARCHAR2(30),
    //  weight    VARCHAR2(30),
    //  colour    VARCHAR2(30),
    //  price     NUMBER(10),
    //  texture   VARCHAR2(30),
    //  csize     VARCHAR2(30),
    //  certi     VARCHAR2(30),
    //  witone    NUMBER(10,5),
    //  quantity  NUMBER(5),
    //  neatness  VARCHAR2(30),
    //  cut       VARCHAR2(30),
    //  minute    VARCHAR2(30),
    //  newcid    VARCHAR2(30)
    private int c_id;//商品id
    private String cname;//商品名字
    private String seres;//系列
    private String style;//款式
    private String weight;//重量
    private String colour;//颜色
    private int price;//价格
    private String texture;//材质
    private String csize;//大小
    private String certi;//检测
    private String witone;//总钻克数
    private int quantity;//钻石个数
    private String neatness;//净度
    private String cut;//切工
    private String minute;//分，克拉数
    private String newcid;//产品编号
    private Image image;//图片
    private Sales sales;//销量
    private List<Comments> comments;//评论
    private List<Shoucang> shoucangs;//收藏集合


    public Commdity() {
    }

    public Commdity(int c_id, String cname, String seres, String style, String weight, String colour, int price, String texture, String csize, String certi, String witone, int quantity, String neatness, String cut, String minute, String newcid, Image image, Sales sales, List<Comments> comments, List<Shoucang> shoucangs) {
        this.c_id = c_id;
        this.cname = cname;
        this.seres = seres;
        this.style = style;
        this.weight = weight;
        this.colour = colour;
        this.price = price;
        this.texture = texture;
        this.csize = csize;
        this.certi = certi;
        this.witone = witone;
        this.quantity = quantity;
        this.neatness = neatness;
        this.cut = cut;
        this.minute = minute;
        this.newcid = newcid;
        this.image = image;
        this.sales = sales;
        this.comments = comments;
        this.shoucangs = shoucangs;
    }

    public int getC_id() {
        return c_id;
    }

    public void setC_id(int c_id) {
        this.c_id = c_id;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public String getSeres() {
        return seres;
    }

    public void setSeres(String seres) {
        this.seres = seres;
    }

    public String getStyle() {
        return style;
    }

    public void setStyle(String style) {
        this.style = style;
    }

    public String getWeight() {
        return weight;
    }

    public void setWeight(String weight) {
        this.weight = weight;
    }

    public String getColour() {
        return colour;
    }

    public void setColour(String colour) {
        this.colour = colour;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getTexture() {
        return texture;
    }

    public void setTexture(String texture) {
        this.texture = texture;
    }

    public String getCsize() {
        return csize;
    }

    public void setCsize(String csize) {
        this.csize = csize;
    }

    public String getCerti() {
        return certi;
    }

    public void setCerti(String certi) {
        this.certi = certi;
    }

    public String getWitone() {
        return witone;
    }

    public void setWitone(String witone) {
        this.witone = witone;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getNeatness() {
        return neatness;
    }

    public void setNeatness(String neatness) {
        this.neatness = neatness;
    }

    public String getCut() {
        return cut;
    }

    public void setCut(String cut) {
        this.cut = cut;
    }

    public String getMinute() {
        return minute;
    }

    public void setMinute(String minute) {
        this.minute = minute;
    }

    public String getNewcid() {
        return newcid;
    }

    public void setNewcid(String newcid) {
        this.newcid = newcid;
    }

    public Image getImage() {
        return image;
    }

    public void setImage(Image image) {
        this.image = image;
    }

    public Sales getSales() {
        return sales;
    }

    public void setSales(Sales sales) {
        this.sales = sales;
    }

    public List<Comments> getComments() {
        return comments;
    }

    public void setComments(List<Comments> comments) {
        this.comments = comments;
    }

    public List<Shoucang> getShoucangs() {
        return shoucangs;
    }

    public void setShoucangs(List<Shoucang> shoucangs) {
        this.shoucangs = shoucangs;
    }

    @Override
    public String toString() {
        return "Commdity{" +
                "c_id=" + c_id +
                ", cname='" + cname + '\'' +
                ", seres='" + seres + '\'' +
                ", style='" + style + '\'' +
                ", weight='" + weight + '\'' +
                ", colour='" + colour + '\'' +
                ", price=" + price +
                ", texture='" + texture + '\'' +
                ", csize='" + csize + '\'' +
                ", certi='" + certi + '\'' +
                ", witone='" + witone + '\'' +
                ", quantity=" + quantity +
                ", neatness='" + neatness + '\'' +
                ", cut='" + cut + '\'' +
                ", minute='" + minute + '\'' +
                ", newcid='" + newcid + '\'' +
                ", image=" + image +
                ", sales=" + sales +
                ", comments=" + comments +
                ", shoucangs=" + shoucangs +
                '}';
    }

    @Override
    public int compareTo(Object o) {
        Commdity commdity = (Commdity) o;
        if(commdity.getSales().getTotal()==getSales().getTotal()) {
            return 0;
        }else if(commdity.getSales().getTotal()>getSales().getTotal()){
            return 1;
        }else {
            return -1;
        }
    }
}
