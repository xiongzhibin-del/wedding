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

    @Override
    public int addShipping(Shipping shipping) {
        return shippingMapper.addShipping(shipping);
    }

    @Override
    public int saveShipping(Shipping shipping) {
        return shippingMapper.saveShipping(shipping);
    }

    @Override
    public int deleteShip(int sid) {
        return shippingMapper.deleteShip(sid);
    }
}
