package com.we.mapper;

import com.we.pojo.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

@Repository
public interface MenberMapper {

    @Update("update u_ser set uname=#{uname} where upassword=#{upassword}")
    public int MenberMapper(String uname);
}
