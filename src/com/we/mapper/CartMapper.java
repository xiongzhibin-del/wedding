package com.we.mapper;

import com.we.pojo.Cart;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CartMapper {
    public int addCart(int u_id,int c_id,String kezi,int chicun);
    @Select("select cid from cart where u_id = #{param1} and c_id = #{param2}")
    public Integer selectCart(int u_id,int c_id);
    public List<Cart> selectCarts(int u_id);
    @Select("select * from cart where u_id = #{param1}")
    public List<Cart> flash(int u_id);
}
