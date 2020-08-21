package com.we.service;

import com.we.pojo.Commdity;
import com.we.pojo.LIulan;

import java.util.List;

public interface CommdityService {
    public List<Commdity> selectFour();
    public List<Commdity> selectAll(Integer pageNum,Integer pageSize);
    public List<Commdity> selectBytype(Integer pageNum, Integer pageSize ,String seres);
    public List<Commdity> select(String ckeyword,int priceList,int zctList,int czList);
    public List<Commdity> liulan(int u_id,int c_id);
    public List<Commdity> jilu(int u_id);
    public int shoucang (int u_id,int c_id);
}
