package com.we.mapper;

import com.we.pojo.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

@Repository
public interface MenberMapper {

    @Update("update u_ser set  upassword=#{param1} where u_id=#{param2}")
    public int MenberMapper(String newpassword,int id);

}
