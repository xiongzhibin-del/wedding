package com.we.mapper;

import com.we.pojo.Shipping;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ShippingMapper {
    @Select("select * from shipping where u_id = #{param1}")
    public List<Shipping> selectByUid(int u_id);
    public int addShipping(Shipping shipping);
    public int saveShipping(Shipping shipping);
    @Delete("delete from shipping where sid = #{param1}")
    public int deleteShip(int sid);
}
