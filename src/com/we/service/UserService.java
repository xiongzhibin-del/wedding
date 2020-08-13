package com.we.service;

import com.we.pojo.User;

public interface UserService {
    public User loginUser(User user);
    public int updateUser(User user);
}
