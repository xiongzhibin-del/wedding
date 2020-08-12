package com.we.service.Impl;

import com.we.mapper.Usermapper;
import com.we.pojo.User;
import com.we.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiveImpl implements UserService {
@Autowired
    private Usermapper usermapper;
    @Override
    public User loginUser(User user) {
        //测试代码
        System.out.println(user.getPhone());
        System.out.println(user.getUname());
        System.out.println(user.getE_mail());
        System.out.println(user.getUpassword());


        return usermapper.loginUser(user);
    }
}
