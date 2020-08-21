package com.we.service.Impl;

import com.we.mapper.OrderMapper;
import com.we.pojo.Agreement;
import com.we.pojo.Shipping;
import com.we.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderServiceImpl implements OrderService {
    @Autowired
    private OrderMapper orderMapper;
    @Override
    public int addAgree(Agreement agreement) {
        if(orderMapper.selectAgree(agreement)==null) {
            return orderMapper.addAgree(agreement);
        }else{
            return 0;
        }
    }

    @Override
    public Agreement selectAgree(Agreement agreement) {
        return orderMapper.selectAgree(agreement);
    }

    @Override
    public Shipping selectMainAddr(int u_id) {
        return orderMapper.selectMainAddr(u_id);
    }
}
