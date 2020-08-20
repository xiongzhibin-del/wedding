package com.we.mapper;

import com.we.pojo.Shoucang;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface ShoucangMapper {
    @Select("select * from shoucang where c_id = #{param1}")
    public List<Shoucang> selectShoucang(int c_id);
}
