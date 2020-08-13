package com.we.mapper;

import com.we.pojo.Shipping;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ShippingMapper {
    @Select("select * from shipping where u_id = #{param1}")
    public List<Shipping> selectByUid(int u_id);
}
