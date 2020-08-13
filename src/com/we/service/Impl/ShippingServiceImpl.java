package com.we.service.Impl;

import com.we.mapper.ShippingMapper;
import com.we.pojo.Shipping;
import com.we.service.ShippingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ShippingServiceImpl implements ShippingService {
    @Autowired
    private ShippingMapper shippingMapper;
    @Override
    public List<Shipping> selectByUid(int u_id) {
        return shippingMapper.selectByUid(u_id);
    }
}
