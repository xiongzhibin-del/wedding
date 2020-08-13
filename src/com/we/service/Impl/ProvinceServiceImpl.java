package com.we.service.Impl;

import com.we.mapper.ProvinceMapper;
import com.we.pojo.City;
import com.we.service.ProvinceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ProvinceServiceImpl implements ProvinceService {
    @Autowired
    private ProvinceMapper provinceMapper;
    @Override
    public List<City> selectPros() {
        return provinceMapper.selectPros();
    }

    @Override
    public List<City> selectCitiesByPro(int id) {
        return provinceMapper.selectCitiesByPro(id);
    }
}
