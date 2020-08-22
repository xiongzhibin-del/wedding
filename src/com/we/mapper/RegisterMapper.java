package com.we.mapper;

import com.we.pojo.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Repository
public interface RegisterMapper {
    @Select("select * from u_ser where mobile = #{mobile}")
    public User selByMobile(String mobile);
    @Select("select * from u_ser where e_mail = #{email}")
    public User selByEmail(String email);
    public int addUser(User user);
    @Insert("update  u_ser set upassword=#{param2} where mobile=#{param1}")
    public  int forget(String mobile, String mobile_pwd);
}
