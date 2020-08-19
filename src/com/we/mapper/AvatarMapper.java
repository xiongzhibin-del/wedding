package com.we.mapper;

import com.we.pojo.Photo;
import org.apache.ibatis.annotations.Insert;

public interface AvatarMapper {
    @Insert("insert into photo values(seq_photo_pid.nextval,#{u_id},#{realname},#{filename},#{ptype})")
    public int addFile(Photo file);
}
