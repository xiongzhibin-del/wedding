package com.we.service.Impl;

import com.we.mapper.CommdityMapper;
import com.we.pojo.Commdity;
import com.we.service.CommdityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
    public List<Commdity> selectAll(Integer pageNUm,Integer pageSize) {
        return commdityMapper.selectAll();
    }
}
