package com.we.service.Impl;

import com.we.mapper.CartMapper;
import com.we.mapper.OrderMapper;
import com.we.pojo.Agreement;
import com.we.pojo.Orders;
import com.we.pojo.Shipping;
import com.we.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {
    @Autowired
    private OrderMapper orderMapper;
    @Autowired
    private CartMapper cartMapper;
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

    @Override
    public int getAgree(int u_id) {
        return orderMapper.getAgree(u_id);
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED)
    public int addOrders(List<Orders> orders,int u_id) {
        int n = 0;
        for (Orders order:orders){
            orderMapper.addOrder(order);
        }
        //清空购物车
        cartMapper.clear(u_id);
        n = 1;
        return n;
    }
}
