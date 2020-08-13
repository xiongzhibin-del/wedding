package com.we.service.Impl;

import com.we.mapper.MenberMapper;
import com.we.pojo.User;
import com.we.service.MenberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MenberServeImpl implements MenberService {
    @Autowired
   private   MenberMapper menberMapper;

    @Override
    public int menberUpdate(String uname) {
        return menberMapper.MenberMapper(uname);
    }
}
