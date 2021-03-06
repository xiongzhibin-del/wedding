package com.we.service.Impl;

import com.we.mapper.CartMapper;
import com.we.pojo.Cart;
import com.we.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CartServiceImpl implements CartService {
    @Autowired
    private CartMapper cartMapper;
    @Override
    public int addCart(int u_id, int c_id, String kezi, int chicun) {
        if(cartMapper.selectCart(u_id, c_id)==null){
            return cartMapper.addCart(u_id, c_id, kezi, chicun);
        }else{
            return 0;
        }
    }

    @Override
    public List<Cart> flash(int u_id) {
        return cartMapper.selectCarts(u_id);
    }

    @Override
    public int delete(int cid) {
        return cartMapper.delete(cid);
    }

    @Override
    public int clear(int u_id) {
        int n = 0;
        cartMapper.clear(u_id);
        n=1;
        return n;
    }
}
