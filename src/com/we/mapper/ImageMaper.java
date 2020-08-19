package com.we.mapper;

import com.we.pojo.Image;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Repository
public interface ImageMaper {
    @Select("select * from image where c_id = #{param1}")
    public Image selectImg(int c_id);
}
