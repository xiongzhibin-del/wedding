package com.we.mapper;

import com.we.pojo.Cart;
import org.apache.ibatis.annotations.Delete;
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

    @Delete("delete from cart where cid = #{param1}")
    public int delete(int cid);

    @Delete("delete from cart where u_id = #{param1}")
    public int clear(int u_id);
}
