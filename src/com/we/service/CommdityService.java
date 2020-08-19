package com.we.service;

import com.we.pojo.Commdity;

import java.util.List;

public interface CommdityService {
    public List<Commdity> selectFour();
    public List<Commdity> selectAll(Integer pageNUm,Integer pageSize);
}
