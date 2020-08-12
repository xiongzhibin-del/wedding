package com.we.mapper;

import com.we.pojo.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Repository
public interface RegisterMapper {
    @Select("select * from u_ser where mobile = #{mobile}")
    public User selByMobile(String mobile);
    @Insert("insert into u_ser(u_id,uname,mobile,upassword) values(seq_user_uid.nextval,#{uname},#{mobile},#{upassword})")
    public int addUser(User user);
}
