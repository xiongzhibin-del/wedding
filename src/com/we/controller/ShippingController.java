package com.we.controller;

import com.we.pojo.Shipping;
import com.we.pojo.User;
import com.we.service.ShippingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/ship")
public class ShippingController {
    @Autowired
    private ShippingService shippingService;
    @RequestMapping(value = "/selectByUid",produces = "text/html;charset=utf-8")
    public String selectByUid(HttpSession session, Model model){
        User login =(User) session.getAttribute("login");
        List<Shipping> shippings = shippingService.selectByUid(login.getU_id());
        model.addAttribute("shippings",shippings);
        System.out.println(shippings);
        return "member_addr";
    }
}
