package com.we.mapper;

import com.we.pojo.User;
import org.springframework.stereotype.Repository;

@Repository
public interface UserMapper {
    public User loginUser(User user);
    public int updateUser(User user);
}
