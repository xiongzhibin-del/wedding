package com.we.service;

import com.we.pojo.Agreement;
import com.we.pojo.Orders;
import com.we.pojo.Shipping;

import java.util.List;
import java.util.Map;

public interface OrderService {
    public int addAgree(Agreement agreement);
    public Agreement selectAgree(Agreement agreement);
    public Shipping selectMainAddr(int u_id);
    public int getAgree(int u_id);
    public int addOrders(List<Orders> orders,int u_id);
    public Object selectOrders(int u_id);
    public int cancleByRandom(long random);
    public int pay(long random);
}
