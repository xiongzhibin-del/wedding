package com.we.mapper;

import com.we.pojo.Shipping;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
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
    //把uid下面的除了sid的都设置为0
    @Update("update shipping set target = 0 where u_id = #{param1}")
    public int deleteTarget(int uid);
    //把sid设置为target1
    @Update("update shipping set target = 1 where sid = #{param1}")
    public int addTarget(int sid);
}
