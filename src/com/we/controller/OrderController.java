package com.we.controller;

import com.we.pojo.Agreement;
import com.we.pojo.City;
import com.we.pojo.Shipping;
import com.we.pojo.User;
import com.we.service.OrderService;
import com.we.service.ProvinceService;
import com.we.service.ShippingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/order")
public class OrderController {
    @Autowired
    private OrderService orderService;
    @RequestMapping(value = "/agreement",produces = "text/html;charset=utf-8")
    public String agreement(Agreement agreement, HttpSession session, HttpServletRequest request){
        System.out.println(agreement);
        User login = (User)session.getAttribute("login");
        agreement.setU_id(login.getU_id());
        int n = orderService.addAgree(agreement);
        if(n==1){
            return "forward:/order/selectByUid";
        }else {
            request.setAttribute("msg","您已经填写过真爱协议，协议录入失败");
            return "cart_agreement";
        }
    }

    @Autowired
    private ProvinceService provinceService;
    @RequestMapping(value = "/selectByUid",produces = "text/html;charset=utf-8")
    public String selectByUid(HttpSession session, Model model){
        User login =(User) session.getAttribute("login");
        Shipping shipping = orderService.selectMainAddr(login.getU_id());
        List<City> pros = provinceService.selectPros();
        model.addAttribute("ship",shipping);
        model.addAttribute("pros",pros);
        return "cart_order";
    }

}
