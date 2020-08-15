package com.we.pojo;

public class Image {
    private int imgid;//图片编号
    private int c_id;//产品编号
    private String filename;//图片名称；
    private String filetype;//图片类型；

    public Image() {
    }

    public Image(int imgid, int c_id, String filename, String filetype) {
        this.imgid = imgid;
        this.c_id = c_id;
        this.filename = filename;
        this.filetype = filetype;
    }

    public int getImgid() {
        return imgid;
    }

    public void setImgid(int imgid) {
        this.imgid = imgid;
    }

    public int getC_id() {
        return c_id;
    }

    public void setC_id(int c_id) {
        this.c_id = c_id;
    }

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }

    public String getFiletype() {
        return filetype;
    }

    public void setFiletype(String filetype) {
        this.filetype = filetype;
    }

    @Override
    public String toString() {
        return "Image{" +
                "imgid=" + imgid +
                ", c_id=" + c_id +
                ", filename='" + filename + '\'' +
                ", filetype='" + filetype + '\'' +
                '}';
    }
}
