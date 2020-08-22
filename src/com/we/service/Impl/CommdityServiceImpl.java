package com.we.service.Impl;

import com.we.mapper.CommdityMapper;
import com.we.pojo.Commdity;
import com.we.service.CommdityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
@Service
public class CommdityServiceImpl implements CommdityService {
    @Autowired
    private CommdityMapper commdityMapper;
    @Override
    public List<Commdity> selectFour() {
        return commdityMapper.selectAll();
    }
    @Override
    public List<Commdity> selectAll(Integer pageNum,Integer pageSize) {
        return commdityMapper.selectAll();
    }

    @Override
    public List<Commdity> selectBytype(Integer pageNum, Integer pageSize ,String seres) {
        return commdityMapper.selectBytype(seres);
    }

    @Override
    public List<Commdity> select(String ckeyword, int priceList, int zctList, int czList) {
        int priceListLow = -1;
        int priceListHigh = -1;
        int zctListHigh = -1;
        int zctListLow = -1;
        String cz = null;
        if(priceList==1){
            priceListLow = 0;
            priceListHigh = 5000;
        }else if(priceList==2){
            priceListLow = 5000;
            priceListHigh = 10000;
        }else if(priceList==3){
            priceListLow = 10000;
            priceListHigh = 20000;
        }else if(priceList==4){
            priceListLow = 20000;
            priceListHigh = -1;
        }
        if(zctList==1){
            zctListLow = 0;
            zctListHigh = 10;
        }else if(zctList==2){
            zctListLow = 10;
            zctListHigh = 30;
        }else if(zctList==3){
            zctListLow = 30;
            zctListHigh = 50;
        }else if(zctList==4){
            zctListLow = 50;
            zctListHigh = 100;
        }else if(zctList==5){
            zctListLow = 100;
            zctListHigh = -1;
        }
        if(czList==1){
            cz = "PT950";
        }else if(czList==2){
            cz = "18K白金";
        }else if(czList==3){
            cz = "18K黄金";
        }else if(czList==4){
            cz = "18K玫瑰金";
        }
        if(ckeyword.equals("-1")){
            ckeyword="";
        }
        return commdityMapper.select(ckeyword,priceListLow,priceListHigh,zctListLow,zctListHigh,cz);
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED)
    public List<Commdity> liulan(int u_id, int c_id) {
        if(commdityMapper.exist(u_id,c_id)==null){
            commdityMapper.liulan(u_id, c_id);
        }
        List<Integer> c_ids = commdityMapper.chaCid(u_id);
        List<Commdity> liulans = new ArrayList<>();
        for(Integer i:c_ids){
            Commdity liulan = commdityMapper.liulans(i);
            liulans.add(liulan);
        }
        return liulans;
    }

    public List<Commdity> jilu(int u_id) {
        List<Integer> c_ids = commdityMapper.chaCid(u_id);
        List<Commdity> liulans = new ArrayList<>();
        for(Integer i:c_ids){
            Commdity liulan = commdityMapper.liulans(i);
            liulans.add(liulan);
        }
        return liulans;
    }

    @Override
    public List<Commdity> shoucang1(int u_id) {
        List<Integer> c_ids = commdityMapper.chaC_id(u_id);
        List<Commdity> shoucangs=new ArrayList<>();
        for (Integer i:c_ids) {
            Commdity shoucang = commdityMapper.shoucangs(i);
            shoucangs.add(shoucang);
        }
        return shoucangs;
    }

    @Override
    public int shoucang(int u_id, int c_id, Date date) {
        int n = 0;
        if(commdityMapper.existShou(u_id, c_id)==null){
            n = commdityMapper.shoucang(u_id, c_id,date);
        }
        return n;
    }

    @Override
    public int deleteshoucang(int u_id, int c_id) {
        int n = commdityMapper.deleteshoucang(u_id, c_id);
        System.out.println(n);
        return n;
    }

    @Override
    public Commdity amply(int c_id) {
        return commdityMapper.liulans(c_id);
    }
}
