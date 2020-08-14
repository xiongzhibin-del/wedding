package com.we.service.Impl;

import com.we.mapper.ShippingMapper;
import com.we.pojo.Shipping;
import com.we.service.ShippingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

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
    //设置事务提交，为一个整体
    @Override
    @Transactional(propagation = Propagation.REQUIRED)
    public int updateTarget(int uid, int sid) {
        int n = 0;
        //把uid下面所有的地址都设置target0
        shippingMapper.deleteTarget(uid);
        //把sid设置为target1
        shippingMapper.addTarget(sid);
        n = 1;
        return n;
    }
}
