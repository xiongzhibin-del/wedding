package com.we.mapper;

import com.we.pojo.Agreement;
import com.we.pojo.Shipping;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Repository
public interface OrderMapper {
    public int addAgree(Agreement agreement);
    @Select("select * from agreement where u_id = #{u_id}")
    public Agreement selectAgree(Agreement agreement);

    @Select("select * from shipping where u_id = #{param1} and target = 1")
    public Shipping selectMainAddr(int u_id);
}
