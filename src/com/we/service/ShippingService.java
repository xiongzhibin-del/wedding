package com.we.service;

import com.we.pojo.Shipping;

import java.util.List;

public interface ShippingService {
    public List<Shipping> selectByUid(int u_id);
}
