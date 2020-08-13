package com.we.service.Impl;

import com.we.mapper.RegisterMapper;
import com.we.pojo.User;
import com.we.service.RegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RegisterServiceImpl implements RegisterService {
    @Autowired
    private RegisterMapper registerMapper;
    @Override
    public User selByMobile(String mobile) {
        return registerMapper.selByMobile(mobile);
    }

    @Override
    public User selByEmail(String email) {
        return registerMapper.selByEmail(email);
    }

    @Override
    public int addUser(User user) {
        return registerMapper.addUser(user);
    }
}
