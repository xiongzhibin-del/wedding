package com.we.controller;

import com.we.pojo.Cart;
import com.we.pojo.User;
import com.we.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping(value = "cart")
public class CartController {
    @Autowired
    private CartService cartService;
    @RequestMapping(value = "/add",produces = "text/html;charset=utf-8")
    @ResponseBody
    public String add(int c_id, String kezi, int chicun, HttpSession session){
        User login = (User)session.getAttribute("login");
        int n = cartService.addCart(login.getU_id(), c_id, kezi, chicun);
        if (n==1) {
            return "success";
        }if(n==0){
            return "exist";
        }else{
            return "fail";
        }
    }

    @RequestMapping(value = "/flash",produces = "text/html;charset=utf-8")
    @ResponseBody
    public String flash(HttpSession session){
        User login = (User)session.getAttribute("login");
        List<Cart> carts = cartService.flash(login.getU_id());
        login.setCart(carts);
        int n = carts.size();
        session.setAttribute("login",login);
        return ""+n;
    }
}
