package com.we.mapper;

import com.we.pojo.Photo;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AvatarMapper {
    @Insert("insert into photo values(seq_photo_pid.nextval,#{u_id},#{filename},#{realname},#{ptype})")
    public int addFile(Photo file);


    @Select("select * from photo where u_id=#{param1}")
    public Photo avatarselect(int u_id);


    @Update("update photo set  realname=#{param3},filename=#{param2},ptype=#{param4} where u_id=#{param1}")
    public int avatarupdate(int u_id,String fileNewName,String realname,String split);


    @Select("select * from photo where u_id=#{param1}")
    public Photo loginphoto(int u_id);
}
