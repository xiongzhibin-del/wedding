package com.we.service;

import com.we.pojo.Shipping;

import java.util.List;

public interface ShippingService {
    public List<Shipping> selectByUid(int u_id);
    public int addShipping(Shipping shipping);
    public int saveShipping(Shipping shipping);
    public int deleteShip(int sid);
    public int updateTarget(int uid,int sid);
}
