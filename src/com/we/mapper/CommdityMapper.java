package com.we.mapper;

import com.we.pojo.Commdity;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface CommdityMapper {
    public List<Commdity> selectAll();
}
