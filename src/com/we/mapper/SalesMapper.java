package com.we.mapper;

import com.we.pojo.Sales;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Repository
public interface SalesMapper {
    @Select("select * from sales where c_id = #{param1}")
    public Sales selectSale(int c_id);
}
