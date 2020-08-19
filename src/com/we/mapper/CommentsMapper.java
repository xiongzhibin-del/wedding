package com.we.mapper;

import com.we.pojo.Comments;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CommentsMapper {
    @Select("select * from comments where c_id = #{param1}")
    public List<Comments> selectComments();
}
