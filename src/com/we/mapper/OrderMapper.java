package com.we.mapper;

import com.we.pojo.Agreement;
import com.we.pojo.Orders;
import com.we.pojo.Shipping;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OrderMapper {
    public int addAgree(Agreement agreement);
    @Select("select * from agreement where u_id = #{u_id}")
    public Agreement selectAgree(Agreement agreement);

    @Select("select * from shipping where u_id = #{param1} and target = 1")
    public Shipping selectMainAddr(int u_id);

    @Select("select agid from agreement where u_id = #{param1}")
    public int getAgree(int u_id);

    public int addOrder(Orders order);

    @Select("select * from orders where u_id = #{param1}")
    public List<Orders> selectOrders(int u_id);

    @Delete("delete from orders where random = #{param1}")
    public int cancleByRandom(long random);

    @Update("update orders set state = '已支付' where random = #{param1}")
    public int pay(long random);

}
