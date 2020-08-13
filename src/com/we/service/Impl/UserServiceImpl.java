package com.we.service.Impl;

import com.we.mapper.UserMapper;
import com.we.pojo.User;
import com.we.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
@Autowired
    private UserMapper userMapper;
    @Override
    public User loginUser(User user) {
        return userMapper.loginUser(user);
    }

    @Override
    public int updateUser(User user) {
        return userMapper.updateUser(user);
    }
}
