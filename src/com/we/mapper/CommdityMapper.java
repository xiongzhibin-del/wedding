package com.we.mapper;

import com.we.pojo.Commdity;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface CommdityMapper {
    public List<Commdity> selectAll();
    public List<Commdity> selectBytype(String seres);
    public List<Commdity> select(String ckeyword,int priceListLow,int priceListHigh,int zctListLow,int zctListHigh,String cz);
}
