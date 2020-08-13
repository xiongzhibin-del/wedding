package com.we.mapper;

import com.we.pojo.City;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface ProvinceMapper {
    @Select("select * from city where type = 1")
    public List<City> selectPros();
    @Select("select * from city where pid = #{param1}")
    public List<City> selectCitiesByPro(int id);
}
