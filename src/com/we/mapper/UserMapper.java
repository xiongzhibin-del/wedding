package com.we.mapper;

import com.we.pojo.User;
import org.springframework.stereotype.Repository;

import java.util.Map;
@Repository
public interface UserMapper {
    public User loginUser(User user);
    public int updateUser(User user);
}
