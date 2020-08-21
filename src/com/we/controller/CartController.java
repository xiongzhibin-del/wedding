package com.we.controller;

import com.we.pojo.Agreement;
import com.we.pojo.Cart;
import com.we.pojo.User;
import com.we.service.CartService;
import com.we.service.OrderService;
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
    @RequestMapping(value = "/delete",produces = "text/html;charset=utf-8")
    @ResponseBody
    public String delete(int cid,HttpSession session){
        int n = cartService.delete(cid);
        User login = (User)session.getAttribute("login");
        List<Cart> carts = cartService.flash(login.getU_id());
        login.setCart(carts);
        session.setAttribute("login",login);
        if(n==1) {
            return "success";
        }else{
            return "fail";
        }
    }

    @RequestMapping(value = "/clear",produces = "text/html;charset=utf-8")
    @ResponseBody
    public String clear(HttpSession session){
        User login = (User)session.getAttribute("login");
        int n = cartService.clear(login.getU_id());
        List<Cart> carts = cartService.flash(login.getU_id());
        login.setCart(carts);
        session.setAttribute("login",login);
        if(n==1) {
            return "success";
        }else{
            return "fail";
        }
    }
    @Autowired
    private OrderService orderService;
    @RequestMapping(value = "/cart_agreement",produces = "text/html;charset=utf-8")
    public String cart_agreement(HttpSession session){
        User login = (User)session.getAttribute("login");
        Agreement agreement = new Agreement();
        agreement.setU_id(login.getU_id());
        Agreement agree = orderService.selectAgree(agreement);
        if(agree==null){
            return "cart_agreement";
        }else {
            return "forward:/order/selectByUid";
        }
    }
}
