package com.we.service;

import com.we.pojo.Agreement;
import com.we.pojo.Shipping;

public interface OrderService {
    public int addAgree(Agreement agreement);
    public Agreement selectAgree(Agreement agreement);
    public Shipping selectMainAddr(int u_id);
}
