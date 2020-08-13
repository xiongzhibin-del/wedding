package com.we.service;

import com.we.pojo.City;

import java.util.List;

public interface ProvinceService {
    public List<City> selectPros();
    public List<City> selectCitiesByPro(int id);
}
