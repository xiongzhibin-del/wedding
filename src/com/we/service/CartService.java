package com.we.service;

import com.we.pojo.Cart;

import java.util.List;

public interface CartService {
    public int addCart(int u_id,int c_id,String kezi,int chicun);
    public List<Cart> flash(int u_id);
    public int delete(int cid);
    public int clear(int u_id);
}
