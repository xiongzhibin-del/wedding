package com.we.service;

import com.we.pojo.User;

public interface RegisterService {
    public User selByMobile(String mobile);
    public User selByEmail(String email);
    public int addUser(User user);
}
