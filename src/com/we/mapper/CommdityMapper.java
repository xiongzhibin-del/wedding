package com.we.mapper;

import com.we.pojo.Commdity;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface CommdityMapper {
    public List<Commdity> selectAll();
    public List<Commdity> selectBytype(String seres);
    public List<Commdity> select(String ckeyword,int priceListLow,int priceListHigh,int zctListLow,int zctListHigh,String cz);
    @Insert("insert into liulan values(seq_liulan_lid.nextval,#{param1},#{param2})")
    public int liulan(int u_id,int c_id);
    @Select("select c_id from liulan where u_id = #{param1}")
    public List<Integer> chaCid(int u_id);
    public Commdity liulans(int c_id);
    @Select("select lid from liulan where u_id = #{param1} and c_id = #{param2}")
    public Integer exist(int u_id,int c_id);
}
