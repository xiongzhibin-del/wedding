package com.we.controller;

import com.we.pojo.City;
import com.we.pojo.Shipping;
import com.we.pojo.User;
import com.we.service.ProvinceService;
import com.we.service.ShippingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/ship")
public class ShippingController {
    @Autowired
    private ShippingService shippingService;
    @Autowired
    private ProvinceService provinceService;
    @RequestMapping(value = "/selectByUid",produces = "text/html;charset=utf-8")
    public String selectByUid(HttpSession session, Model model){
        User login =(User) session.getAttribute("login");
        List<Shipping> shippings = shippingService.selectByUid(login.getU_id());
        List<City> pros = provinceService.selectPros();
        model.addAttribute("shippings",shippings);
        model.addAttribute("pros",pros);
        return "member_addr";
    }

    @RequestMapping(value = "/save",produces = "text/html;charset=utf-8")
    @ResponseBody
    public String save(Shipping shipping,HttpSession session){
        int n = shippingService.saveShipping(shipping);
        if(n==1) {
            return "修改成功";
        }else{
            return "修改失败";
        }
    }

    @RequestMapping(value = "/add",produces = "text/html;charset=utf-8")
    @ResponseBody
    public String add(Shipping shipping,HttpSession session){
        User login = (User)session.getAttribute("login");
        shipping.setU_id(login.getU_id());
        int n = shippingService.addShipping(shipping);
        if(n==1) {
            return "添加成功";
        }else{
            return "添加失败";
        }
    }

    @RequestMapping(value = "/deleteShip",produces = "text/html;charset=utf-8")
    @ResponseBody
    public String deleteShip(int sid){
        int n = shippingService.deleteShip(sid);
        if(n==1) {
            return "删除成功";
        }else{
            return "删除失败";
        }
    }
}
